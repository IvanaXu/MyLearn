// 5932_74HC85.v
module HC85(A,B,QAGB,QASB,QAEB,IAGB,IASB,IAEB);
input[3:0]A,B;
input IAGB,IASB,IAEB;
output QAGB,QASB,QAEB;
reg QAGB,QASB,QAEB;

always@(A or B or IAGB or IASB or IAEB)
 begin
  
  if(A>B)
   begin 
    QAGB=1;QASB=0;QAEB=0;
   end
  
  else if(A<B)
   begin 
    QAGB=0;QASB=1;QAEB=0;
   end
  
  else if(IAGB&!IASB&!IAEB)
   begin 
    QAGB=1;QASB=0;QAEB=0;
   end
  
  else if(!IAGB&IASB&!IAEB)
   begin 
    QAGB=0;QASB=1;QAEB=0;
   end
    
  else if(IAEB)
   begin 
    QAGB=1;QASB=0;QAEB=0;
   end
  
  else if(IAGB&IASB&!IAEB)
   begin 
    QAGB=0;QASB=0;QAEB=0;
   end
  
  else if(!IAGB&!IASB&!IAEB)
   begin 
    QAGB=1;QASB=1;QAEB=0;
   end
 end
endmodule

    