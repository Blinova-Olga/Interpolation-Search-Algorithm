function num = interp(R, seq, element)
    num=0;
    l = 1;
    r=R;
    while seq(l) < element && seq(r) > element
        if seq(l) == seq(r)
        break;
        end
        index = floor((element - seq(l)) * (l - r) / (seq(l) - seq(r))) + l;
        num=num+1;
        if seq(index) > element
            r = index - 1;
        elseif seq(index) < element
            l = index + 1;
        else
            res = index;
            return;
        end
        
    end
    if seq(l) == element
        res = l;
        return;
    end
    if seq(r) == element
        res=r;
        return;
    end
end