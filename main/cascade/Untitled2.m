x1 = []
y1 = []
z1 = []
for i = 1:48
   aa=xyz_all{1,i};
   bb = abs(aa(:,4))>0;
   cc = aa(bb, :);
    x1 = [x1;aa(:,1)];
    y1 = [y1;aa(:,2)];
    z1 = [z1;aa(:,3)];

%     scatter3(aa(:,1),aa(:,2),aa(:,3),20,'.');
    scatter(-aa(:,1), aa(:,2), 100, '.');
    xlim([-40,40]);
    ylim([0, 150]);
    zlim([-1,1]);
    pause(0.2);
end
scatter(-x1,y1, 100) 
angg = []
ran = []
for i = 1: length(angleEst)
    ang = angleEst(i).angles(1:2);
    angg = [angg, ang];
    ran = [ran, angleEst(i).range];
end
sort(angg(1,:))  
    