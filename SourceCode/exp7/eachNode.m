function [new_ori, new_ending] = eachNode(deflection_angle, origin, ending, nowInex, mostWidth, iterations)
    %myFun - Description
    %
    % Syntax: [ori,ending] = eachNode()
    %
    % Long description

    trans_vec = ending - origin;
    p1 = (sqrt(5) - 1) / 2 * abs(trans_vec) * exp(i * (deflection_angle + angle(trans_vec))) + origin;
    p2 = (sqrt(5) - 1) / 2 * abs(trans_vec) * exp(i * (-deflection_angle + angle(trans_vec))) + origin;
    plot([origin, p1],  'linewidth', mostWidth - nowInex * (mostWidth - 1) / iterations); hold on;
    plot([origin, p2],  'linewidth', mostWidth - nowInex * (mostWidth - 1) / iterations); hold on;

    new_ori = [p1, p2];
    new_ending = [origin, origin];
end
