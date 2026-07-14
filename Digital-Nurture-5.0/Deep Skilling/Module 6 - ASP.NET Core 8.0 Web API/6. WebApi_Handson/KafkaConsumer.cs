using Confluent.Kafka;
using System;

namespace KafkaChatApplication
{
    public class KafkaConsumer
    {
        ConsumerConfig config;

        public KafkaConsumer()
        {
            config = new ConsumerConfig
            {
                BootstrapServers = "localhost:9092",
                GroupId = "chat-group",
                AutoOffsetReset = AutoOffsetReset.Earliest
            };
        }

        public void ReceiveMessage(Action<string> callback)
        {
            using (var consumer =
                new ConsumerBuilder<Ignore, string>(config).Build())
            {
                consumer.Subscribe("chat-topic");

                while (true)
                {
                    var result = consumer.Consume();

                    callback(result.Message.Value);
                }
            }
        }
    }
}
