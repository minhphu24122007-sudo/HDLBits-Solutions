module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    assign {w[7:3],w[2:0],x[7:6],x[5:1],x[0],y[7:4],y[3:0],z[7],z[6:2],z[1:0]}={a[4:0],b[4:2],b[1:0],c[4:0],d[4],d[3:0],e[4:1],e[0],f[4:0],2'b11};
    // assign { ... } = { ... };

endmodule