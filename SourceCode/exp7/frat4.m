function frat4(k) %显示等边三角形迭代k次后的图形
  A=[cos(pi/3) -sin(pi/3);sin(pi/3) cos(pi/3)]; %用于计算新的结点
  p=[0 0;10 0]; %存放结点坐标
  n=1; %存放线段的数量，初始值为1
  for s=1:k %实现迭代过程，计算所有的结点的坐标
  j=0;
  for i=1:n %每条边计算一次
  q1=p(i,:); %目前线段的起点坐标
  q2=p(i+1,:); %目前线段的终点坐标
  d=(q2-q1)/3;
  j=j+1;a(j,:)=q1; %原起点存入a
  j=j+1;a(j,:)=q1+d; %新1点存入a
  j=j+1;a(j,:)=q1+d+d*A'; %新2点存入a
  j=j+1;a(j,:)=q1+2*d; %新3点存入a
  end %原终点作为下条线段的起点，在迭代下条线段时存入a
  n=4*n; %全部线段迭代一次后，线段数量乘4
  clear p %清空p ，注意：最后一个终点q2不在a中
  p=[a;q2]; %重新装载本次迭代后的全部结点
  end
  plot(p(:,1),p(:,2)) ;%显示各结点的连线图
  fill(p(:,1),p(:,2),'k') %填充颜色
  set(findobj(gcf,'type','patch'),'edgecolor','none') %不显示边界
  axis off %不要坐标轴
  axis equal