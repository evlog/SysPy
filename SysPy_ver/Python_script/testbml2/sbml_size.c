#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sbml/SBMLTypes.h>



typedef struct{
    double conc;	//initial concetration
    char* name;	//to vector-change pou exei se kathe reaction
    char name2[100];

}myspecies_t;

/*
type
1: a -> ...
2: a+b -> ...
3: 2a -> ...
4: 3a -> ...
5: 2a+b -> ...
6: a+2b -> ...
7: a+b+c -> ...
*/

typedef struct{
    int x;	//i thesi ston pinaka ton stoixeion
    int v;	//to vector-change pou exei se kathe reaction

}x_vector_t;

typedef struct{
    int type;	//unimolecular : 1 , bimolecular : 2 , bimolecular with same stoixeia : 3
    float c;	//stathera c tis Reaction
    float k;
    int react_num;  //posa stoixeia antidroun
    int product_num; //posa stoixeia paragontai
    x_vector_t *react;	//pinakas pou periexei ta stoixeia pou antidroun (thesi ston pinaka ton stoixeion kathos kai aktin metavoli tous)
    x_vector_t *product;	//pinakas pou periexei ta stoixeia pou paragontai (thesi ston pinaka ton stoixeion kathos kai aktin metavoli tous)
}reaction_t;




int main(int argc, char** argv)
{
    myspecies_t* species;	//pinakas ximikon stoixeion
    reaction_t *reaction;	//20 ximikes antidraseis
    int i,j,k,num_species, num_reactions;
    double V;
    FILE *pf1, *pf2, *pf3, *pf4, *pf5, *pf6;

    SBMLDocument_t *d;
    Model_t        *m;
    ListOf_t    *lo;
    Species_t   *sp;
    Reaction_t  *re;
    Parameter_t *p;
    KineticLaw_t *kin;
    SpeciesReference_t *sr;
    Compartment_t *c;

	if(argc != 2)
    {
        printf("Ektelesi: %s <SBML xml>\n", argv[0]);
        exit(-1);
    }

    //anoigo to SBML arxeio
    d = readSBML(argv[1]);
    //d=readSBML("C:/home/orsalia/BIOMD0000000001");
    m = SBMLDocument_getModel(d);
    num_species = Model_getNumSpecies(m);
    num_reactions = Model_getNumReactions(m);

    printf("M: %d\n", num_species);
    printf("R: %d\n", num_reactions);
}
