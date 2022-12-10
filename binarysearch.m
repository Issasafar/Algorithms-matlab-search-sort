function result=binarysearch(list,x)
    list=dlistx.adapt(list);
    result=binarysearch1(list.head,list.tail,x);
    return;
function result=binarysearch1(beg,ends,y)
    mid=dlistx.getmid(beg,ends);
if mid.data==y
result=mid.index;
return;
end
if beg==ends
    result=-1;
    return;
end
if y>mid.data
result=binarysearch1(beg,mid.prev,y);
else
result=binarysearch1(mid.next,ends,y);
end
end
end
