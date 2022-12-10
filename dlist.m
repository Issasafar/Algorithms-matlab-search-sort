classdef dlist < handle
           properties
               head
               tail
           end
             methods     
               function this = dlist(newNode)  
                   if nargin==0 
                       ...
                   else
                   this.head= newNode;
                   this.tail = newNode;
                   end   
               end 
               function push(this,newNode)
                   
                   newNode.prev = this.tail;
                   this.tail.next = newNode;
                   this.tail = newNode;
               end
               function leng=getlength(this)
                   obj=this.head.next.prev;
                   count=0;
                   while ~isempty(obj)
                       count=count+1;
                       obj=obj.next;
                   end
                   leng=count;
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
                 function result=createlist()
                     disp('choose the input method for your list')
disp('1=manually entering a data for each node')
disp('2=create a linear list with steps between start and end ')
disp('3=create a magic list')
disp('4=create a random list')
x=input('choose a number');
switch x 
    case 1
        list=dlist.manlist(8);
    case 2
        start=input('enter starting number');
        last=input('enter the last number');
        step=input('enter step between two consecutive numbers');
        list=dlist.linlist(start,last,step);
    case 3
        list=dlist.magiclist(8,1,1);
    case 4
        list=dlist.randlist(8,10);
    otherwise
        
end
if exist('list')==0
    return;
end
result=list;
                 end
               function res=linlist(start,endd,step)
                  templist=dlist(node(start));
                  for i=start+step:step:endd
                      tempnode=node(i);
                      templist.push(tempnode);
                  end
                           res=templist;
               end
               function res=randlist(length,deg)
                   x=cast(rand(length).*deg*10,'int8');
                   y=x(1,:);
                   tempel=y(1);
                   templist=dlist(node(tempel));
                   for i=2:numel(y)
                      temp=y(i);
                      templist.push(node(temp));
                  end
                res=templist;
               end
               function res=magiclist(length,part,row)
                  y=magic(length);
                  x=[];
                  if part>0 & part<=length
                  switch row
                      case 1
                       x=y(part,:);
                      case 0
                          x=y(:,part).';          
                  end
                  end
                  if isempty(x)
                      x=y(1,:);
                  end
                  tempel=x(1);
                  templist=dlist(node(tempel));
                  for i=2:numel(x)
                      temp=x(i);
                      templist.push(node(temp));
                  end
                res=templist;
               end
               function res=manlist(length)
                   for i=1:length
                       x=input(['element ',num2str(i),' = ']);
                       if i==1
                           templist=dlist(node(x));
                       else
                           templist.push(node(x));
                       end
                   end
                   res=templist;
               end
               
               
           end
           
    end
