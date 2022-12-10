function result=intersearch(list,x)
    list=dlistx.adapt(list);
    hi=list.tail;
    lo=list.head;
    while lo.index<=hi.index & x<=lo.data & x>=hi.data
        if lo.index==hi.index
            if lo.data==x
                result=lo.index;
                return;
            end
            result=-1;
        end
        pos=lo+((hi-lo)/(hi.data-lo.data))*(x-lo.data);
        if pos.data==x
            result=pos.index;
            return;
        end
        if pos.data>x
            lo=pos.next;
        else
            hi=pos.prev;
        end
    end
        result=-1;
end
