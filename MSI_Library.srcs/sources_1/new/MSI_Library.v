`timescale 1ns / 1ps

module DECODER(
    input[3:0] IN,
    output reg[15:0] OUT
    );
    always@(*)
    begin
    case(IN)
        4'b0000 : OUT = 16'h0001;
        4'b0001 : OUT = 16'h0002;
        4'b0010 : OUT = 16'h0004;
        4'b0011 : OUT = 16'h0008; 
        4'b0100 : OUT = 16'h0010;
        4'b0101 : OUT = 16'h0020;
        4'b0110 : OUT = 16'h0040;
        4'b0111 : OUT = 16'h0080;
        4'b1000 : OUT = 16'h0100;
        4'b1001 : OUT = 16'h0200;
        4'b1010 : OUT = 16'h0400;
        4'b1011 : OUT = 16'h0800;
        4'b1100 : OUT = 16'h1000;
        4'b1101 : OUT = 16'h2000;
        4'b1110 : OUT = 16'h4000;
        4'b1111 : OUT = 16'h8000; 
        endcase
    end        
endmodule

module ENCODER(  //structural code
    input[3:0] IN,
    output [1:0] OUT,
    output V
    );
    wire w0, w1, w2;
    or o1(OUT[1],IN[3],IN[2]);
    not(w0, IN[2]);
    and a2(w1, IN[1],w0);
    or o2(OUT[0],IN[3],w1);
    or o3(V,OUT[1],IN[1],IN[0]);
endmodule




//module ENCODER(   //always-case structure
//    input[3:0] IN,
//    output reg [1:0] OUT,
//    output reg V
//    );
  
//    always@(*)
//    begin
//    casex(IN)
//        4'b0000 : begin OUT = 2'd0; V=0; end
//        4'b0001 : begin OUT = 2'd0; V=1; end
//        4'b001x : begin OUT = 2'd1; V=1; end
//        4'b01xx : begin OUT = 2'd2; V=1; end
//        4'b1xxx : begin OUT = 2'd3; V=1; end
//        endcase  
//    end
//endmodule    

module MUX(
    input[3:0] D,
    input[1:0] S,
    output O
    );
    
//    always@(*)   //always structure
//    begin
//    case(S)
//        2'd0: O = D[0];
//        2'd1: O = D[1];
//        2'd2: O = D[2];
//        2'd3: O = D[3];
//        endcase
//    end   
    assign O = (~S[1] & ~S[0] & D[0]) | (~S[1] & S[0] & D[1]) | (S[1] & ~S[0] & D[2]) | (S[1] & S[0] & D[3]);
endmodule

module DEMUX(
    input D,
    input[1:0] S,
    output[4:0]O
    );
    
    wire not_0, not_1;
    wire and_0, and_2, and_3;
    NOT n1(.I(S[0]),.O(not_0));
    NOT n2(.I(S[1]),.O(not_1));
    AND and1(.I1(not_0), .I2(not_1), .O(and_0));
    AND and2(.I1(S[0]), .I2(not_1), .O(and_1));
    AND and3(.I1(not_0), .I2(S[1]), .O(and_2));
    AND and4(.I1(S[0]), .I2(S[1]), .O(and_3));
    TRI trii1(.I(D), .E(and_0), .O(O[0]));
    TRI trii2(.I(D), .E(and_1), .O(O[1]));
    TRI trii3(.I(D), .E(and_2), .O(O[2]));
    TRI trii4(.I(D), .E(and_3), .O(O[3]));
    
    
 endmodule

