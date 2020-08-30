function myGraphics(mylength, deflection_angle, times, mostWidth)
    %myGraphics - Description
    %
    % Syntax: myGraphics(mylength,deflection_angle,times,mostWidth)
    %
    % mylength:初始长度
    % deflection_angle：偏转角
    % times：迭代次数
    % mostWidth：最粗的线宽

    input_origin = i;
    input_ending = mylength * i;
    newOrigin = [];
    newEnding = [];
    origin = [input_origin];
    ending = [input_ending];

    % ==== 开始套娃 ====
    for k = 1:times
        newOrigin = [];
        newEnding = [];

        for j = 1:length(origin)
            [p, q] = eachNode(deflection_angle, origin(j), ending(j), k, mostWidth, times);
            newOrigin = [newOrigin, p];
            newEnding = [newEnding, q];
        end

        origin = newOrigin;
        ending = newEnding;
    end

    axis equal%各坐标轴同比例
    ax = gca;
    ax.Title.String = ['【我的图形】 偏转角：',num2str(rad2deg(deflection_angle)), '°   迭代', num2str(times), '次'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName = '微软雅黑';
    ax.YAxis.Visible =  'off'; % 设置y轴不可见
    ax.XAxis.Visible =  'off'; % 设置x轴不可见
end
