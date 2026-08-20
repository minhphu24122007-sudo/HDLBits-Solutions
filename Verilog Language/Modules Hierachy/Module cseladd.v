module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel,cout1,cout2;
    wire [15:0] w1,w2,q;
    add16 instance1 (a[15:0],b[15:0],1'b0,sum[15:0],sel);
    add16 instance2 (a[31:16],b[31:16],1'b1,w1,cout1);
    add16 instance3 (a[31:16],b[31:16],1'b0,w2,cout2);
    always @(*) begin
        case (sel)
            1'b1: sum[31:16]=w1;
            1'b0: sum[31:16]=w2;
        endcase
    end
endmodule
/* =========================================
   NOTE: Khai báo của module Black Box được HDLBits cung cấp sẵn (Không cần code nội dung)

   module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

   ========================================= */