#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

void display(Node* head) {
    if (head == NULL) {
        cout << "List is empty\n";
        return;
    }

    Node* temp = head;

    while (temp != NULL) {
        cout << temp->data << " -> ";
        temp = temp->next;
    }

    cout << "NULL\n";
}

void insertBegin(Node*& head, int val) {
    Node* newNode = new Node;
    newNode->data = val;
    newNode->next = head;

    head = newNode;

    cout << "List after insertion at beginning: ";
    display(head);
}

void insertEnd(Node*& head, int val) {
    Node* newNode = new Node;
    newNode->data = val;
    newNode->next = NULL;

    if (head == NULL) {
        head = newNode;
    }
    else {
        Node* temp = head;
        while (temp->next != NULL) {
            temp = temp->next;
        }

        temp->next = newNode;
    }

    cout << "List after insertion at end: ";
    display(head);
}

void deleteNode(Node*& head, int val) {

    if (head == NULL) {
        cout << "List is empty!\n";
        return;
    }

    if (head->data == val) {
        Node* temp = head;
        head = head->next;
        delete temp;

        cout << "List after deletion: ";
        display(head);
        return;
    }

    Node* temp = head;

    while (temp->next != NULL && temp->next->data != val) {
        temp = temp->next;
    }

    if (temp->next == NULL) {
        cout << "Value not found!\n";
    }
    else {
        Node* toDelete = temp->next;
        temp->next = temp->next->next;
        delete toDelete;

        cout << "List after deletion: ";
        display(head);
    }
}

int main() {

    Node* head = NULL;
    int choice, val;

    while (true) {

        cout << "\n--- Linked List Operations ---\n";
        cout << "1. Insert at beginning\n";
        cout << "2. Insert at end\n";
        cout << "3. Delete by value\n";
        cout << "4. Display list\n";
        cout << "5. Exit\n";

        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {

        case 1:
            cout << "Enter value: ";
            cin >> val;
            insertBegin(head, val);
            break;

        case 2:
            cout << "Enter value: ";
            cin >> val;
            insertEnd(head, val);
            break;

        case 3:
            cout << "Enter value to delete: ";
            cin >> val;
            deleteNode(head, val);
            break;

        case 4:
            cout << "Current List: ";
            display(head);
            break;

        case 5:
            cout << "Exiting program\n";
            return 0;

        default:
            cout << "Invalid choice!\n";
        }
    }
}
