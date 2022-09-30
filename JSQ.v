//妯0璁℃暟鍣
module JSQ(clk,qh,ql,reset);
input clk,reset;
output[3:0]qh,ql;
reg m;
reg [3:0] qh,ql;

always@ (posedge clk)

begin
if(reset ==1)
begin
ql <= 4'd0;
end
else if (ql == 4'd9)
begin
ql <= 4'd0;
m<= 1;
end
else
begin
 
 ql <= ql+1;
 m<=0;
 end
 end

 
always @(posedge clk) begin
if(reset ==1)
qh <= 4'd0;
    
 else if(m)
        if (qh == 4'd5) begin
            qh <= 4'd0;
            
        end
        else
        qh <= qh+1;
    end
    
endmodule

 