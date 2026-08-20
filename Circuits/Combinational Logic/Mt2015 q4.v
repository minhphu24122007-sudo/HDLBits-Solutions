module top_module (input x, input y, output z);
    wire a,b,_or,_and;
    assign a=(x^y)&x;
    assign b=~(x^y);
    assign _or=a||b;
    assign _and=a&b;
    assign z=_or^_and;
endmodule