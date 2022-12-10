function selectionsort(list)
    temp=list.head;
    while ~isempty(temp)
        max=temp;
        i=temp.next;
        while ~isempty(i)
            if max.data<i.data
                max=i;
            end
                i=i.next;        
        end
            if max.data~=temp.data             
            x=temp.data;
            temp.data=max.data;
            max.data=x;
            end
            temp=temp.next;                              
    end
end
