# publisher-subscriber
Publisher subscriber model using RabbitMQ as a message broker.
Framework used - Spring.
Spring module - Spring boot.
Publisher application will provide different URLs for the user. For each page user will provide the data. Based on the user provided data, publisher application will post the data to the queue. This data will be categorised into various types of events.
Subscriber application has different parts where each part will subscribe to different types of events. Once the application listens to the queue, it takes necessary action.
