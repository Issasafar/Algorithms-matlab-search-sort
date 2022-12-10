function bubblesort(list)
    lastnode=[];
    head=list.head;
    if isempty(head)
        return;
    end
    swapped=true;
    while swapped
        swapped=false;
        node1=head;
        while ~isequal(node1.next,lastnode)
            if node1.data<node1.next.data
                x=node1.data;
                node1.data=node1.next.data;
                node1.next.data=x;
                swapped=true;
            end
            node1=node1.next;
        end
        lastnode=node1;
    end
end
