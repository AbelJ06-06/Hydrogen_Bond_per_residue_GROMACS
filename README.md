# H_Bond_per_residue_GROMACS
Code for plotting H bond analysis in python using GROMACS simulation data 

### Create index file for with the atoms that are involed in H-bond

After running the GROMACS simulaton for the Protein-Ligand complex, Identify the atoms involved in H-Bond between the protein and ligand 

gmx hbond -s xxxx.tpr -f xxxx.xtc -hbn hbond.ndx -tu ns 

select the unique atoms present in [ hbonds_Protein-UNK ] and add them to the list "atoms" in Hbond_residues.ipynb 

### Hbond_residues.ipynb
Hbond_residues.ipynb then writes a text file with the list of residues obtained from the final MD.gro file, insert the list into the hbond.sh script and also create an new index file sperating the the atoms in the gro file residue-vise
gmx make_ndx -f md_200.tpr -o index_res.ndx
splitres


### hbond.sh
hbond.sh calculates the H-bond interaction between the LIG and the residues mentioned in Hbond_residues.ipynb to create individual xvg files 

### Hbond_consolidated.ipynb
Hbond_consolidated converts the individual GROMACS hbond outputs into a single excel sheet

### Hbond_plotting.ipynb 
coverts the data stored in the excel sheet into a graph that can be visualized
