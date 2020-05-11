// testbench85.v
//��ѧ��Ϊ3112005932ʱ��
//A������ȡѧ�Ŵ����ҵ�����λ��������3,1,0,5,3
//B������ȡѧ�Ŵ����ҵ�ż��λ��������1,2,0,9,2
`timescale 1ns/10ps
module testbench();
reg[3:0]A,B;
reg IAGB,IASB,IAEB;
wire QAGB,QASB,QAEB;


HC85 u1(A,B,QAGB,QASB,QAEB,IAGB,IASB,IAEB);
initial
 begin
 A=0;B=0;
 IAGB=1;IASB=1;IAEB=1;
 #20 
  A=3;B=1;
 
 #20 
  A=1;B=2;

 #20
  A=0;B=0;
  IAGB=0;IASB=0;IAEB=0;
 
 #20 IAGB=0;IASB=0;IAEB=1;
 #20 IAGB=1;IASB=0;IAEB=0;
 #20 IAGB=1;IASB=0;IAEB=1;
 
 #20 IAGB=0;IASB=1;IAEB=0;
 #20 IAGB=0;IASB=1;IAEB=1;
 #20 IAGB=1;IASB=1;IAEB=0;
 #20 IAGB=1;IASB=1;IAEB=1;


 #20
  A=5;B=9;
 
 #20
  A=3;B=2;
 
 end
endmodule