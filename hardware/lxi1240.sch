EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:1240comm
EELAYER 25 0
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
L 1240COMM J?
U 1 1 59FD0F97
P 3100 2350
F 0 "J?" H 3100 2350 60  0000 C CNN
F 1 "1240COMM" H 3100 200 60  0000 C CNN
F 2 "" H 3100 2350 60  0001 C CNN
F 3 "" H 3100 2350 60  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59FD0FC9
P 2400 4200
F 0 "#PWR?" H 2400 3950 50  0001 C CNN
F 1 "GND" H 2400 4050 50  0000 C CNN
F 2 "" H 2400 4200 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
$Comp
L Earth_Protective #PWR?
U 1 1 59FD0FDF
P 2550 4400
F 0 "#PWR?" H 2800 4150 50  0001 C CNN
F 1 "Earth_Protective" H 3000 4250 50  0001 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2550 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59FD10B8
P 2400 3700
F 0 "#PWR?" H 2400 3550 50  0001 C CNN
F 1 "+5V" H 2400 3840 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
NoConn ~ 2650 3900
NoConn ~ 2650 4000
Wire Wire Line
	2650 4100 2550 4100
Wire Wire Line
	2550 4100 2550 4200
Wire Wire Line
	2400 4200 2650 4200
Connection ~ 2550 4200
Wire Wire Line
	2650 4300 2550 4300
Wire Wire Line
	2550 4300 2550 4400
Wire Wire Line
	2550 4400 2650 4400
Connection ~ 2550 4400
Wire Wire Line
	2400 3700 2650 3700
Wire Wire Line
	2650 3800 2550 3800
Wire Wire Line
	2550 3800 2550 3700
Connection ~ 2550 3700
Wire Wire Line
	2650 2500 2400 2500
Wire Wire Line
	2650 2600 2400 2600
Wire Wire Line
	2650 2700 2400 2700
Wire Wire Line
	2650 2800 2400 2800
Wire Wire Line
	2650 2900 2400 2900
Wire Wire Line
	2650 3000 2400 3000
Wire Wire Line
	2650 3100 2400 3100
Wire Wire Line
	2650 3200 2400 3200
Text Label 2500 2500 0    60   ~ 0
D0
Text Label 2500 2600 0    60   ~ 0
D1
Text Label 2500 2700 0    60   ~ 0
D2
Text Label 2500 2800 0    60   ~ 0
D3
Text Label 2500 2900 0    60   ~ 0
D4
Text Label 2500 3000 0    60   ~ 0
D5
Text Label 2500 3100 0    60   ~ 0
D6
Text Label 2500 3200 0    60   ~ 0
D7
Wire Bus Line
	2300 3100 2300 2300
Entry Wire Line
	2300 3100 2400 3200
Entry Wire Line
	2300 3000 2400 3100
Entry Wire Line
	2300 2900 2400 3000
Entry Wire Line
	2300 2800 2400 2900
Entry Wire Line
	2300 2700 2400 2800
Entry Wire Line
	2300 2600 2400 2700
Entry Wire Line
	2300 2500 2400 2600
Entry Wire Line
	2300 2400 2400 2500
Wire Wire Line
	3550 3100 3800 3100
Wire Wire Line
	3550 3200 3800 3200
Wire Wire Line
	3550 3300 3800 3300
Wire Wire Line
	3550 3400 3800 3400
Wire Wire Line
	3550 3500 3800 3500
Wire Wire Line
	3550 3600 3800 3600
Wire Wire Line
	3550 3700 3800 3700
Wire Wire Line
	3550 3800 3800 3800
Wire Wire Line
	3550 3900 3800 3900
Wire Wire Line
	3550 4000 3800 4000
Wire Wire Line
	3550 4100 3800 4100
Wire Wire Line
	3550 4200 3800 4200
Wire Wire Line
	3550 4300 3800 4300
Wire Wire Line
	3550 4400 3800 4400
Text Label 3600 3100 0    60   ~ 0
A0
Text Label 3600 3200 0    60   ~ 0
A1
Text Label 3600 3300 0    60   ~ 0
A2
Text Label 3600 3400 0    60   ~ 0
A3
Text Label 3600 3500 0    60   ~ 0
A4
Text Label 3600 3600 0    60   ~ 0
A5
Text Label 3600 3700 0    60   ~ 0
A6
Text Label 3600 3800 0    60   ~ 0
A7
Text Label 3600 3900 0    60   ~ 0
A8
Text Label 3600 4000 0    60   ~ 0
A9
Text Label 3600 4100 0    60   ~ 0
A10
Text Label 3600 4200 0    60   ~ 0
A11
Text Label 3600 4300 0    60   ~ 0
A12
Text Label 3600 4400 0    60   ~ 0
A13
Entry Wire Line
	3800 3100 3900 3200
Entry Wire Line
	3800 3200 3900 3300
Entry Wire Line
	3800 3300 3900 3400
Entry Wire Line
	3800 3400 3900 3500
Entry Wire Line
	3800 3500 3900 3600
Entry Wire Line
	3800 3600 3900 3700
Entry Wire Line
	3800 3700 3900 3800
Entry Wire Line
	3800 3800 3900 3900
Entry Wire Line
	3800 3900 3900 4000
Entry Wire Line
	3800 4000 3900 4100
Entry Wire Line
	3800 4100 3900 4200
Entry Wire Line
	3800 4200 3900 4300
Entry Wire Line
	3800 4300 3900 4400
Entry Wire Line
	3800 4400 3900 4500
Wire Bus Line
	3900 3200 3900 4650
$EndSCHEMATC
