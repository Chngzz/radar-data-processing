clear all;
load('./output/newOutput_zz.mat');
x1 = []
y1 = []
z1 = []
for i = 1:48
   i
   aa=xyz_all{1,i};
   bb = abs(aa(:,4))>0;
   cc = aa(bb, :);
    x1 = [x1;aa(:,1)];
    y1 = [y1;aa(:,2)];
    z1 = [z1;aa(:,3)];

    scatter3(aa(:,1),aa(:,2),aa(:,3),20,'.');

%     scatter(-aa(:,1), aa(:,2), 50, '.');
%     axis equal;
    xlim([-10,10]);

    ylim([0,10]);
    zlim([-5, 5]);
% % 
    pause(0.2);
end
% z1 = -z1;

scatter(-x1, y1,  50, '.');
scatter3(-x1, y1, z1, 30, '.');
axis equal;
xlim([-20,20]);
ylim([0, 80]);
zlim([-2,15]);

grid on;

% M = mean(brushedData)
