# MIT License
#
# Copyright (c) 2022 Advanced Micro Devices, Inc. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Switches maps to SWA (sw[0]) to SWH (sw[7])
set_property PACKAGE_PIN V6 [get_ports SW0]
set_property IOSTANDARD LVCMOS33 [get_ports {SW0}];
set_property PACKAGE_PIN Y6 [get_ports SW1]
set_property IOSTANDARD LVCMOS33 [get_ports SW1]
set_property PACKAGE_PIN B19 [get_ports SW2]
set_property IOSTANDARD LVCMOS33 [get_ports SW2]
set_property PACKAGE_PIN U7 [get_ports SW3]
set_property IOSTANDARD LVCMOS33 [get_ports SW3]
set_property PACKAGE_PIN C20 [get_ports SW4]
set_property IOSTANDARD LVCMOS33 [get_ports SW4]
set_property PACKAGE_PIN Y8 [get_ports SW5]
set_property IOSTANDARD LVCMOS33 [get_ports SW5]
set_property PACKAGE_PIN A20 [get_ports SW6]
set_property IOSTANDARD LVCMOS33 [get_ports SW6]



## LEDs maps to LDA (LD0) to LDF (LD5), led6 to on-board LD2 and led7 to on-board LD3
set_property PACKAGE_PIN B20 [get_ports LD0]
set_property IOSTANDARD LVCMOS33 [get_ports LD0]
set_property PACKAGE_PIN W8 [get_ports LD1]
set_property IOSTANDARD LVCMOS33 [get_ports LD1]
set_property PACKAGE_PIN U8 [get_ports LD2]
set_property IOSTANDARD LVCMOS33 [get_ports LD2]
set_property PACKAGE_PIN W6 [get_ports LD3]
set_property IOSTANDARD LVCMOS33 [get_ports LD3]
set_property PACKAGE_PIN Y7 [get_ports LD4]
set_property IOSTANDARD LVCMOS33 [get_ports LD4]
set_property PACKAGE_PIN F20 [get_ports LD5];	#RPIO_25_R, connector Pin 22, FPGA Signal name RP_IO17					
set_property IOSTANDARD LVCMOS33 [get_ports LD5]
#On-board LD2
set_property PACKAGE_PIN N16 [get_ports { LD6 }]  
set_property IOSTANDARD LVCMOS33 [get_ports { LD6 }] 

