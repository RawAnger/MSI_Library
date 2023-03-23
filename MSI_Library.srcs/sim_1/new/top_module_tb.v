`timescale 1ns / 1ps


module top_module_tb();

    reg [3:0]sw;
    reg [3:0]btn;
//    wire dp;
 //   wire [6:0]cat;
    wire [7:0]led;
 //   wire [3:0]an;
    top_module top1( .sw(sw[0]), .led(led[3:0]), .btn(btn[1:0]));
        initial 
        begin
        for(integer i =0; i<4; i=i+1)
        begin
            btn = i;
            for(integer j =0; j<2; j = j+1)
            begin
                sw = j; #20;
            end
        end
 /*       
           sw = 4'h0;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h1;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h2;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h3;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h4;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h5;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h6;           
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h7;           
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h8;           
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'h9;           
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'hA;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'hB;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'hC;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'hD;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
           
           sw = 4'hE;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end           
           
           sw = 4'hF;
           begin
           btn = 2'd0; #25;
           btn = 2'd1; #25;
           btn = 2'd2; #25;
           btn = 2'd3; #25;
           end
 */
        $finish;
        end 
endmodule
