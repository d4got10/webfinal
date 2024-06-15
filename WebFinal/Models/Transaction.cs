namespace WebFinal.Models;

public class Transaction : DbModel
{
    public int TransactionId { get; set; }
    public DateOnly Date { get; set; }
    public required string ProductName { get; set; }
    public int UnitsSold { get; set; }
    public decimal UnitPrice { get; set; }
    public decimal TotalRevenue { get; set; }
    public Guid RegionId { get; set; }
    public Region? Region { get; set; }
    public Guid PaymentMethodId { get; set; }
    public PaymentMethod? PaymentMethod { get; set; }
}