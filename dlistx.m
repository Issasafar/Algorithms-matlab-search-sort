classdef dlistx<handle
   properties 
   head
   tail
   end
   methods
        function this=dlistx(inode)
            if nargin==0 
                ...
            else
         this.head=inode;
         this.tail=inode;
         this.head.index=0;
            end
        end
function push(this,newNode)
newNode.prev = this.tail;
this.tail.next = newNode;
this.tail = newNode;
newNode.index=newNode.prev.index+1;
end 
 function printlist(this)
 list=[];
 i=1;
 obj=this.head.next.prev;
   while ~isempty(obj)
   list(i)=obj.data;
   obj=obj.next;
   i=i+1;
   end
  disp([inputname(1),' = ',num2str(list)])
 end
end
methods (Static)
function result=adapt(dlist)
obj=dlist.head;
templist=dlistx(nodex(obj.data));
templist.head.data;
while ~isempty(obj.next)
obj=obj.next;
templist.push(nodex(obj.data));
end
result=templist;
end
function middle=getmid(start,finish)
temp=start;
mid=temp;
count=0;
while ~isequal(temp,finish)
if rem(count,2)~=0
mid=mid.next;
end
count=count+1;
temp=temp.next;
end
middle=mid;
end
end
end
