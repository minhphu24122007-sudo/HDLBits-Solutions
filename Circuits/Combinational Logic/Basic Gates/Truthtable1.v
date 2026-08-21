module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
	wire w2,w3,w5,w7;
    assign w2=~x3&x2&~x1;
    assign w3=~x3&x2&x1;
    assign w5=x3&~x2&x1;
    assign w7=x3&x2&x1;
    assign f=w2|w3|w5|w7;
endmodule
