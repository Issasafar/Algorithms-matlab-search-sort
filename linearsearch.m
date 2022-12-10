function result=linearsearch(list,x)
    list=dlistx.adapt(list);
    temp=list.head;
    while ~isempty(temp)
        if temp.data==x
            result=temp.index;
            return;
        end
        temp=temp.next;
    end
    result=-1;
    return;    
end
