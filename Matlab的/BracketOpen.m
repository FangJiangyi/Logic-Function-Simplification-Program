function str=BracketOpen(str,start,stop)
count_left_bracket=start;
count_right_bracket=stop;
    for i=start:stop
        if str(i)~='('
            count_left_bracket=count_left_bracket+1;
        else
            break;
        end
        
    end
    for i=stop:-1:start
        if str(i)~=')'
            count_right_bracket=count_right_bracket-1;
        else
            break;
        end

    end
    if count_right_bracket==stop & count_left_bracket==stop
        
        return 
    end
    
end
