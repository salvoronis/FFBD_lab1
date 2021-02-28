`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2021 04:46:45 PM
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(
    input a0,
    input a1,
    input a2,
    
    output b0,
    output b1,
    output b2,
    output b3,
    output b4,
    output b5,
    output b6,
    output b7
);

    wire not_a0, not_a1, not_a2;
    
    not(not_a0, a0);
    not(not_a1, a1);
    not(not_a2, a2);
    
    and(b0, not_a0, not_a1, not_a2);
    and(b1, a0, not_a1, not_a2);
    and(b2, not_a0, a1, not_a2);
    and(b3, a0, a1, not_a2);
    and(b4, not_a0, not_a1, a2);
    and(b5, a0, not_a1, a2);
    and(b6, not_a0, a1, a2);
    and(b7, a0, a1, a2);
    
endmodule
