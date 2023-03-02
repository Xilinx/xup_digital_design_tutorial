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
set_property PACKAGE_PIN V6 [get_ports {a}]
set_property IOSTANDARD LVCMOS33 [get_ports {a}];

set_property PACKAGE_PIN Y6 [get_ports {b}]
set_property IOSTANDARD LVCMOS33 [get_ports {b}]

set_property PACKAGE_PIN B19 [get_ports {a_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_0[0]}]

set_property PACKAGE_PIN U7 [get_ports {a_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_0[1]}]

set_property PACKAGE_PIN C20 [get_ports {a_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_0[2]}]

set_property PACKAGE_PIN Y8 [get_ports {b_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b_0[0]}]

set_property PACKAGE_PIN A20 [get_ports {b_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b_0[1]}]

set_property PACKAGE_PIN W9 [get_ports {b_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {{b_0[2]}}]



## LEDs maps to LDA (led[0]) to LDF (led[5]), led6 to LD2 and led7 to LD3
set_property PACKAGE_PIN B20 [get_ports {y}]
set_property IOSTANDARD LVCMOS33 [get_ports {y}]
set_property PACKAGE_PIN W8 [get_ports {y_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {y_0[0]}]
set_property PACKAGE_PIN U8 [get_ports {y_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {y_0[1]}]
set_property PACKAGE_PIN W6 [get_ports {y_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {y_0[2]}]
