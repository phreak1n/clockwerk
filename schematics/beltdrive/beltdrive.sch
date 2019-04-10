EESchema Schematic File Version 4
LIBS:beltdrive-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5CACB588
P 3250 2350
F 0 "A?" H 3250 1261 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3250 1170 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3400 1400 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3250 1350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CAD2A4D
P 3450 900
F 0 "#PWR?" H 3450 750 50  0001 C CNN
F 1 "+5V" H 3465 1073 50  0000 C CNN
F 2 "" H 3450 900 50  0001 C CNN
F 3 "" H 3450 900 50  0001 C CNN
	1    3450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 900  3450 1350
$Comp
L generic_symbols:ESC .?
U 1 1 5CAD71D4
P 5800 2100
F 0 ".?" H 5800 2100 50  0001 C CNN
F 1 "ESC" H 4681 1925 50  0000 R CNN
F 2 "" H 5800 2100 50  0001 C CNN
F 3 "" H 5800 2100 50  0001 C CNN
	1    5800 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
