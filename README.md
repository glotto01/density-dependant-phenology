## density dependant phenology
*oneseason* given an input of the adult density, this uses ode45 to find 1 iteration of model 1 and outputs the next years adult density<br /><br />
*highadult_diag* plots the growth function. Takes the value of a, Amax and number of sample points as inputs. Uses *oneseason*<br /><br />
*eqfinder* given a sampled (x,y) list of the growth function, this code finds all the non-zero equilibria. <br /><br />
*eqvsa_highadult* given the desired range of a and the desired number of sample points, this code otputs a csv file of the equilibrium values vs a, also checking for linear stability of the carrying capacity. <br /><br />
*2parameter_bifurc* contains the functions for section 3.2<br /><br />
*two_patch* contains the functions used for the study of the interaction of two patches
