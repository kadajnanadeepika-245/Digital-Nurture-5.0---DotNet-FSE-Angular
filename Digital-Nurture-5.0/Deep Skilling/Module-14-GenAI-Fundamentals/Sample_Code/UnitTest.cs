using NUnit.Framework;

[TestFixture]
public class CalculatorTest
{
    [Test]
    public void TestAdd()
    {
        Assert.AreEqual(30,10+20);
    }
}
