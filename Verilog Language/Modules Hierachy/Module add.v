module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2;
    wire [31:0] sum1;
    add16 instance1 (a[15:0],b[15:0],1'b0,sum1[15:0],w1);
    add16 instance2 (a[31:16],b[31:16],w1,sum1[31:16],w2);
    assign sum=sum1;
endmodule
/* =========================================
   NOTE: Khai báo của module Black Box được HDLBits cung cấp sẵn (Không cần code nội dung)

   module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

   ========================================= */