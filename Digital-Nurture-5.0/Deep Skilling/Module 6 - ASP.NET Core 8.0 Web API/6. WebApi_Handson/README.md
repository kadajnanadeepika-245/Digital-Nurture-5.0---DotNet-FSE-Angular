# Kafka Chat Application using C# Windows Forms

## Objective

This project demonstrates how to integrate Apache Kafka with a C# Windows Forms application. It uses Kafka as a messaging platform to send and receive chat messages between multiple client applications.

---

## Software Requirements

- Visual Studio 2022
- .NET Framework / .NET Windows Forms
- Apache Kafka
- Apache ZooKeeper
- Java JDK 8 or above
- NuGet Package:
  - Confluent.Kafka

---

## Project Structure

```
KafkaChatApplication
│
├── Program.cs
├── Form1.cs
├── Form1.Designer.cs
├── KafkaProducer.cs
├── KafkaConsumer.cs
├── App.config
└── README.md
```

---

## NuGet Package Installation

Open Package Manager Console and execute:

```powershell
Install-Package Confluent.Kafka
```

---

## Kafka Setup

### Step 1: Start ZooKeeper

```cmd
zookeeper-server-start.bat ../../config/zookeeper.properties
```

---

### Step 2: Start Kafka Server

```cmd
kafka-server-start.bat ../../config/server.properties
```

---

### Step 3: Create Kafka Topic

```cmd
kafka-topics.bat --create --topic chat-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
```

---

## Running the Application

1. Open the project in Visual Studio.
2. Restore NuGet packages.
3. Build the solution.
4. Run two instances of the application.
5. Enter a message in one client.
6. Click **Send**.
7. The message is received in the other client through Kafka.

---

## Project Components

### Program.cs

Starts the Windows Forms application.

### Form1.cs

Contains the user interface logic and connects the Producer and Consumer.

### KafkaProducer.cs

Publishes chat messages to the Kafka Topic.

### KafkaConsumer.cs

Consumes messages from the Kafka Topic and displays them in the chat window.

---

## Kafka Architecture

```
Sender
   │
   ▼
Kafka Producer
   │
   ▼
Kafka Topic (chat-topic)
   │
   ▼
Kafka Broker
   │
   ▼
Kafka Consumer
   │
   ▼
Receiver
```

---

## Expected Output

Client 1

```
Hello
```

Client 2

```
Hello
```

---

## Advantages

- Real-time messaging
- High throughput
- Distributed architecture
- Fault tolerant
- Scalable communication
- Easy integration with .NET applications

---

## Conclusion

The Kafka Chat Application demonstrates real-time communication between multiple C# Windows Forms clients using Apache Kafka. Kafka acts as a distributed messaging system where producers publish messages to a topic and consumers receive them instantly.

---

## References

1. https://www.c-sharpcorner.com/article/apache-kafka-net-application/

2. https://www.c-sharpcorner.com/article/step-by-step-installation-and-configuration-guide-of-apache-kafka-on-windows/
