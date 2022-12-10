function quicksort(list)
    qsort(list,list.head,list.tail);
        function qsort(list,high,low)
            if  isobject(low) & high~=low & ~isequal(high,low.next)
            piv=partition(list,high,low);
            qsort(list,high,piv.prev);
            qsort(list,piv.next,low);
            end
            function result=partition(list,h,l)      
            pivot=l.data;
            i=h.prev;
            j=h;
            while j~=l
                if j.data>=pivot
                    if ~isobject(i) | isempty(i)
                        i=h;
                    else
                        i=i.next;
                    end
                    temp=i.data;
                    i.data=j.data;
                    j.data=temp;
                end
                j=j.next;
            end
            if ~isobject(i)
                i=h;
            else
                i=i.next;
            end
            temp1=i.data;
            i.data=j.data;
            j.data=temp1;  
            result=i;
            return;
            end      
        end     
end
