
#ifndef GROUP_AUGMENTATION_GROUP_H
#define GROUP_AUGMENTATION_GROUP_H


#include "Individual.h"
#include "../Parameters.h"
#include "container/IndividualVector.h"


class Group {

private:
    Parameters *parameters;
    double cumHelp;
    bool breederAlive;      // for the breeder: 1 alive, 0 dead
    int groupSize;
    double fecundity;
    int realFecundity;

    Individual breeder;
    // create a vector of helpers inside each group

public:

    explicit Group();

    void calculateGroupSize();

    std::vector<Individual> disperse();

    void calculateCumulativeHelp();

    void survivalGroup();

    void mortalityGroup(int &deaths);

    void newBreeder(std::vector<Individual>  &floaters, int &newBreederFloater, int &newBreederHelper, int &inheritance);

    void increaseAge();

    void reproduce(int generation);

    const std::vector<Individual> &getHelpers() const;

    const Individual &getBreeder() const;

    int getGroupSize() const;

    bool isBreederAlive() const;

    double getCumHelp() const;

    bool hasHelpers() const;

    void addHelper(const Individual& helper);

    std::vector<double> get(Attribute attribute) const;

    std::vector<double> get(Attribute attribute, bool includeBreeder) const;

    std::vector<Individual> reassignNoRelatedness();

    IndividualVector helpers;
};


#endif //GROUP_AUGMENTATION_GROUP_H
