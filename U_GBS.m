function [Visited_Frontier] = U_GBS(ary,num,map)
    Visited_Frontier=0;
    if ary(num).u
        if map(ary(num).u) ~=3
            Visited_Frontier = ary(num).u;
        end
    elseif ary(1).u
        if map(ary(1).u) ~=3
            Visited_Frontier = ary(1).u;
        else
            Visited_Frontier = ary(num-1).u;
        end
    else
        Visited_Frontier = ary(num-1).u;
    end
end