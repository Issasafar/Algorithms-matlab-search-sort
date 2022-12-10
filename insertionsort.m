function insertionsort(list)
    sortednodes=[];
    current=list.head;
    while ~isempty(current)
        nextnode=current.next;
        current.prev=[];,current.next=[];
        sortednodes=insert2sorted(sortednodes,current);
        current=nextnode;
    end
    list.head=sortednodes;
    function rnode=insert2sorted(head,newnode)
        if isempty(head)
            head=newnode;
            rnode=head;
            return;
        elseif head.data<=newnode.data
            newnode.next=head;
            newnode.next.prev=newnode;
            head=newnode;
            rnode=head;
            return;
        else
            current=head;
            while ~isempty(current.next) & current.next.data>newnode.data
                current=current.next;
            end
            newnode.next=current.next;
            if ~isempty(current.next)
                newnode.next.prev=newnode;
            end
            current.next=newnode;
            newnode.prev=current;
            
        end
        rnode=head;
    end
end
