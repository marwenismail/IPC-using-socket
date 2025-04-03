# IPC-using-socket

# Socket Client-Server Application

## Description
This project consists of a **server process** and a **client process** that communicate using **sockets**. The client sends integer values to the server, which sums them. When the client sends `0`, the server responds with the total sum and terminates the connection.

## Features
- The client sends integer values to the server via sockets.
- The server accumulates the received integers.
- When the client sends `0`, the server returns the total sum.
- Uses socket programming for inter-process communication.

## Requirements
- A Linux-based system
- GCC compiler for C programs
- Basic understanding of socket programming

## How to Run
1. **Compile the server and client using the Makefile:**  
   ```bash
   make
   ```

2. **Run the server:**  
   ```bash
   ./server
   ```

3. **Run the client:**  
   ```bash
   ./client
   ```

## Expected Behavior
1. The client sends integer values to the server.
2. The server accumulates the values.
3. When the client sends `0`, the server sends back the sum and closes the connection.


## Author
Developed by Marwen BENISMAIL

