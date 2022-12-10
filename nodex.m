classdef nodex<handle
properties 
next
prev
data
index
end
methods 
function this=nodex(val)
this.data=val;
end
  function r=minus(a,b)
r=a.index-b.index;
end
function r=plus(a,b)
    b=cast(b,'int8');
while b~=0 & ~isempty(a)
a=a.next;
b=b-1;
end
r=a;
end
end
end
