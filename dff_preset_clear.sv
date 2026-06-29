module dff_preset_clear (
    input  wire D,
    input  wire CLK,
    input  wire PRESET,  
    input  wire CLEAR,   
    output reg  Q
);
    always @(posedge CLK or posedge PRESET or posedge CLEAR) begin
        if (CLEAR)
            Q <= 1'b0;
        else if (PRESET)
            Q <= 1'b1;
        else
            Q <= D;
    end
endmodule
