# H_Bond_per_residue_GROMACS
Code for plotting H bond analysis in python using GROMACS simulation data 

## After running the GROMACS simulaton for the Protein-Ligand complex, Identify the atoms involved in H-Bond bwtween the protein and ligand 


gmx hbond -s xxxx.tpr -f xxxx.xtc -hbn hbond.ndx -tu ns 
## Creates an index file with the atoms that are involed in H-bond
select the unique atoms present in [ hbonds_Protein-UNK ] and add them to the list "atoms" in Hbond_residues.ipynb 


Hbond_residues.ipynb then writes a text file with the list of residues 



