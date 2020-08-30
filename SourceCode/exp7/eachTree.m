function [new_origin, new_ending] = eachTree(origin, ending,times,current)
    %eachTree-eachTree
    %
    % Syntax: eachTree(origin,ending)
    %
    %
    % 对一条竖向线段，在其三分之一分点处，向左上方向画一条线段，在其三分之二分点处，向右上方向画一条线段，线段长度都是原来的三分之一，夹角都为30°


    trans_vec = ending - origin;
    n1 = ending / 3 + 2/3 * origin;
    n2 = 2/3 * ending + origin / 3;
    p1 = n1 + 1/3 * abs(trans_vec) * exp(i * (angle(trans_vec) + pi / 6));
    p2 = n2 + 1/3 * abs(trans_vec) * exp(i * (angle(trans_vec) - pi / 6));
    plot([origin, ending],'LineWidth',2-1/times*current); hold on;
    plot([n1, p1],'LineWidth',2-1/times*current); hold on;
    plot([n2, p2],'LineWidth',2-1/times*current); hold on;
    new_origin = [n1, n2];
    new_ending = [p1, p2];
    axis equal
end
