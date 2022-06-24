% parametersetting; 这个模型要解释为什么可能产生慢性感染 chronic infection
clc
clear


x0(1) = 10;% virus_particle
x0(2) = 0; % gRNA(+)
x0(3) = 0; % N
x0(4) = 0;% NSP
x0(5) = 0; % gRNA(-)
x0(6) = 50; % antibody_1 level
x0(7) = 50; % antibody_2 level
x0(8) = 0; % virus-antibody complex
x0(9) = 0; % N-antibody complex
x0(10) = 0; % NSP-antibody complex
x0(11) = 0;% initial gRNA(+)-NSP complex
x0(12) = 0;% initial gRNA(-)-NSP complex
x0(13) = 0;% initial gRNA(+)-NSP-antibody complex
x0(14) = 0;% initial gRNA(-)-NSP-antibody complex

para(1) = 0.5; 
para(2) = 0.4/5e6; 
para(3) = 0.06; 
para(4) = 5.0e-4;
para(5) = 0;
para(6) = 0.2; 
para(7) = 0.023; 
para(8) = 45360/1200/456; 
para(9) = 45360/21000; 
para(10) = 0.069;
% para(11) = 0.5;
% para(12) = 100;
% para(13) = 0.5;
para(14) = 0.2; 
para(15) = 1.0; 
para(16) = 0.5; 
para(17) = 5.0e-4;
para(18) = 0.1;
para(19) = 0.91;
para(20) = 0.91;
para(21) = 1e-2;
para(22) = 0.1;

[t,x]=ode15s(@pathway_model_gb_antibody_new_2,[0 200],x0,[],para);


plot(t,x(:,1),'linewidth',2);%% virus particles
hold on
% zzz = x(:,6)+ x(:,7);
% plot(t,zzz,'linewidth',4);%% 病毒颗粒
% hold on



plot(t,x(:,2),'linewidth',2);%% gRNA+
hold on
plot(t,x(:,5),'linewidth',2);%% gRNA-
hold on

% plot(t,x(:,10),'linewidth',2);%% gRNA-
% hold on
% 
% plot(t,x(:,13),'linewidth',2);%% gRNA-
% hold on
% 
% plot(t,x(:,14),'linewidth',2);%% gRNA-
% hold on
% % plot(t,x(:,3),'linewidth',2);%% N
% % hold on
% plot(t,x(:,3),'linewidth',2);%% NSP
% hold on
% % % 
% plot(t,x(:,7),'linewidth',2);%% ANTIBODY1
% hold on
% plot(t,x(:,7),'linewidth',2);%% ANTIBODY2
% hold on
% yyy = x(:,2)./x(:,5);

% zzz = x(:,6)+ x(:,7);
% plot(t,zzz,'linewidth',4);%% 病毒颗粒
% hold on
% plot(t,x(:,3),'linewidth',2);%% 病毒颗粒
% hold on

% para(2) = 00.4/5e10*1000;  
% 
% [t,x]=ode15s(@pathway_model_gb_antibody_new,[0 150],x0,[],para);
% 
% 
% 
% 
% plot(t,x(:,1),'linewidth',2);%% 病毒颗粒
% hold on
% zzz = x(:,6)+ x(:,7);
% plot(t,zzz,'linewidth',4);%% 病毒颗粒
% hold on
% 
% 
