`timescale 1 ms/ 1 ms

module led_run();

    reg CLK;
	 reg RSTn;
	 
	 /*******************************/
    initial                                                
    begin      
	CLK = 1; 
        RSTn = 0; #10; RSTn = 1;
	     CLK = 1; forever #1 CLK = ~CLK;
		  
	 end
	 
	 wire LED0_Out;
	 
	 led0_module U1
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED0_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED1_Out;
	 
	 led1_module U2
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED1_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED2_Out;
	 
	 led2_module U3
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED2_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED3_Out;
	 
	 led3_module U4
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED3_Out )
	 );
	 
	 /**********************************/

	 /***********************************/

endmodule
