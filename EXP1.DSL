#include <iostream>
using namespace std ;
int main()
{
int i,a[5],b[5],c[10];
int n=5, ch,pos,value,sum=0,sub=0;
char x;
do{
cout<<"1.create"<<endl;
cout<<"2.display"<<endl;
cout<<"3.sum"<<endl;
cout<<"4.substraction"<<endl;
cout<<"5.insertion"<<endl;
cout<<"6.deletion"<<endl;
cout<<"7.updating"<<endl;
cout<<"8.merging"<<endl;
cout<<"Enter your choice: ";
cin>>ch;
switch(ch){
case 1:
cout<<"Enter array elements:"<<endl;
for(i=0;i<5;i++){
cin>>a[i];
}
break;
case 2:
cout<<"Array is :";
for(i=0;i<5;i++){
cout<<a[i]<<" ";
}
break;
case 3:
for(i=0;i<5;i++){
sum=sum+i;
}
cout<<endl<<"Addition is :"<<sum;
break;
case 4:
for(i=0;i<5;i++){
sub=sub-i;
}
cout<<endl<<"substraction is :"<<sub;
break;
case 5:
cout<<"Enter position and value";
cin>>pos>>value;
for(i=n;i>pos;i--){
a[i]=a[i-1];
}
a[pos]=value;
n--;
cout<<"After insertion:";
for(i=0;i<5;i++){
cout<<a[i]<<" ";
}
break;
case 6:
cout<<"Enter position to delete"<<endl;
cin>>pos;
for(i=pos;i<n-1;i++){
a[i]=a[i+1];
}
cout<<"After deletion:";
for(i=0;i<5;i++){
cout<<a[i]<<" ";
}
break;
case 7:
cout<<"Enter index and new value";
cin>>pos>>value;
a[pos]=value;
cout<<"After updating:";
for(i=0;i<5;i++){
cout<<a[i]<<" ";
}
break;
case 8:
cout<<"Enter five elements";
for(i=0;i<5;i++){
cin>>b[i];
}
for(i=0;i<n;i++){
c[i]=a[i];
}
for(i=0;i<5;i++){
c[n+i]=b[i];
}
cout<<"Merged Array :";
for(i=0;i<n+5;i++){
cout<<c[i]<<" ";
}
break;
}
cout<<"Do you want to continue";
cin>>x;
}
while(x=='y'|| x=='Y');
return 0;
}
