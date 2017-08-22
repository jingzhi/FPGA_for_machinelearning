
module VGA_Controller_trig(	//	Host Side
        input           iHS, 
        input           iVS,
        input		 [9:0]iRed,
        input		 [9:0]iGreen,
        input		 [9:0]iBlue,
        output	reg 		oRequest,
        output	reg	[9:0]	oVGA_R,
        output	reg	[9:0]	oVGA_G,
        output	reg	[9:0]	oVGA_B,
        output				oVGA_H_SYNC,
        output				oVGA_V_SYNC,
        output				oVGA_SYNC,
        output				oVGA_BLANK,
        output				oTR_V ,
        output				oTR_H ,
        
        //	Control Signal
        input				iCLK,
        input				iRST_N,
        output          oVGA_CLOCK,
        output reg[12:0]H_Cont_,
        output reg[12:0]V_Cont_,
		  
		  //output wire [31:0] indexdata,
		  output wire [31:0] countdata,
		  output wire		[7:0]	xdiv8,	
		  output wire		[7:0]	ydiv8,
		  output wire		[12:0] pixel_contdiv8,
		  output wire		[10:0]	x,	
		  output wire		[10:0]	y		

);
`include "VGA_Param.h"

//=============================================================================
// REG/WIRE declarations
//=============================================================================

wire		[9:0]	mVGA_R;
wire		[9:0]	mVGA_G;
wire		[9:0]	mVGA_B;
reg				mVGA_H_SYNC;
reg				mVGA_V_SYNC;
wire				mVGA_SYNC;
wire				mVGA_BLANK;
wire	  [12:0]	v_mask;
reg            rVS ;
reg            rHS ;
reg            rVGA_H_SYNC ;
reg		[12:0]H_Cont;
reg		[12:0]V_Cont;
wire           IN_V_RTR ;
wire           IN_H_RTR ; 
wire     [15:0]H_T_TOL ;
wire           oTR_V_C ; 
wire           oTR_V_N ; 
wire     [7:0 ]H_OFF ; 
   
//--	
assign  oVGA_CLOCK	 = iCLK ; 
assign  indexdata=pixel_contdiv8%60;
assign countdata=(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT)
						? dataout:0;
//assign  countdata={24'b0,dataout};
//assign  indexdata=(ydiv8==59)? {24'b0,xdiv8}:32'b0;
//assign  countdata=(ydiv8==59)? {24'b0,dataout}:32'b0;
reg [31:0] dataout;
//--
always @(posedge iCLK ) begin 
     H_Cont_     <= H_Cont;
     V_Cont_     <= V_Cont;
     rVS         <= iVS ; 
     rHS         <= iHS ; 
	  rVGA_H_SYNC <= mVGA_H_SYNC ; 
end 

//--H_RECNT  
RE_COUNTER_H    hcn (  .CLK ( iCLK), .CLR ( oTR_H),    .TOL (H_T_TOL) , .R_TR()  );
RE_COUNTER_HS   hcs (  .CLK ( iCLK), .CLR ( oTR_H),    .TOL () ,        .R_TR( IN_H_RTR) );
RE_COUNTER_V    vcn (  .CLK ( iCLK), .CLR ( oTR_V_N ), .TOL () ,        .R_TR( IN_V_RTR) );

//-----
assign  oTR_V_C  = ( !rVGA_H_SYNC & mVGA_H_SYNC  ) ?1:0 ;  
assign  oTR_V    = ( !rVS & iVS  )?1 :0 ; 
assign  oTR_V_N  = (  rVS & ~iVS )?1 :0 ; 
assign  oTR_H    = (  rHS & !iHS )?1 :0 ; 
		
//	Internal Registers and Wires

assign v_mask = 13'd0;
//

//=====pingpong threshold===
wire		[9:0]	ppVGA_R;
wire		[9:0]	ppVGA_G;
wire		[9:0]	ppVGA_B;
wire colormatch;
reg precolormatch;
reg preprecolormatch;
assign colormatch=iRed >= 160 && iRed < 255 && iBlue < 120 && iGreen > 80;
assign	ppVGA_R = ( colormatch) ? 255 : iRed;
assign	ppVGA_G = ( colormatch) ? 0 : iGreen;
assign	ppVGA_B = ( colormatch) ? 0 : iBlue;
//======x,y coordinate======


reg		[7:0]	prexdiv8;	
reg		[7:0]	preydiv8;
reg		[12:0]	prepixel_contdiv8;			
wire [18:0] pixel_cont;
assign	x	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT)
						?	H_Cont-X_START+1	:	0;
assign	y	=	(	V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	V_Cont-Y_START+1	:	0;
assign xdiv8={x[10:3]};
assign ydiv8={y[10:3]};
assign pixel_cont=(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT)
						? x+(y-1)*640:0;
assign pixel_contdiv8=(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT)
						? xdiv8+(ydiv8-1)*80:0;
//============output 1d array========
reg 	[6:0] matchCount[0:80];

////////////////////////////////////////////////////////

assign	mVGA_BLANK	=	mVGA_H_SYNC & mVGA_V_SYNC;
assign	mVGA_SYNC	=	1'b0;

assign	mVGA_R	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iRed	:	0;
assign	mVGA_G	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iGreen	:	0;
assign	mVGA_B	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iBlue	:	0;

//assign oVGA_R      = mVGA_R;
//assign oVGA_G      = mVGA_G;
//assign oVGA_B     = mVGA_B;
assign oVGA_BLANK  = mVGA_BLANK;
assign oVGA_SYNC   = mVGA_SYNC;
assign oVGA_H_SYNC = mVGA_H_SYNC;
assign oVGA_V_SYNC = mVGA_V_SYNC;				

//REV_H hg( . result(H_OFF) );
assign H_OFF =0; 

initial begin 
				matchCount[0]<=0;matchCount[20]<=0;matchCount[40]<=0;matchCount[60]<=0;matchCount[80]<=0;
				matchCount[1]<=0;matchCount[21]<=0;matchCount[41]<=0;matchCount[61]<=0;
				matchCount[2]<=0;matchCount[22]<=0;matchCount[42]<=0;matchCount[62]<=0;
				matchCount[3]<=0;matchCount[23]<=0;matchCount[43]<=0;matchCount[63]<=0;
				matchCount[4]<=0;matchCount[24]<=0;matchCount[44]<=0;matchCount[64]<=0;
				matchCount[5]<=0;matchCount[25]<=0;matchCount[45]<=0;matchCount[65]<=0;
				matchCount[6]<=0;matchCount[26]<=0;matchCount[46]<=0;matchCount[66]<=0;
				matchCount[7]<=0;matchCount[27]<=0;matchCount[47]<=0;matchCount[67]<=0;
				matchCount[8]<=0;matchCount[28]<=0;matchCount[48]<=0;matchCount[68]<=0;
				matchCount[9]<=0;matchCount[29]<=0;matchCount[49]<=0;matchCount[69]<=0;
				matchCount[10]<=0;matchCount[30]<=0;matchCount[50]<=0;matchCount[70]<=0;
				matchCount[11]<=0;matchCount[31]<=0;matchCount[51]<=0;matchCount[71]<=0;
				matchCount[12]<=0;matchCount[32]<=0;matchCount[52]<=0;matchCount[72]<=0;
				matchCount[13]<=0;matchCount[33]<=0;matchCount[53]<=0;matchCount[73]<=0;
				matchCount[14]<=0;matchCount[34]<=0;matchCount[54]<=0;matchCount[74]<=0;
				matchCount[15]<=0;matchCount[35]<=0;matchCount[55]<=0;matchCount[75]<=0;
				matchCount[16]<=0;matchCount[36]<=0;matchCount[56]<=0;matchCount[76]<=0;
				matchCount[17]<=0;matchCount[37]<=0;matchCount[57]<=0;matchCount[77]<=0;
				matchCount[18]<=0;matchCount[38]<=0;matchCount[58]<=0;matchCount[78]<=0;
				matchCount[19]<=0;matchCount[39]<=0;matchCount[59]<=0;matchCount[79]<=0;
				dataout<=0;
end

//match count
	
always@(posedge iCLK or negedge iRST_N)
	begin
		if (!iRST_N)
			begin
				oVGA_R <= 0;
				oVGA_G <= 0;
            oVGA_B <= 0;
				matchCount[0]<=0;matchCount[20]<=0;matchCount[40]<=0;matchCount[60]<=0;matchCount[80]<=0;
				matchCount[1]<=0;matchCount[21]<=0;matchCount[41]<=0;matchCount[61]<=0;
				matchCount[2]<=0;matchCount[22]<=0;matchCount[42]<=0;matchCount[62]<=0;
				matchCount[3]<=0;matchCount[23]<=0;matchCount[43]<=0;matchCount[63]<=0;
				matchCount[4]<=0;matchCount[24]<=0;matchCount[44]<=0;matchCount[64]<=0;
				matchCount[5]<=0;matchCount[25]<=0;matchCount[45]<=0;matchCount[65]<=0;
				matchCount[6]<=0;matchCount[26]<=0;matchCount[46]<=0;matchCount[66]<=0;
				matchCount[7]<=0;matchCount[27]<=0;matchCount[47]<=0;matchCount[67]<=0;
				matchCount[8]<=0;matchCount[28]<=0;matchCount[48]<=0;matchCount[68]<=0;
				matchCount[9]<=0;matchCount[29]<=0;matchCount[49]<=0;matchCount[69]<=0;
				matchCount[10]<=0;matchCount[30]<=0;matchCount[50]<=0;matchCount[70]<=0;
				matchCount[11]<=0;matchCount[31]<=0;matchCount[51]<=0;matchCount[71]<=0;
				matchCount[12]<=0;matchCount[32]<=0;matchCount[52]<=0;matchCount[72]<=0;
				matchCount[13]<=0;matchCount[33]<=0;matchCount[53]<=0;matchCount[73]<=0;
				matchCount[14]<=0;matchCount[34]<=0;matchCount[54]<=0;matchCount[74]<=0;
				matchCount[15]<=0;matchCount[35]<=0;matchCount[55]<=0;matchCount[75]<=0;
				matchCount[16]<=0;matchCount[36]<=0;matchCount[56]<=0;matchCount[76]<=0;
				matchCount[17]<=0;matchCount[37]<=0;matchCount[57]<=0;matchCount[77]<=0;
				matchCount[18]<=0;matchCount[38]<=0;matchCount[58]<=0;matchCount[78]<=0;
				matchCount[19]<=0;matchCount[39]<=0;matchCount[59]<=0;matchCount[79]<=0;
			end
		else
			begin
				prepixel_contdiv8<=pixel_contdiv8;
				prexdiv8<=xdiv8;
				preydiv8<=ydiv8;
				//=====processing====
				if(x%8==0 && y%8==0)begin
						precolormatch<=colormatch;
						preprecolormatch<=precolormatch;						
					if(colormatch&&precolormatch&&preprecolormatch)begin
						matchCount[xdiv8]<=matchCount[xdiv8]+1;
					end
				end
				if(ydiv8==0)begin
				matchCount[0]<=0;matchCount[20]<=0;matchCount[40]<=0;matchCount[60]<=0;matchCount[80]<=0;
				matchCount[1]<=0;matchCount[21]<=0;matchCount[41]<=0;matchCount[61]<=0;
				matchCount[2]<=0;matchCount[22]<=0;matchCount[42]<=0;matchCount[62]<=0;
				matchCount[3]<=0;matchCount[23]<=0;matchCount[43]<=0;matchCount[63]<=0;
				matchCount[4]<=0;matchCount[24]<=0;matchCount[44]<=0;matchCount[64]<=0;
				matchCount[5]<=0;matchCount[25]<=0;matchCount[45]<=0;matchCount[65]<=0;
				matchCount[6]<=0;matchCount[26]<=0;matchCount[46]<=0;matchCount[66]<=0;
				matchCount[7]<=0;matchCount[27]<=0;matchCount[47]<=0;matchCount[67]<=0;
				matchCount[8]<=0;matchCount[28]<=0;matchCount[48]<=0;matchCount[68]<=0;
				matchCount[9]<=0;matchCount[29]<=0;matchCount[49]<=0;matchCount[69]<=0;
				matchCount[10]<=0;matchCount[30]<=0;matchCount[50]<=0;matchCount[70]<=0;
				matchCount[11]<=0;matchCount[31]<=0;matchCount[51]<=0;matchCount[71]<=0;
				matchCount[12]<=0;matchCount[32]<=0;matchCount[52]<=0;matchCount[72]<=0;
				matchCount[13]<=0;matchCount[33]<=0;matchCount[53]<=0;matchCount[73]<=0;
				matchCount[14]<=0;matchCount[34]<=0;matchCount[54]<=0;matchCount[74]<=0;
				matchCount[15]<=0;matchCount[35]<=0;matchCount[55]<=0;matchCount[75]<=0;
				matchCount[16]<=0;matchCount[36]<=0;matchCount[56]<=0;matchCount[76]<=0;
				matchCount[17]<=0;matchCount[37]<=0;matchCount[57]<=0;matchCount[77]<=0;
				matchCount[18]<=0;matchCount[38]<=0;matchCount[58]<=0;matchCount[78]<=0;
				matchCount[19]<=0;matchCount[39]<=0;matchCount[59]<=0;matchCount[79]<=0;
				end
				//=========output====
				if(ydiv8==59)begin
				dataout<=matchCount[xdiv8];
				if(matchCount[xdiv8]==0) begin
						oVGA_R <= mVGA_R;//,2'b00};
						oVGA_G <= mVGA_G;//,2'b00};
						oVGA_B <= mVGA_B;//,2'b00};					
					end
					else if(matchCount[xdiv8]<=4)begin
						oVGA_R <= 179;//,2'b00};
						oVGA_G <= 255;//,2'b00};
						oVGA_B <= 0;//,2'b00};					
					end
					else if(matchCount[xdiv8]<=8)begin
						oVGA_R <= 247;//,2'b00};
						oVGA_G <= 253;//,2'b00};
						oVGA_B <= 2;//,2'b00};					
					end
					else if(matchCount[xdiv8]<=12)begin
						oVGA_R <= 251;//,2'b00};
						oVGA_G <= 152;//,2'b00};
						oVGA_B <= 3;//,2'b00};					
					end
					else if(matchCount[xdiv8]<=13)begin
						oVGA_R <= 251;//,2'b00};
						oVGA_G <= 60;//,2'b00};
						oVGA_B <= 4;//,2'b00};					
					end
					else if(matchCount[xdiv8]<=14)begin
						oVGA_R <= 255;//,2'b00};
						oVGA_G <= 30;//,2'b00};
						oVGA_B <= 3;//,2'b00};					
					end
					else if(matchCount[xdiv8]>=15)begin
						oVGA_R <= 255;//,2'b00};
						oVGA_G <= 0;//,2'b00};
						oVGA_B <= 0;//,2'b00};					
					end			
				end 
				else begin
				oVGA_R<=mVGA_R;
				oVGA_G<=mVGA_G;
				oVGA_B<=mVGA_B;
				end
			end               
	end

//	Pixel LUT Address Generator

always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	oRequest	<=	0;
	else
	begin
		if(	
		      ( H_Cont>= X_START+H_OFF &&  H_Cont<X_START+H_SYNC_ACT+H_OFF)  &&
			   ( V_Cont>= Y_START     &&  V_Cont<Y_START+V_SYNC_ACT  ) 
		   )
		oRequest	<=	1;
		else
		oRequest	<=	0;
	end
end


//	H_Sync Generator, Ref. 25.175 MHz Clock
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
		H_Cont		<=	0;
		mVGA_H_SYNC	<=	0;
	end
	else
	begin
		//	H_Sync Counter
		if ( IN_H_RTR )   
		  H_Cont	<=	0; 
		else if( H_Cont < H_T_TOL )  // H_SYNC_TOTAL ) 
		  H_Cont	<=	H_Cont+1;
		else H_Cont	<=	0;
		//	H_Sync Generator
		mVGA_H_SYNC	<=	( H_Cont < H_SYNC_CYC )?0 :1 ; 
	end
end

//	V_Sync Generator, Ref. H_Sync
always@( posedge iCLK or negedge iRST_N )
begin
	if(!iRST_N)
	begin
		V_Cont		<=	0;
		mVGA_V_SYNC	<=	0;
	end
	else
	begin
		//	When H_Sync Re-start
		     if  ( IN_V_RTR ) V_Cont <=	0;  
		else if  (( oTR_V_C ) && ( V_Cont < V_SYNC_TOTAL ) )  V_Cont	<=	V_Cont+1;
           
		//	V_Sync Generator
	 	
	     mVGA_V_SYNC <= (	V_Cont < V_SYNC_CYC )?0:1  ;  
			
	end
end

endmodule
