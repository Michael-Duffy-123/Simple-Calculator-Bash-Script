#!/bin/bash
ASKFOROPTIONS="1"
ASKFORINPUTS="1"
ASKFOROPERATOR="1"
ASKFOROPERAND="1"
ASKFORCONFIRMATION="1"
ASKFORREPEAT="1"

echo " "
echo "--------------------------------MATHEMATICS TABLES GENERATOR-----------------------------------"
echo " "
echo " "

ASKFOROPTIONS="1"

while [ "$ASKFOROPTIONS" = "1" ]

do

		echo "------------------------------------------OPTIONS----------------------------------------------"
		echo " "
		
		echo "Addition +"
		echo "Subtraction -"
		echo "Multiplication *"
		echo "Division /"
		echo "Exponent ^"
		
		echo " "
		echo "-----------------------------------------------------------------------------------------------"
		echo " "
		
		ASKFORINPUTS="1"
		
		while [ "$ASKFORINPUTS" = "1" ]
		do
		
				ASKFOROPERATOR="1"
				
				while [ "$ASKFOROPERATOR" = "1" ]
				do
				
				echo "Select an operator ( + - * / ^ )"
				read OPERATOR
				
				        if [ "$OPERATOR" = "+" ] || [ "$OPERATOR" = "-" ] || [ "$OPERATOR" = "*" ] || [ "$OPERATOR" = "/" ] || [ "$OPERATOR" = "^" ]; then
				                ASKFOROPERATOR="0"
				        fi
				
				done
					
				echo " "
				
				ASKFOROPERAND="1"
				
				while [ "$ASKFOROPERAND" = "1" ]
				do
				
						echo "Enter an operand (1 - 15)"
						read OPERAND
						
						        if (( "$OPERAND" > "0" )) && (( "$OPERAND" < "16" )) ; then
						                ASKFOROPERAND="0"
						        fi
				
				
				done
				
				echo " "
				echo "-----------------------------------------------------------------------------------------------"
				echo " "
				echo "You have selected..."
				echo " "
				echo "Operator : " $OPERATOR
				echo "Operand : " $OPERAND
				echo " "
				
				ASKFORCONFIRMATION="1"
				
				while [ "$ASKFORCONFIRMATION" = "1" ]
				do
				
						echo "Is this correct? (Y/N)"
						read CONFIRMATION
						
						        if [ "$CONFIRMATION" = "Y" ] ; then
						                ASKFORCONFIRMATION="0"
						                ASKFORINPUTS="0"
						        fi
						
						        if [ "$CONFIRMATION" = "N" ] ; then
						                ASKFORCONFIRMATION="0"
						                echo " "
						        fi
				
				done
		
		done
		
		if [ "$OPERATOR" = "+" ] ; then
		
				echo " "
				echo "------------------------------------------ADDITION TABLES : $OPERAND --------------------------------"
				echo " "
				
				
				for ((i = 1 ; i < 16 ; i++)) do
						echo "                                              $OPERAND + $i = $(( $OPERAND + $i ))"
				done
		
		fi
		
		if [ "$OPERATOR" = "-" ] ; then
		
				echo " "
				echo "------------------------------------------SUBTRACTION TABLES : $OPERAND --------------------------------"
				echo " "
				
				
				for ((i = 1 ; i < 16 ; i++)) do
						echo "                                              $OPERAND - $i = $(( $OPERAND - $i ))"
				done
		
		fi
		
		if [ "$OPERATOR" = "*" ] ; then
		
				echo " "
				echo "------------------------------------------MULTIPLICATION TABLES : $OPERAND --------------------------------"
				echo " "
				
				for ((i = 1 ; i < 16 ; i++)) do
						echo "                                              $OPERAND * $i = $(( $OPERAND * $i ))"
				done
		
		fi
		
		if [ "$OPERATOR" = "/" ] ; then
		
				echo " "
				echo "----------------------------------------------DIVISION TABLES : $OPERAND --------------------------------"
				echo " "
				
				
				for ((i = 1 ; i < 16 ; i++)) do
						echo -n "                                              $OPERAND / $i = "
						echo $OPERAND / $i | bc -l
				done
		
		fi
		
		if [ "$OPERATOR" = "^" ] ; then
		
				echo " "
				echo "-----------------------------------------------EXPONENT TABLES : $OPERAND --------------------------------"
				echo " "
				
				
				for ((i = 1 ; i < 16 ; i++)) do
						echo "                                              $OPERAND ^ $i = $(( $OPERAND ** $i ))"
				done
		
		fi
		
		
		
		echo " "
		echo "-----------------------------------------------------------------------------------------------"
		echo " "
		
		ASKFORREPEAT="1"
		while [ "$ASKFORREPEAT" = "1" ]
				do
				
				echo "Would you like to QUIT or RETURN TO OPTIONS? (Q / R)"
				read REPEAT
				
				if [ "$REPEAT" = "Q" ] ; then
				        ASKFORREPEAT="0"
				        ASKFOROPTIONS="0"
				        echo " "
				fi
				
				if [ "$REPEAT" = "R" ] ; then
				        ASKFORREPEAT="0"
				fi
		
		done

done