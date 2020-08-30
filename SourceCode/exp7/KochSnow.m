function KochSnow(length, k)
    %KochSnow - KochSnow分形图
    %
    % Syntax: KochSnow(length,k)
    %
    % 输入参数length为三角形边长，k为迭代次数

    % 依次画三角形的三条边
    for myedge = 1:3

        switch myedge
            case 1% 三角形的第一条边的起点终点
                p = [0, 0; 0.5 * length, sqrt(3) / 2 * length];
            case 2% 三角形的第二条边的起点终点
                p = [0.5 * length, sqrt(3) / 2 * length; length, 0];
            case 3% 三角形的第三条边的起点终点
                p = [length, 0; 0, 0];
        end

        n = 1; %存放线段的数量，初始值为1
        A = [cos(pi / 3), -sin(pi / 3); sin(pi / 3), cos(pi / 3)]; %用于计算新的结点

        for s = 1:k%实现迭代过程，计算所有的结点的坐标
            j = 0; %
            %以下根据线段两个结点的坐标，计算迭代后它们之间增加的三个
            %结点的坐标，并且将这些点的坐标按次序存暂时放到r中
            for i = 1:n%每条边计算一次
                q1 = p(i, :); %目前线段的起点坐标
                q2 = p(i + 1, :); %目前线段的终点坐标
                d = (q2 - q1) / 3; %
                j = j + 1; r(j, :) = q1; %原起点存入r
                j = j + 1; r(j, :) = q1 + d; %新1点存入r
                j = j + 1; r(j, :) = q1 + d + d * A'; %新2点存入r
                j = j + 1; r(j, :) = q1 + 2 * d; %新3点存入r
            end %原终点作为下条线段的起点，在迭代下条线段时存入r

            n = 4 * n; %全部线段迭代一次后，线段数量乘4
            clear p%清空p ，注意：最后一个终点q2不在r中
            p = [r; q2]; %重新装载本次迭代后的全部结点
        end

        clear r
        % 储存各边的结点数据
        switch myedge
            case 1
                myedge_1 = p;
            case 2
                myedge_2 = p;
            case 3
                myedge_3 = p;
        end

    end

    wholeEdge = [myedge_1; myedge_2; myedge_3];
    plot(wholeEdge(:, 1), wholeEdge(:, 2), 'LineWidth', 2, 'Color', '#3a539b')%显示各结点的连线图
    ax = gca;
    ax.Title.String = ['Koch 雪花 迭代', num2str(k), '次'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName = '微软雅黑';
    ax.YAxis.Visible =  'off'; % 设置y轴不可见
    ax.XAxis.Visible =  'off'; % 默认属性 on 表明可见
    axis equal%各坐标轴同比例
end
