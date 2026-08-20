module top_module ( input clk, input d, output q );
    wire q1,q2,q3;
    my_dff instance1 (clk,d,q1);
    my_dff instance2 (clk,q1,q2);
    my_dff instance3 (clk,q2,q);
endmodule
/* =========================================
   NOTE: Khai báo của module Black Box được HDLBits cung cấp sẵn (Không cần code nội dung)
   
   module my_dff ( input clk, input d, output q );
  
   ========================================= */