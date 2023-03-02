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
// Module Name: xup_4_to_1_mux
//////////////////////////////////////////////////////////////////////////////////
module xup_4_to_1_mux #(parameter DELAY = 3)(
    input a,
    input b,
    input c,
    input d,
    input [1:0] select,
    output y
    );
    reg data;
    
    always @(*) begin
        case(select)
            2'b00 : data <= a;
            2'b01 : data <= b;
            2'b10 : data <= c;
            2'b11 : data <= d;
            default : data <= a;
        endcase
    end
    
    assign #DELAY y = data;
        
endmodule
