function tree(height, times)
    %tree - 画树
    %
    % Syntax: tree(初始高度,迭代次数)
    %
    % 对一条竖向线段，在其三分之一分点处，向左上方向画一条线段，在其三分之二分点处，向右上方向画一条线段，线段长度都是原来的三分之一，夹角都为30°

    [ori, z] = eachTree(0, height * i, times, 0);
    new_ori = [];
    new_z = [];

    for k = 1:times

        for j = 1:length(ori)
            [p, q] = eachTree(ori(j), z(j), times, k);
            new_ori = cat(2, new_ori, p);
            new_z = cat(2, new_z, q);
        end

        ori = new_ori;
        z = new_z;
    end
    plot(x,y,'linewidth',
    )
    ax = gca;
    ax.Title.String = ['模拟树木花草分形图 迭代', num2str(times),  '次'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName =  '微软雅黑';
    ax.YAxis.Visible =  'off'; % 设置y轴不可见
    ax.XAxis.Visible =  'off'; % 设置x轴不可见
end