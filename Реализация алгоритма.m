function num = interp(R, seq, element)
    num=0;
    l = 1;
    r=R;
    while seq(l) < element && seq(r) > element
        num=num+2;
        num=num+1;
        if seq(l) == seq(r)
        break;
        end
        num=num+2;
        index = floor((element - seq(l)) * (l - r) / (seq(l) - seq(r))) + l;
        num=num+1;
        num=num+1;
        if seq(index) > element
            r = index - 1;
        else
        num=num+1;
        if seq(index) < element
            l = index + 1;
        else
            res = index;
            return;
        end
        end
        
    end
    num=num+1;
    if seq(l) == element
        res = l;
        return;
    end
    num=num+1;
    if seq(r) == element
        res=r;
        return;
    end
end