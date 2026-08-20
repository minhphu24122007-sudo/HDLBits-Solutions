module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] w1,w2,w3;
    my_dff8 instance1 (clk,d,w1);
    my_dff8 instance2 (clk,w1,w2);
    my_dff8 instance3 (clk,w2,w3);
	always @(*) begin
        case(sel)
            2'b00: q = d;   // Không delay
            2'b01: q = w1;  // Sau DFF thứ nhất
            2'b10: q = w2;  // Sau DFF thứ hai
            2'b11: q = w3;  // Sau DFF thứ ba
        endcase
    end
endmodule
/* =========================================
   NOTE: Khai báo của module Black Box được HDLBits cung cấp sẵn (Không cần code nội dung)
   
   module my_dff8 ( input clk, input [7:0] d, output [7:0] q );

   ========================================= */