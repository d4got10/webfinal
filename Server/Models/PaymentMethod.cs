namespace WebFinal.Models;

public class PaymentMethod : DbModel
{
    public required string Name { get; set; }
    public ICollection<Transaction> Transactions { get; set; } = new List<Transaction>();
}