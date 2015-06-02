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

	//an den exei 2 argument
	if(argc != 2)
    {
        printf("Ektelesi: %s <SBML xml>\n", argv[0]);
        exit(-1);
    }

    //arxeia results
    if((pf1 = fopen("RT_reactant.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","RT_reactant.txt");
        exit(-1);
    }
    
    if((pf2 = fopen("RT_product.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","RT_product.txt");
        fclose(pf1);
        exit(-1);
    }
    
    if((pf3 = fopen("VT_reactant.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","VT_reactant.txt");
        fclose(pf1);
        fclose(pf2);
        exit(-1);
    }
    
    if((pf4 = fopen("VT_product.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","VT_product.txt");
        fclose(pf1);
        fclose(pf2);
        fclose(pf3);
        exit(-1);
    }
    
    if((pf5 = fopen("ST.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","ST.txt");
        fclose(pf1);
        fclose(pf2);
        fclose(pf3);
        fclose(pf4);
        exit(-1);
    }
    
    if((pf6 = fopen("k_parameter.txt", "w")) == NULL)
    {
        printf("Error create file %s\n","k_parameter.txt");
        fclose(pf1);
        fclose(pf2);
        fclose(pf3);
        fclose(pf4);
        fclose(pf5);
        exit(-1);
    }

    //anoigo to SBML arxeio
    d = readSBML(argv[1]);
    //d=readSBML("C:/home/orsalia/BIOMD0000000001");
    m = SBMLDocument_getModel(d);
    num_species = Model_getNumSpecies(m);
    num_reactions = Model_getNumReactions(m);
    
    //Pairnoume ton ogko
    c = Model_getCompartment(m,0);
    V = Compartment_getVolume(c);


    //Desmeysi pinakon domon gia stoixeia kai reaction
    species =  (myspecies_t*) malloc(num_species*sizeof(myspecies_t));
    reaction = (reaction_t*) malloc(num_reactions*sizeof(reaction_t));

    //gemizo ton pinaka me tis arxikes sigkentroseis ton stoixeion
    for(i=0;i<num_species;i++)
    {
        sp = Model_getSpecies(m,i);
        species[i].conc = Species_getInitialConcentration(sp)?Species_getInitialConcentration(sp):Species_getInitialAmount(sp);
        species[i].name = malloc(50*sizeof(char));
        strcpy(species[i].name,Species_getId(sp));
        strcpy(species[i].name2,Species_getName(sp));
    }

    ///gemizo ton pinaka domon ton reaction
    for(i=0;i<num_reactions;i++)
    {
        re = Model_getReaction(m,i);
        kin = Reaction_getKineticLaw(re);
        p = KineticLaw_getParameter(kin,0);

        reaction[i].react_num = Reaction_getNumReactants(re);
        reaction[i].product_num = Reaction_getNumProducts(re);
        reaction[i].react = (x_vector_t*) malloc(reaction[i].react_num*sizeof(x_vector_t));
        reaction[i].product = (x_vector_t*) malloc(reaction[i].product_num*sizeof(x_vector_t));

		for(j=0;j<reaction[i].react_num;j++)
        {
            sr = Reaction_getReactant(re,j);

            for(k=0;k<num_species;k++)
            {
                //an vrei to stoixeio ston megalo pinaka krata ti thesi tou
                if (strcmp(SpeciesReference_getSpecies(sr),species[k].name) == 0)
                {
                    reaction[i].react[j].x = k;		//ithesi ston pinaka species
                    reaction[i].react[j].v = (-1) * SpeciesReference_getStoichiometry(sr);
                    break;
                }
            }
        }
        
        for(j=0;j<reaction[i].product_num;j++)
        {
            sr = Reaction_getProduct(re,j);

            for(k=0;k<num_species;k++)
            {
                //an vrei to stoixeio ston megalo pinaka krata ti thesi tou
                if (strcmp(SpeciesReference_getSpecies(sr),species[k].name) == 0)
                {
                    reaction[i].product[j].x = k;	//ithesi ston pinaka species
                    reaction[i].product[j].v = SpeciesReference_getStoichiometry(sr);
                    break;
                }
            }
        }
        
        reaction[i].k = Parameter_getValue(p);

        //vlepo tin eidos antidraseis einai kai vazo to c tis kathe antidrasis
        if(reaction[i].react_num == 3)
        {
        	reaction[i].type = 7;
            reaction[i].c = Parameter_getValue(p)/(V*V);	//mallon
        }
        else if(reaction[i].react_num == 2)
        {	
          	sr = Reaction_getReactant(re,0);
          	
          	if (SpeciesReference_getStoichiometry(sr) == 2 )
        	{
        		reaction[i].type = 5;
            	reaction[i].c = 2*Parameter_getValue(p)/(V*V);	//oute kan
        	}
        	else
        	{
        		sr = Reaction_getReactant(re,1);
        	
        		if (SpeciesReference_getStoichiometry(sr) == 2 )
		    	{
		    		reaction[i].type = 6;
		        	reaction[i].c = 2*Parameter_getValue(p)/(V*V);	//oute kan
		    	}
		    	else
		    	{
		    		reaction[i].type = 2;
		        	reaction[i].c = Parameter_getValue(p)/V;	
		    	}
		    }
            
        }
        else //if(reaction[i].react_num == 1)
        {	
        	sr = Reaction_getReactant(re,0);
        	
            if (SpeciesReference_getStoichiometry(sr) == 2 )		//an einai bimolecular me to idio stoixeio
            {
                reaction[i].type = 3;
                reaction[i].c = 2*Parameter_getValue(p)/V;
            }
            else if(SpeciesReference_getStoichiometry(sr) == 3 )
            {
            	reaction[i].type = 4;
                reaction[i].c = 3*Parameter_getValue(p)/(V*V);	//mallon
            }
            else 
            {
                reaction[i].type = 1;
            	reaction[i].c = Parameter_getValue(p);
            }
        }
    }

	for(i=0;i<num_species;i++)
	{
		//fprintf(pf5,"%d\t%s\n",(int)species[i].conc,species[i].name2);
		fprintf(pf5,"%d\t\n",(int)species[i].conc);
	}

	for(i=0;i<num_reactions;i++)
	{
		for(k=0;k<reaction[i].react_num;k++)
		{
			fprintf(pf1,"%d\t",reaction[i].react[k].x+1);
			fprintf(pf3,"%d\t",reaction[i].react[k].v);
		}
		
		for(k=0;k<reaction[i].product_num;k++)
		{
			fprintf(pf2,"%d\t",reaction[i].product[k].x+1);
			fprintf(pf4,"%d\t",reaction[i].product[k].v);
		}

		fprintf(pf1,"\n");
		fprintf(pf3,"\n");
		fprintf(pf2,"\n");
		fprintf(pf4,"\n");
		
		fprintf(pf6,"%f\n",reaction[i].k);
		
		
		
	}
	
	
	fclose(pf1);
    fclose(pf2);
    fclose(pf3);
    fclose(pf4);
    fclose(pf5);
    fclose(pf6);

}




