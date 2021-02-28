`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2021 05:08:58 PM
// Design Name: 
// Module Name: decoder3_8_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder3_8_test;

    reg [2:0] x;
    wire [7:0] o;

    decoder3_8 decoder(
        .a0(x[0]),
        .a1(x[1]),
        .a2(x[2]),
        .b0(o[0]),
        .b1(o[1]),
        .b2(o[2]),
        .b3(o[3]),
        .b4(o[4]),
        .b5(o[5]),
        .b6(o[6]),
        .b7(o[7])
    );
    
    integer i = 1;
    
    initial begin
        for (x = 0; x < 7; x = x + 1) begin
            i = 2**x;
            #10
            
            $display("Input: 0x%h Output: 0x%h", x, o);
            if (o == i) begin
                $display("Test %d passed", x);
            end
        end
    end
endmodule