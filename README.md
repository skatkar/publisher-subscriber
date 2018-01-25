# publisher-subscriber
Publisher subscriber model using RabbitMQ as a message broker. This application demonstrates the working of Publisher-subscriber model which is commonly used in the Distributed systems.
Framework used - Spring.
Spring module - Spring boot.
Publisher application will provide different URLs for the user. For each page, user will provide the data. Based on the user provided data, publisher application will post the data to the queue. This data will be categorised into various types of events.
Subscriber application has different parts where each part will subscribe to different types of events. Once the application listens to the queue, it takes necessary action. These actions include: sending out an email, maintaining the data into the database etc.
Subscriber application also has the URLs for user interaction where each page will display the report for the type message (as messages are categorised as per the event) listened from the queue.
