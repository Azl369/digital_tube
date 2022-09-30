module f_div(reset,clk_50M,f_5M);
    input reset;
    input clk_50M;
    output f_5M;
    reg f_5M;
    reg[3:0] count;
    
  always @(posedge clk_50M)
    if(reset)
      begin
        f_5M <= 0;
        count <=0;
      end
    else
      begin
        if(count == (5000000-1))
          begin
            count <= 0;
            f_5M <= ~f_5M;
          end
        else
          count <= count+1;
        end
      endmodule

