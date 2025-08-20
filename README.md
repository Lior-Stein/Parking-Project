# BPark – Automated Parking System  

## Overview  
**BPark** is a client–server based Java application for automated parking management.  
It provides a multi-user environment where users, attendants, and managers interact with the parking system.  
The project integrates **JavaFX** for the user interface, **MySQL** as the database, and follows an **OOP design** with the **Singleton pattern** for maintaining global configurations and shared resources.  
Development was performed using **Eclipse** as the primary workspace.  

The application supports multiple user types with role-based functionality, multi-screen navigation, and real-time interaction between client and server.  

---

## Main Features  
- **Guest**
  - Check available spots in the parking lot. 
  - Sign-up or Log-in to an account.  

- **Regular User**
  - Reserve a parking spot up to one week in advance.  
  - Reservation confirmation sent via email.  
  - Cancel existing reservations.  
  - Extend active reservations (only if no collision with another booking).
  - Update personal information, and view parking history.

- **Attendant**
  - Register new guests.  
  - View all parking spot data: availability, reservations, and assigned users.  

- **Manager**
  - Access monthly reports with aggregated parking usage statistics.  
  - Review user details and full reservation history.  

- **Kiosk**
  - Interactive parking lot terminal interface.  
  - After identification, users receive an email code for car delivery.  
  - Car retrieval is performed by entering the code; the spot is then cleared.  

---

## Client  
- Implemented in **JavaFX** with a multi-screen interface.  
- Supports multiple user types (Guest, User, Attendant, Manager).  
- Provides GUI for:  
  - Reservation management.  
  - Profile updates.  
  - Parking history and reporting.  
  - Kiosk simulation screen.  
- Communicates with the server via serialized messages over TCP.  

---

## Server  
- Built using **Java OCSF framework** (AbstractServer/ConnectionToClient).  
- Handles requests from multiple clients simultaneously.  
- Interfaces with **MySQL database** for persistent data storage.  
- Responsible for:  
  - Reservation validation and conflict checks.  
  - Role-based request handling (user, attendant, manager).  
  - Report generation and data aggregation.  
  - Email notifications for reservations and kiosk codes.  
- Ensures consistent system state with **Singleton design pattern**.  
