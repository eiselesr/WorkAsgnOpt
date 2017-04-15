simOut = sim('qNetwork2','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');
outputs = simOut.get('yout');

x1=(outputs.get('Server3').Values);
x2=(outputs.get('Server4').Values);
x3=(outputs.get('ED1').Values);
x4=(outputs.get('ED2').Values);
plot(x1); hold on;
plot(x2); 
plot(x3); 
plot(x4);
title('Utilization')
xlabel('Time'); legend('Server3','Server4', 'ED1', 'ED2')
ylabel('Server Utilization')