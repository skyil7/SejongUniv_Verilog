module HalfAdder(A, B, S, C);
    input A, B;
    output C, S;
    
    wire A, B;
    wire S, C;

    assign S = A ^ B;
    assign C = A & B;
endmodule;