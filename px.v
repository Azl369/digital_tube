module px(sl,sh,sel,q);
input [3:0]sl,sh;
input sel;
output [3:0]q;
reg [3:0]q;


always @(sl or sh or sel) begin
    case (sel)
        1'b0: q= sl; 
        1'b1: q= sh; 
        default: q = 4'b0000;
    endcase
    
end
endmodule