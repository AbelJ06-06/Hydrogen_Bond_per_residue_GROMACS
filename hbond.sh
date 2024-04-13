#!/bin/bash

 for i in { 215 216 219 222 242 312 315 316 367 368 453 456 457 460 471 472 474 475 476 478 505 }
 do 
 	
 	echo "$(($i+2)) 13"|gmx hbond -s md_200.tpr -f md_Final200_center.xtc -num hb_$i.xvg -tu ns -n index_res.ndx
 	
 done
