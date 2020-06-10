module main();
reg clk;
reg[31:0] o0;
reg[31:0] o1;
reg[31:0] o2;
reg[31:0] o3;
reg[31:0] o4;
reg[31:0] o5;
reg[31:0] o6;
reg[31:0] o7;
always begin
    #40 clk = ~clk;
end
initial begin
    clk = 0;
    #10485760 $finish;
end
initial begin
    o0 = 0;
    o1 = 1;
    o2 = 2;
    o3 = 3;
    o4 = 4;
    o5 = 5;
    o6 = 6;
    o7 = 7;
end
always @(posedge clk) begin
    // simulating very complex calculation
    o0 = o0 + 0;
    o1 = o1 + 1;
    o2 = o2 + 2;
    o3 = o3 + 3;
    o4 = o4 + 4;
    o5 = o5 + 5;
    o6 = o6 + 6;
    o7 = o7 + 7;

    o0 = o0 + o7;
    o1 = o1 + o0;
    o2 = o2 + o1;
    o3 = o3 + o2;
    o4 = o4 + o3;
    o5 = o5 + o4;
    o6 = o6 + o5;
    o7 = o7 + o6;

    o0 = o0 + o1 - o5;
    o1 = o1 + o2 - o6;
    o2 = o2 + o3 - o7;
    o3 = o3 + o4 - o0;
    o4 = o4 + o5 - o1;
    o5 = o5 + o6 - o2;
    o6 = o6 + o7 - o3;
    o7 = o7 + o0 - o4;

    o0 = o0 ^ (o3 << 16);
    o1 = o1 ^ (o4 << 16);
    o2 = o2 ^ (o5 << 16);
    o3 = o3 ^ (o6 << 16);
    o4 = o4 ^ (o7 << 16);
    o5 = o5 ^ (o0 << 16);
    o6 = o6 ^ (o1 << 16);
    o7 = o7 ^ (o2 << 16);
    
    o0 = o0 - (o2 >> 17) + (o4 >> 12);
    o1 = o1 - (o3 >> 17) + (o5 >> 12);
    o2 = o2 - (o4 >> 17) + (o6 >> 12);
    o3 = o3 - (o5 >> 17) + (o7 >> 12);
    o4 = o4 - (o6 >> 17) + (o0 >> 12);
    o5 = o5 - (o7 >> 17) + (o1 >> 12);
    o6 = o6 - (o0 >> 17) + (o2 >> 12);
    o7 = o7 - (o1 >> 17) + (o3 >> 12);

    o0 = o0 + o7 - o6;
    o1 = o1 + o0 - o7;
    o2 = o2 + o1 - o0;
    o3 = o3 + o2 - o1;
    o4 = o4 + o3 - o2;
    o5 = o5 + o4 - o3;
    o6 = o6 + o5 - o4;
    o7 = o7 + o6 - o5;
    
    o0 = o0 * 2 + 3;
    o1 = o1 * 3 + 5;
    o2 = o2 * 5 + 7;
    o3 = o3 * 7 + 11;
    o4 = o4 * 11 + 13;
    o5 = o5 * 13 + 17;
    o6 = o6 * 17 + 19;
    o7 = o7 * 19 + 23;
    
    o0 = o0 * 2 + 0;
    o1 = o1 * 3 + 1;
    o2 = o2 * 3 + 8;
    o3 = o3 * 3 + 27;
    o4 = o4 * 5 + 64;
    o5 = o5 * 13 + 125;
    o6 = o6 * 35 + 216;
    o7 = o7 * 87 + 343;
end
endmodule
