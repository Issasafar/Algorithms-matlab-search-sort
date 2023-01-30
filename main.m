clc
clear
disp(' WELCOME ')
disp('this project perform merge and sort algorithms on doubly linked list');
while exist('yourlist')==0
try
yourlist=dlist.createlist;
catch E
warning('try to enter a valid number ');
end
end
p=true;
while p
clc
yourlist.printlist;
temp=yourlist.head;
list=dlist(node(temp.data));
while isobject(temp.next)
temp=temp.next;
list.push(node(temp.data));
end
disp('what do you want to do ?');
disp('1=linear search');
disp('2=binary search');
disp('3=interpolation search');
disp('4=bubble sort');
disp('5=selection sort');
disp('6=insertion sort');
disp('7=merge sort');
disp('8=quick sort');
disp('9=change the list');
disp('0=STOP')
x=input('ENTER YOUR CHOICE ');
switch x
case 0
p=false;
case 1
sortedlist=list;
quicksort(sortedlist);
sortedlist.printlist;
val=input('what is the data you want to search for ');
search_result=linearsearch(sortedlist,val);
if search_result==-1
disp('not found !');
else
disp(['found at index ',num2str(search_result)]);
end
input('press any key to continue ','s');
case 2
disp('1=binary search for value');
disp('2=worst case for binary search');
x2=input('choose a number ');
switch x2
case 1
sortedlist=list;
quicksort(sortedlist);
sortedlist.printlist;
val=input('what is the data you want to search for ');
search_result=binarysearch(sortedlist,val);
if search_result==-1
disp('not found !');
else
disp(['found at index ',num2str(search_result)]);
end
case 2
disp('worst case happens when you search for element');
disp('that is far away from the middle e.g head or tail');
sortedlist=list;
mergesort(sortedlist);
sortedlist.printlist;
val=input('what is the data you want to search for ');
tic
search_result=linearsearch(sortedlist,val);
toc
if search_result==-1
disp('not found !');
else
disp(['found at index ',num2str(search_result)]);
end
otherwise
end
input('press any key to continue ','s');
case 3
disp('1=interpolation search for value');
disp('2=worst case for interpolation search');
x3=input('choose a number ');
switch x3
case 1
sortedlist=list;
quicksort(sortedlist);
sortedlist.printlist;
val=input('what is the data you want to search for '); 
search_result=intersearch(sortedlist,val);
if search_result==-1
disp('not found !');
else
disp(['found at index ',num2str(search_result)]);
end
case 2
disp('worst case happens when list elements are');
disp('exponentially related');
disp('for example the set :');
disp('10000000 1000000 100000 10000 1000 100 10 1');
sortedlist=dlist(node(10000000));
sortedlist.push(node(1000000));
sortedlist.push(node(100000));
sortedlist.push(node(10000));
sortedlist.push(node(1000));
sortedlist.push(node(100));
sortedlist.push(node(10));
sortedlist.push(node(1));
sortedlist.printlist;
disp('assume that we search for 1');
tic
search_result=linearsearch(sortedlist,1);
toc
if search_result==-1
disp('not found !');
else
disp(['found at index ',num2str(search_result)]);
end
otherwise
end
input('press any key to continue ','s');
case 4
sortedlist=list;
bubblesort(sortedlist);
sortedlist.printlist;
input('press any key to continue ','s');
case 5
sortedlist=list;
selectionsort(sortedlist);
sortedlist.printlist;
input('press any key to continue ','s');
case 6
sortedlist=list;
insertionsort(sortedlist);
sortedlist.printlist;
input('press any key to continue ','s');
case 7
disp('1=mergesort');
disp('2=best & worst case');
x7=input('choose a number ');
switch x7
case 1
sortedlist=list;
mergesort(sortedlist);
sortedlist.printlist;
case 2
disp('best case happens when the list is already sorted');
disp('so the number of comparison is minimum');
sortedlist=list;
mergesort(sortedlist);
bestlist=sortedlist;
bestlist.printlist;
tic
mergesort(sortedlist);
toc
sortedlist.printlist;

disp('worst case happen when the list will achieve maximum number of comaprisons');
disp('assume that the final list is 7 6 5 4 3 2 1 0 so ...');
disp('before this result the left subarray should be 7 5 3 1');
disp('and the right subarray should be 6 4 2 0 , ');
disp('by applying same logic on the both subarrays and');
disp('working backwards with mergesort we end up with 3 7 1 5 2 6 0 4 ');
disp('worst case happens when left and right subarrays have alternating elements');
worstlist=dlist(node(3));
worstlist.push(node(7));
worstlist.push(node(1));
worstlist.push(node(5));
worstlist.push(node(2));
worstlist.push(node(6));
worstlist.push(node(0));
worstlist.push(node(4));
worstlist.printlist;
sortedlist=worstlist;
tic
mergesort(sortedlist);
toc
sortedlist.printlist;
otherwise 
end
input('press any key to continue ','s');
case 8
disp('1=quicksort ');
disp('2=best & worst case');
x8=input('enter a number ');
switch x8
case 1
sortedlist=list;
quicksort(sortedlist);
sortedlist.printlist;
case 2
disp('best case happens when the pivot ends in the approximate');
disp('middle of the list e.g the set 5 6 8 7 3 4 1');
bestlist=dlist(node(5));
bestlist.push(node(6));
bestlist.push(node(8));
bestlist.push(node(7));
bestlist.push(node(3));
bestlist.push(node(4));
bestlist.push(node(2));
bestlist.push(node(1));
bestlist.printlist;
sortedlist=bestlist;
tic
quicksort(sortedlist);
toc
sortedlist.printlist;
disp('worst case happens when the list is already sorted');
worstlist=list;
quicksort(worstlist);
worstlist.printlist;
tic
quicksort(worstlist);
toc
sortedlist.printlist;
otherwise 
end
input('press any key to continue ','s');
case 9
list=dlist.createlist
otherwise 
warning('invalid input');
input('press any key to continue ','s');
end
end
