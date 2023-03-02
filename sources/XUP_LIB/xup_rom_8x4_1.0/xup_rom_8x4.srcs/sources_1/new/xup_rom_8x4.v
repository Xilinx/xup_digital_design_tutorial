//-----------------------------------------------------------------------------
//  
// MIT License
// Copyright (c) 2022 Advanced Micro Devices, Inc. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// SOFTWARE.
//

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_rom_8x4
//////////////////////////////////////////////////////////////////////////////////
module xup_rom_8x4 #(parameter DELAY=3,rom_content=32'h12345678)(
    input [2:0] addr,
    output [3:0] dout
    );
    
    parameter N=4;//no. of bits rom word
    parameter N_WORDS=8;//no. of words in rom
    reg [N-1:0] rom [0:N_WORDS-1];
    //parameter rom_content=32'h12345678; left index of data
    parameter IXLEFT=N*N_WORDS-1;
    integer i;
    
    initial
    begin
        for(i=0;i<N_WORDS;i=i+1)
            rom[i]=rom_content[(IXLEFT-N*i)-:N];
    end
    
    assign #DELAY dout=rom[addr];  
endmodule
