// 5932_74HC153.v
module HC153(I1,I2,S1,S2,E1N,E2N,Y1,Y2);
input[0:3]I1;input[0:3]I2;
input S1,S2;
input E1N,E2N;
output Y1,Y2;
reg Y1,Y2;

always@(I1 or I2 or S1 or S2 or E1N or E2N)
begin:local
 if(E1N)
  Y1=0;
 else
  begin
   case({S1,S2})
    0:Y1=I1[0];
    1:Y1=I1[1];
    2:Y1=I1[2];
    3:Y1=I1[3];
    default:Y1=1'bx;
   endcase
  end

 if(E2N)
  Y2=0;
 else
  begin
   case({S1,S2})
    0:Y2=I2[0];
    1:Y2=I2[1];
    2:Y2=I2[2];
    3:Y2=I2[3];
    default:Y2=1'bx;
   endcase
  end
 end
endmodule