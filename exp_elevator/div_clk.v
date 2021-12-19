module clk_div(clk_in,clk_out_1khz,clk_out_50hz
//,clk_out_0.25hz
);
	input clk_in;
	output reg clk_out_1khz=0;
    output reg clk_out_50hz=0;
    //output reg clk_out_0.25hz=0;
 	reg[24:0] clk_div_cnt_1=0;
    reg[24:0] clk_div_cnt_2=0;
    //reg[24:0] clk_div_cnt_3=0;
//1khz
        always @ (posedge clk_in)
        begin
            if (clk_div_cnt_1==24999)
            begin
                clk_out_1khz=~clk_out_1khz;
                clk_div_cnt_1=0;
            end
            else 
                clk_div_cnt_1=clk_div_cnt_1+1'b1;
       end
//50hz
        always @ (posedge clk_in)
        begin
            if (clk_div_cnt_2==499999)
            begin
                clk_out_50hz=~clk_out_50hz;
                clk_div_cnt_2=0;
            end
            else 
                clk_div_cnt_2=clk_div_cnt_2+1'b1;
       end
//0.25hz
        //always @ (posedge clk_in) 
        //begin
          //  if (clk_div_cnt_3==99999999)
           // begin
             //   clk_out_0.25hz=~clk_out_0.25hz;
               // clk_div_cnt_3=0;
           // end
            //else 
            //    clk_div_cnt_3=clk_div_cnt_3+1'b1;
 endmodule