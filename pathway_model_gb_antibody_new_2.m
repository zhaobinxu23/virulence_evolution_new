function F=pathway_model_gb_antibody_new_2(t,x,para)



if x(1) < 0
    F(1,1) = 0;
else
F(1,1)=-para(1)*x(1)+para(2)*x(2)*x(3)-para(3)*x(1)-para(4)*x(1)*x(6)+para(5)*x(8);
end

if x(2) < 0
    F(2,1) = 0;
else
F(2,1)=para(1)*x(1)-para(2)*x(2)*x(3)-para(6)*x(2)+para(18)*x(11)-para(17)*x(2)*x(4)+para(19)*x(12);
end

if x(3) < 0
    F(3,1) = 0;
else
F(3,1)=para(1)*x(1)-para(2)*x(2)*x(3)-para(7)*x(3)+para(8)*x(2)-para(4)*x(3)*x(6)+para(5)*x(9);
end

if x(4) < 0
    F(4,1) = 0;
else
F(4,1)=para(9)*x(2)-para(10)*x(4)-para(4)*x(4)*x(7)+para(5)*x(10)+para(18)*x(11)-para(17)*x(2)*x(4)+para(22)*x(12)-para(21)*x(5)*x(4);
end

if x(5) < 0
    F(5,1) = 0;
else
F(5,1) = para(22)*x(12)-para(21)*x(5)*x(4)+para(20)*x(11)-para(14)*x(5);

end

if x(6) < 0
    F(6,1) = 0;
else  
F(6,1) =  -para(4)*x(1)*x(6)+para(5)*x(8)-para(4)*x(3)*x(6)+para(5)*x(9)+para(15)*x(8)+para(15)*x(9);  %% 
 
end

if x(7) < 0
    F(7,1) = 0;
else
F(7,1)=-para(4)*x(11)*x(7)+para(5)*x(13)-para(4)*x(12)*x(7)+para(5)*x(14)-para(4)*x(4)*x(7)+para(5)*x(10)+para(15)*x(10)+ para(15)*x(13)+para(15)*x(14);%% 
end

if x(8) < 0
    F(8,1) = 0;
else

F(8,1)=para(4)*x(1)*x(6)-para(5)*x(8)-para(16)*x(8);
end

if x(9) < 0
    F(9,1) = 0;
else

F(9,1)=para(4)*x(3)*x(6)-para(5)*x(9)-para(16)*x(9);
end

if x(10) < 0
    F(10,1) =  0;
else

F(10,1)=para(4)*x(4)*x(7)-para(5)*x(10)-para(16)*x(10);
end

if x(11) < 0
    F(11,1) =  0;
else

F(11,1)=-para(4)*x(11)*x(7)+para(5)*x(13)+para(17)*x(2)*x(4)-para(18)*x(11);
end

if x(12) < 0
    F(12,1) =  0;
else

F(12,1)=-para(4)*x(12)*x(7)+para(5)*x(14)+para(21)*x(5)*x(4)-para(22)*x(12);
end

if x(13) < 0
    F(13,1) =  0;
else

F(13,1)=para(4)*x(11)*x(7)-para(5)*x(13)-para(16)*x(13);
end

if x(14) < 0
    F(14,1) =  0;
else

F(14,1)=para(4)*x(12)*x(7)-para(5)*x(14)-para(16)*x(14);
end

 
end