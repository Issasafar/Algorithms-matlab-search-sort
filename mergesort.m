function  mergesort(list)
    fnod=mergesort1(list.head);
    templist=dlist(node(fnod.data));
    obj=fnod.next;
    while ~isempty(obj)
        templist.push(node(obj.data));
        templist.head.next;
        obj=obj.next;
    end
    list.head=templist.head;
    list.tail=templist.tail;
function rnode=mergesort1(node)
            if ~isobject(node) | ~isobject(node.next)
                rnode=node;
                return
            end
            second=split(node);
            node=mergesort1(node);
            second=mergesort1(second);
            rnode=merge(node,second);
            function splited=split(head)
                fast=head;
                slow=head;
                while isobject(fast.next) & isobject(fast.next.next)  &~isempty(fast.next)  &~isempty(fast.next.next)
                    fast=fast.next.next;
                    slow=slow.next;
                end
                temp=slow.next;
                slow.next=[];
                splited=temp;
                
            end
            function resm=merge(first,second)
                if ~isobject(first)
                    resm=second;
                    return
                end
                if ~isobject(second)
                    resm=first;
                    return
                end
                if first.data>second.data
                    first.next=merge(first.next,second);
                    first.next.prev=first;
                    first.prev=[];
                    resm=first;
                else
                    second.next=merge(first,second.next);
                    second.next.prev=second;
                    second.prev=[];
                    resm=second;
                end
            end
           end             
           end
