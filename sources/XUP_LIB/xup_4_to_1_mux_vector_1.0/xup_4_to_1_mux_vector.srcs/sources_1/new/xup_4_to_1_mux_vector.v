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
// Module Name: xup_4_to_1_mux_vector
//////////////////////////////////////////////////////////////////////////////////
module xup_4_to_1_mux_vector#(parameter SIZE = 4 , DELAY = 3)(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    input [SIZE-1:0] c,
    input [SIZE-1:0] d,
    input [1:0] sel,
    output [SIZE-1:0] y
    );
    reg [SIZE-1:0] data;
    
    always @(*) begin
        case(sel)
            2'b00 : data[SIZE-1:0] <= a[SIZE-1:0] ;
            2'b01 : data[SIZE-1:0] <= b[SIZE-1:0] ;
            2'b10 : data[SIZE-1:0] <= c[SIZE-1:0] ;
            2'b11 : data[SIZE-1:0] <= d[SIZE-1:0] ;
            default : data[SIZE-1:0] <= a[SIZE-1:0] ;
        endcase
    end
    
    assign #DELAY y[SIZE-1:0] = data[SIZE-1:0] ;
        
endmodule
