#include <iostream>
using namespace std;
class Stack {
int top;
int* arr;
int capacity;
public:
Stack(int SIZE) { 
capacity = SIZE;
arr = new int[capacity];
top = -1; 
} 
~Stack(){
delete[] arr;
}
bool isFull() {
return (top == capacity - 1);
}
bool isEmpty() {
return (top == -1);
}
void push(int val) {
if (isFull()) {
cout << "Stack Overflow! Cannot push " << val << endl;
} else {
top++;
arr[top] = val;
cout << val << " pushed into stack." << endl;
}
}
int pop() {
if (isEmpty()) {
cout << "Stack Underflow! Nothing to pop." << endl;
return 0;
} else {
int popValue = arr[top];
arr[top] = 0;
top--;
return popValue;
}
}
int peek() {
if (isEmpty()) {
cout << "Stack is empty." << endl;
return 0;
} else {
return arr[top];
}
}
void display() {
if (isEmpty()) {
cout << "Stack is empty." << endl;
} else {
cout << "Current Stack: ";
for (int i = top; i >= 0; i--) {
cout << arr[i] << " ";
}
cout << endl;
}
}
};
int main() {
int size;
cout << "Enter the size of Stack:";
cin>>size;
Stack s(size);
int ch, value;
do {
cout << "\n--- STACK ---" << endl;
cout << "1. Push" << endl;
cout << "2. Pop" << endl;
cout << "3. Peek" << endl;
cout << "4. IsEmpty" << endl;
cout << "5. IsFull" << endl;
cout << "6. Display" << endl;
cout << "0. Exit" << endl;
cout << "Enter choice: ";
cin >> ch;
switch(ch) {
case 1:
cout << "Enter value to push: ";
cin >> value;
s.push(value);
break;
case 2:
 cout << "Popped value: " << s.pop() << endl;
break;
case 3:
cout << "Top value (Peek): " << s.peek() << endl;
break;
case 4:
if (s.isEmpty()) 
cout << "Stack is empty." << endl;
else 
cout << "Stack is not empty." << endl;
break;
case 5:
if (s.isFull()) 
cout << "Stack is full." << endl;
else 
cout << "Stack is not full." << endl;
break;
case 6:
s.display();
break;
case 0:
cout << "Exiting..." << endl;
break;
default:
cout << "Invalid choice! Try again." << endl;
}
}while(ch != 0);
return 0;
}
