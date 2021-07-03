`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 04:43:15
// Design Name: 
// Module Name: matrix
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module matrix(clk,reset,gamma,row,wea0,wea1,wea2,wea3,wea4,wea5,wea6,wea7,wea8,wea9,wea10,wea11,wea12,wea13,wea14,wea15,web0,web1,web2,web3,web4,web5,web6,web7,web8,web9,web10,web11,web12,web13,web14,web15,ena0,ena1,ena2,ena3,ena4,ena5,ena6,ena7,ena8,ena9,ena10,ena11,ena12,ena13,ena14,ena15,enb0,enb1,enb2,enb3,enb4,enb5,enb6,enb7,enb8,enb9,enb10,enb11,enb12,enb13,enb14,enb15,addra0,addra1,addra2,addra3,addra4,addra5,addra6,addra7,addra8,addra9,addra10,addra11,addra12,addra13,addra14,addra15,addrb0,addrb1,addrb2,addrb3,addrb4,addrb5,addrb6,addrb7,addrb8,addrb9,addrb10,addrb11,addrb12,addrb13,addrb14,addrb15,dina0,dina1,dina2,dina3,dina4,dina5,dina6,dina7,dina8,dina9,dina10,dina11,dina12,dina13,dina14,dina15,dinb0,dinb1,dinb2,dinb3,dinb4,dinb5,dinb6,dinb7,dinb8,dinb9,dinb10,dinb11,dinb12,dinb13,dinb14,dinb15,done);
input clk,reset;
input [31:0] gamma,row;
output reg [10:0] addra0;
output reg [10:0] addra1;
output reg [10:0] addra2;
output reg [10:0] addra3;
output reg [10:0] addra4;
output reg [10:0] addra5;
output reg [10:0] addra6;
output reg [10:0] addra7;
output reg [10:0] addra8;
output reg [10:0] addra9;
output reg [10:0] addra10;
output reg [10:0] addra11;
output reg [10:0] addra12;
output reg [10:0] addra13;
output reg [10:0] addra14;
output reg [10:0] addra15;

output reg [10:0] addrb0;
output reg [10:0] addrb1;
output reg [10:0] addrb2;
output reg [10:0] addrb3;
output reg [10:0] addrb4;
output reg [10:0] addrb5;
output reg [10:0] addrb6;
output reg [10:0] addrb7;
output reg [10:0] addrb8;
output reg [10:0] addrb9;
output reg [10:0] addrb10;
output reg [10:0] addrb11;
output reg [10:0] addrb12;
output reg [10:0] addrb13;
output reg [10:0] addrb14;
output reg [10:0] addrb15;

output reg [31:0] dina0;
output reg [31:0] dina1;
output reg [31:0] dina2;
output reg [31:0] dina3;
output reg [31:0] dina4;
output reg [31:0] dina5;
output reg [31:0] dina6;
output reg [31:0] dina7;
output reg [31:0] dina8;
output reg [31:0] dina9;
output reg [31:0] dina10;
output reg [31:0] dina11;
output reg [31:0] dina12;
output reg [31:0] dina13;
output reg [31:0] dina14;
output reg [31:0] dina15;

output reg [31:0] dinb0;
output reg [31:0] dinb1;
output reg [31:0] dinb2;
output reg [31:0] dinb3;
output reg [31:0] dinb4;
output reg [31:0] dinb5;
output reg [31:0] dinb6;
output reg [31:0] dinb7;
output reg [31:0] dinb8;
output reg [31:0] dinb9;
output reg [31:0] dinb10;
output reg [31:0] dinb11;
output reg [31:0] dinb12;
output reg [31:0] dinb13;
output reg [31:0] dinb14;
output reg [31:0] dinb15;
//[15:0];
  //output [10:0] addrb[15:0];
 output reg ena0;
output reg ena1;
output reg ena2;
output reg ena3;
output reg ena4;
output reg ena5;
output reg ena6;
output reg ena7;
output reg ena8;
output reg ena9;
output reg ena10;
output reg ena11;
output reg ena12;
output reg ena13;
output reg ena14;
output reg ena15;
output reg enb0;
output reg enb1;
output reg enb2;
output reg enb3;
output reg enb4;
output reg enb5;
output reg enb6;
output reg enb7;
output reg enb8;
output reg enb9;
output reg enb10;
output reg enb11;
output reg enb12;
output reg enb13;
output reg enb14;
output reg enb15;
  

output reg wea0;
output reg wea1;
output reg wea2;
output reg wea3;
output reg wea4;
output reg wea5;
output reg wea6;
output reg wea7;
output reg wea8;
output reg wea9;
output reg wea10;
output reg wea11;
output reg wea12;
output reg wea13;
output reg wea14;
output reg wea15;
output reg web0;
output reg web1;
output reg web2;
output reg web3;
output reg web4;
output reg web5;
output reg web6;
output reg web7;
output reg web8;
output reg web9;
output reg web10;
output reg web11;
output reg web12;
output reg web13;
output reg web14;
output reg web15;
  

 
output reg done;


reg [5:0]j,k,l;
//counter
wire [3:0]count1;
wire [10:0]count2;
wire [10:0]even;
wire [10:0]odd;
reg reset1,enable1,enable2,enable3,enable4;

counter_even e1(reset,clk,enable3,even);
counter_odd e2(reset,clk,enable3,odd);
defparam e1.COUNT_LEN=10;
defparam e2.COUNT_LEN=10;

//state initialisation
`define reset_state 5'd0
`define valin0 5'd1
`define valin1 5'd2
`define valin2 5'd3
`define valin3 5'd4
`define valin4 5'd5
`define valin5 5'd6
`define valin6 5'd7
`define valin7 5'd8
`define valin8 5'd9
`define valin9 5'd10
`define valin10 5'd11
`define valin11 5'd12
`define valin12 5'd13
`define valin13 5'd14
`define valin14 5'd15
`define valin15 5'd16
`define enden 5'd17
reg [31:0]val,ri;
reg [5:0]state;
reg [5:0]next_state;
  
/*
genvar i;
generate
for(i=0;i<16;i=i+1)
begin
blk_mem_gen_0 sparse (
    .clka(clk),    // input wire clka
    .ena(ena[i]),      // input wire ena
    .wea(wea[i]),      // input wire [0 : 0] wea
    .addra(addra[i]),  // input wire [3 : 0] addra
    .dina(dina[i]),    // input wire [5 : 0] dina
    .douta(douta[i]),  // output wire [5 : 0] douta
    .clkb(clk),    // input wire clkb
    .enb(enb[i]),      // input wire enb
    .web(web[i]),      // input wire [0 : 0] web
    .addrb(addrb[i]),  // input wire [3 : 0] addrb
    .dinb(dinb[i]),    // input wire [5 : 0] dinb
    .doutb(doutb[i])  // output wire [5 : 0] doutb
  );
  end
  endgenerate
*/
reg [63:0]alpha[559:0]; //


// taking the input
  always@(posedge clk,posedge reset) begin
  if(reset) begin
  val=31'd0;
  ri = 31'd0;
  end
  else begin
  val=gamma;
  ri = row;
  end
  end
  
  //state
 always@(posedge clk,posedge reset) begin
 if (reset) 
 state=5'd0;
 else 
 state=next_state;
 end
  
always@(state,reset,even) begin 
if (reset)
begin
next_state=0;
end
else
begin
case(state)
`reset_state:  begin next_state=`valin0; end
`valin0: begin next_state=`valin1;  end
`valin1: begin next_state=`valin2;  end 
`valin2: begin next_state=`valin3; end 
`valin3: begin next_state=`valin4;  end 
`valin4: begin next_state=`valin5;  end 
`valin5: begin next_state=`valin6;  end 
`valin6: begin next_state=`valin7;  end 
`valin7: begin next_state=`valin8;  end 
`valin8: begin next_state=`valin9;  end 
`valin9: begin next_state=`valin10;  end
`valin10: begin next_state=`valin11;   end
`valin11: begin next_state=`valin12; end
`valin12: begin next_state=`valin13;  end
`valin13: begin next_state=`valin14;   end
`valin14: begin next_state=`valin15;   end
`valin15: begin if(even==11'd1118) next_state=`enden; else next_state=`valin0; end
`enden : begin next_state=`enden; end
default : begin next_state=`enden; end
endcase 
end
end



always@(state,reset)
begin
if(reset) begin enable3=1'b0;  end
else
begin
case(state)
`valin15:begin
enable3=1'b1;
end
default: begin
enable3=1'b0;
end
endcase
end
end




//functional
always@(state,val,ri,even,odd,reset)
begin
if(reset)
begin
 dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
//
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;

done=0;
end
else
case(state)
`reset_state: begin
 dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
done=0;
end
`valin0: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea0=1;
web0=1;
ena0=1;
enb0=1;
addra0=even;
addrb0=odd;
dina0=val;
dinb0=ri;
done=0;

end
`valin1: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea1=1;
web1=1;
ena1=1;
enb1=1;
//
addra1=even;
addrb1=odd;
dina1=val;
dinb1=ri;
done=0;

end
`valin2: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
//
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea2=1;
web2=1;
ena2=1;
enb2=1;
//
addra2=even;
addrb2=odd;
dina2=val;
dinb2=ri;
done=0;

end
`valin3: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
//
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea3=1;
web3=1;
ena3=1;
enb3=1;
//
addra3=even;
addrb3=odd;
dina3=val;
dinb3=ri;
done=0;

end

`valin4: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea4=1;
web4=1;
ena4=1;
enb4=1;
//
addra4=even;
addrb4=odd;
dina4=val;
dinb4=ri;
done=0;

end
`valin5: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea5=1;
web5=1;
ena5=1;
enb5=1;
//
addra5=even;
addrb5=odd;
dina5=val;
dinb5=ri;
done=0;

end


`valin6: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea6=1;
web6=1;
ena6=1;
enb6=1;
//
addra6=even;
addrb6=odd;
dina6=val;
dinb6=ri;
done=0;

end
`valin7: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea7=1;
web7=1;
ena7=1;
enb7=1;
//
addra7=even;
addrb7=odd;
dina7=val;
dinb7=ri;
done=0;

end

`valin8: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea8=1;
web8=1;
ena8=1;
enb8=1;
//
addra8=even;
addrb8=odd;
dina8=val;
dinb8=ri;
done=0;

end
`valin9: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea9=1;
web9=1;
ena9=1;
enb9=1;
//
addra9=even;
addrb9=odd;
dina9=val;
dinb9=ri;
done=0;

end
`valin10: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea10=1;
web10=1;
ena10=1;
enb10=1;
//
addra10=even;
addrb10=odd;
dina10=val;
dinb10=ri;
done=0;

end
`valin11: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea11=1;
web11=1;
ena11=1;
enb11=1;
//
addra11=even;
addrb11=odd;
dina11=val;
dinb11=ri;
done=0;

end
`valin12: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea12=1;
web12=1;
ena12=1;
enb12=1;
//
addra12=even;
addrb12=odd;
dina12=val;
dinb12=ri;
done=0;

end
`valin13: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea13=1;
web13=1;
ena13=1;
enb13=1;
//
addra13=even;
addrb13=odd;
dina13=val;
dinb13=ri;
done=0;

end
`valin14: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea14=1;
web14=1;
ena14=1;
enb14=1;
//
addra14=even;
addrb14=odd;
dina14=val;
dinb14=ri;
done=0;

end
`valin15: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
ena0=0;
ena1=0;
ena2=0;
ena3=0;
ena4=0;
ena5=0;
ena6=0;
ena7=0;
ena8=0;
ena9=0;
ena10=0;
ena11=0;
ena12=0;
ena13=0;
ena14=0;
ena15=0;
enb0=0;
enb1=0;
enb2=0;
enb3=0;
enb4=0;
enb5=0;
enb6=0;
enb7=0;
enb8=0;
enb9=0;
enb10=0;
enb11=0;
enb12=0;
enb13=0;
enb14=0;
enb15=0;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
wea15=1;
web15=1;
ena15=1;
enb15=1;
//
addra15=even;
addrb15=odd;
dina15=val;
dinb15=ri;
done=0;

end



`enden :begin 
 dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
//
ena0=1;
ena1=1;
ena2=1;
ena3=1;
ena4=1;
ena5=1;
ena6=1;
ena7=1;
ena8=1;
ena9=1;
ena10=1;
ena11=1;
ena12=1;
ena13=1;
ena14=1;
ena15=1;
enb0=1;
enb1=1;
enb2=1;
enb3=1;
enb4=1;
enb5=1;
enb6=1;
enb7=1;
enb8=1;
enb9=1;
enb10=1;
enb11=1;
enb12=1;
enb13=1;
enb14=1;
enb15=1;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
done=1;
end
default: begin
dina0=0;
 dina1=0;
 dina2=0;
 dina3=0;
 dina4=0;
 dina5=0;
 dina6=0;
 dina7=0;
 dina8=0;
 dina9=0;
 dina10=0;
 dina11=0;
 dina12=0;
 dina13=0;
 dina14=0;
 dina15=0;
 dinb0=0;
 dinb1=0;
 dinb2=0;
 dinb3=0;
 dinb4=0;
 dinb5=0;
 dinb6=0;
 dinb7=0;
 dinb8=0;
 dinb9=0;
 dinb10=0;
 dinb11=0;
 dinb12=0;
 dinb13=0;
 dinb14=0;
 dinb15=0;
 addra0=0;
 addra1=0;
 addra2=0;
 addra3=0;
 addra4=0;
 addra5=0;
 addra6=0;
 addra7=0;
 addra8=0;
 addra9=0;
 addra10=0;
 addra11=0;
 addra12=0;
 addra13=0;
 addra14=0;
 addra15=0;
 addrb0=0;
 addrb1=0;
 addrb2=0;
 addrb3=0;
 addrb4=0;
 addrb5=0;
 addrb6=0;
 addrb7=0;
 addrb8=0;
 addrb9=0;
 addrb10=0;
 addrb11=0;
 addrb12=0;
 addrb13=0;
 addrb14=0;
 addrb15=0;
//
ena0=1;
ena1=1;
ena2=1;
ena3=1;
ena4=1;
ena5=1;
ena6=1;
ena7=1;
ena8=1;
ena9=1;
ena10=1;
ena11=1;
ena12=1;
ena13=1;
ena14=1;
ena15=1;
enb0=1;
enb1=1;
enb2=1;
enb3=1;
enb4=1;
enb5=1;
enb6=1;
enb7=1;
enb8=1;
enb9=1;
enb10=1;
enb11=1;
enb12=1;
enb13=1;
enb14=1;
enb15=1;
wea0=0;
wea1=0;
wea2=0;
wea3=0;
wea4=0;
wea5=0;
wea6=0;
wea7=0;
wea8=0;
wea9=0;
wea10=0;
wea11=0;
wea12=0;
wea13=0;
wea14=0;
wea15=0;
web0=0;
web1=0;
web2=0;
web3=0;
web4=0;
web5=0;
web6=0;
web7=0;
web8=0;
web9=0;
web10=0;
web11=0;
web12=0;
web13=0;
web14=0;
web15=0;
done=0;
end
endcase
end 

endmodule
