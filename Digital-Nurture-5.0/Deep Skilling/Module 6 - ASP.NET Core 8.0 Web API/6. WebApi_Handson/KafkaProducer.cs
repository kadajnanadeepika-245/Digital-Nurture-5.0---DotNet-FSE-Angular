using Confluent.Kafka;

namespace KafkaChatApplication
{
    public class KafkaProducer
    {
        ProducerConfig config;

        public KafkaProducer()
        {
            config = new ProducerConfig
            {
                BootstrapServers = "localhost:9092"
            };
        }

        public async void SendMessage(string message)
        {
            using (var producer =
                new ProducerBuilder<Null, string>(config).Build())
            {
                await producer.ProduceAsync(
                    "chat-topic",
                    new Message<Null, string>
                    {
                        Value = message
                    });
            }
        }
    }
}
