using System;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KafkaChatApplication
{
    public partial class Form1 : Form
    {
        KafkaProducer producer = new KafkaProducer();
        KafkaConsumer consumer = new KafkaConsumer();

        public Form1()
        {
            InitializeComponent();

            StartConsumer();
        }

        private async void StartConsumer()
        {
            await Task.Run(() =>
            {
                consumer.ReceiveMessage(DisplayMessage);
            });
        }

        public void DisplayMessage(string msg)
        {
            if (InvokeRequired)
            {
                Invoke(new Action<string>(DisplayMessage), msg);
            }
            else
            {
                lstMessages.Items.Add(msg);
            }
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            if (txtMessage.Text.Trim() == "")
            {
                MessageBox.Show("Enter Message");
                return;
            }

            producer.SendMessage(txtMessage.Text);

            txtMessage.Clear();
        }
    }
}
