module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] x_or;
    wire cout1,cout2;
    assign x_or=b^{32{sub}};
    add16 instance1 (a[15:0],x_or[15:0],sub,sum[15:0],cout1);
    add16 instance2 (a[31:16],x_or[31:16],cout1,sum[31:16],cout2);
endmodule
/* =========================================
   NOTE: Khai báo của module Black Box được HDLBits cung cấp sẵn (Không cần code nội dung)

   module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

   ========================================= */