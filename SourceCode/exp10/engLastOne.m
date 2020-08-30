function avrPoints = engLastOne(n, left,wrong)
    %engLastOne - Description
    %
    % Syntax: avrPoints = engLastOne(n)
    %
    % Long description

    totalPoints = 20 * n;
    points = 0;

    for j = 1:n
        answers = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4];
        rightAnswer = answers(randperm(20)); % 变成均匀分布的四个答案
        myAns = rightAnswer;
        randperm(20-left,wrong)
        for k = 1:wrong
            
        end

        % myAns = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]; %必得5分
        myAns = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

        % myAns = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4];
        % myAns = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2];

        for i = 1:20

            if myAns(i) == rightAnswer(i)
                points = points + 1;
            end

        end

    end

    avrPoints = points / totalPoints * 20
end
