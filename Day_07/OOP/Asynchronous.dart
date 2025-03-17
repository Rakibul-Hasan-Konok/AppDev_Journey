/*
** Asynchronous Programming is a way of writing code that allows a program to do 
multiple tasks at the same time. 
** Time consuming operations like fetching data from the internet, writing to a database, reading from 
a file, and downloading a file can be performed without blocking the main thread of execution.
.........................................................................................................
Synchronous Programming
In Synchronous programming, the program is executed line by line, one at a time.
Synchronous operation means a task that needs to be solved before proceeding to the next one.Synchronous Programming
...................................................................................
Why We Need Asynchronous
1. To Fetch Data From Internet,
2. To Write Something to Database,
3. To execute a long-time consuming task,
4. To Read Data From File, and
5. To Download File etc.
.................................................................................
Important Terms
1. Synchronous operation blocks other operations from running until it completes.
2. Synchronous function only perform a synchronous operation.
3. Asynchronous operation allows other operations to run before it completes.
4. Asynchronous function performs at least one asynchronous operation and can also perform synchronous
*/


//Synchronous Programming

// void main() {
//   print("First Operation"); 
//   print("Second Big Operation"); 
//   print("Third Operation"); 
//   print("Last Operation"); 
// }

//Asynchronous ProgrammingAsynchronous Programming
void main() {
  print("First Operation");   
  Future.delayed(Duration(seconds:3),()=>print('Second Big Operation'));
  print("Third Operation"); 
  print("Last Operation"); 
}