## density dependant phenology
<br /><br />
*oneseason* given an input of the adult density, this uses ode45 to find 1 iteration of model 1 and outputs the next years adult density<br /><br />
*grow* defines the growth function, *define_k* vectorizes the dispersal kernal<br /><br />
*size_clip* takes the population vector as an input, returns its spatial extent, and clips the tails that are below the clipping threshold (10^-4)<br /><br />
*one_paremeter_orbit* contains the functions for producing figures 7-12<br /><br />
*2parameter_bifurc* contains the functions for section 3.2<br /><br />
*two_patch* contains the functions used for the study of the interaction of two patches
