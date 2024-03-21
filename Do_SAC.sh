#!/bin/bash

#Rango de estaciones:
stations="TOIG"
#HUIG TGIG PCIG TUIG OXIG THIG TOIG
#Modifica comandos:
#rsac="*HUIG*.sac"
#pz="HUIG.PZ"

#echo $rsac
#echo $pz

#echo "r " $rsac  >> macro
#echo "p1" >> macro
#echo "rmean" >> macro
#echo "rtrend" >> macro
#echo "transfer from polezero s ./"$pz" to WA" >> macro
#echo "w HUIG_HHE_WA.sac HUIG_HHN_WA.sac HUIG_HHZ_WA.sac" >> macro
#echo "exit" >> macro
#sac < macro

#Bucle para recorrer estaciones:

for station in $stations; do	
		#Modifica comandos:
		echo "*"$station"*.sac"
		echo $station".PZ"
		rsac="*"$station"*.sac"
		#pz= $station".PZ"
		
		
		echo "r " $rsac  >> macro
		echo "p1" >> macro
		echo "rmean" >> macro
		echo "rtrend" >> macro
		echo "transfer from polezero s ./"$station".PZ to WA" >> macro
		echo "w "$station"_HHE_WA.sac" $station"_HHN_WA.sac" $station"_HHZ_WA.sac"  >> macro
		echo "exit" >> macro
		sac < macro
		
		
done

