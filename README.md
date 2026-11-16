# Airline Management System

A desktop-based Airline Management System developed using Java Swing and
MySQL. The application provides a graphical interface for managing
passenger information, flight bookings, reservations, ticket
cancellations, and boarding passes.

## Features

-   **Login System:** Authentication interface for accessing the
    application.
-   **Add Customer:** Register passengers and store their personal
    information.
-   **Flight Information:** View available flights, flight codes, and
    destinations.
-   **Book Flight:** Retrieve passenger details and book flights.
-   **Journey Details:** Search and view reservation details using PNR.
-   **Cancel Ticket:** Cancel existing flight reservations.
-   **Boarding Pass:** Retrieve and display boarding pass information
    using PNR.

## Technologies Used

-   Java
-   Java Swing (GUI)
-   MySQL
-   JDBC (Java Database Connectivity)

## External Dependencies

The application uses these third-party libraries:

-   **MySQL Connector/J** -- connects the Java application to MySQL.
-   **JCalendar** -- provides date-selection components.
-   **rs2xml** -- helps display database query results in `JTable`
    components.

The JAR files are not included in this repository. Download the
libraries from their respective official project or distribution pages,
then add the JAR files to your Java project's classpath using your
preferred IDE or Java build setup.

## Project Structure

``` text
Airline-Management-System/
│
├── database/
│   └── mysql code ams.sql
│
├── src/
│   ├── airline/
│   │   └── management/
│   │       └── system/
│   │           ├── AddCustomer.java
│   │           ├── BoardingPass.java
│   │           ├── BookFlight.java
│   │           ├── Cancel.java
│   │           ├── Conn.java
│   │           ├── FlightInfo.java
│   │           ├── Home.java
│   │           ├── JourneyDetails.java
│   │           └── Login.java
│   │
│   └── icons/
│       └── Application image resources
│
├── .gitignore
├── LICENSE
└── README.md
```

## Prerequisites

Before running the project, make sure you have:

1.  Java Development Kit (JDK).
2.  MySQL Server.
3.  MySQL Workbench or another MySQL client.
4.  The external libraries listed in the [External
    Dependencies](#external-dependencies) section.
5.  A Java IDE, such as IntelliJ IDEA, Eclipse, or Visual Studio Code
    with Java support, or another way to compile and run Java
    applications.

## Installation and Setup

### 1. Clone the Repository

Replace the URL below with your repository's actual URL:

``` bash
git clone https://github.com/ShahRachit30/Airline-Management-System.git
```

### 2. Set Up the Database

1.  Start your MySQL Server.
2.  Open MySQL Workbench or your preferred MySQL client.
3.  Open the SQL file inside the `database` directory.
4.  Execute `mysql code ams.sql`.

The SQL script is intended to create the `airlinemanagementsystem`
database and its tables:

-   `login`
-   `passenger`
-   `flight`
-   `reservation`
-   `cancel`

The script also inserts sample flight records and a default login
account.

### 3. Configure Database Connectivity

Open:

``` text
src/airline/management/system/Conn.java
```

Update the JDBC connection details to match your local MySQL
configuration. For example:

``` java
c = DriverManager.getConnection(
    "jdbc:mysql:///airlinemanagementsystem",
    "root",
    "YOUR_MYSQL_PASSWORD"
);
```

Replace the username and password with your own MySQL credentials. Do
not commit real passwords or other secrets to GitHub. For a public or
deployed application, use a safer configuration method, such as
environment variables, rather than hardcoding credentials in source
code.

### 4. Add the External Libraries

Download the required JAR files:

-   MySQL Connector/J
-   JCalendar
-   rs2xml

Add each JAR file to the project's classpath or build path using your
chosen IDE. The repository does not include these JAR files, so they
must be obtained separately.

### 5. Open and Run the Application

1.  Open the cloned project in a Java IDE.
2.  Make sure the source folder (`src`) is recognised as a Java source
    folder.
3.  Add the three external libraries to the project's classpath.
4.  Make sure MySQL Server is running and the database has been created.
5.  Run the main class:

``` text
airline.management.system.Login
```

This repository does not currently include IDE-specific project settings
or a build-tool configuration. You may need to configure the source
folder, dependencies, and run class in your IDE.

## Default Login

The SQL script contains the following demonstration login credentials:

  Username   Password
  ---------- ----------
  admin      12345

**Note:** These are sample credentials from the database script. Change
them before using the application beyond a local demonstration.

## Database Overview

  Table           Description
  --------------- ------------------------------------
  `login`         Stores login credentials
  `passenger`     Stores passenger information
  `flight`        Stores flight information
  `reservation`   Stores flight reservation details
  `cancel`        Stores ticket cancellation records

## Future Improvements

-   Implement secure password hashing.
-   Improve database security by using `PreparedStatement` for SQL
    queries.
-   Add input validation and robust exception handling.
-   Implement a more flexible flight search system.
-   Add payment integration.
-   Improve the graphical user interface.
-   Add an administrator dashboard.
-   Introduce automated testing.
-   Add a build tool such as Maven to manage dependencies and simplify
    project setup.

## License

This project is licensed under the MIT License. See the
[LICENSE](LICENSE) file for details.
