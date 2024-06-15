namespace WebFinal.Dto;

[UsedImplicitly]
public record TransactionDto(
    int TransactionId,
    DateOnly Date,
    string ProductName,
    int UnitsSold,
    decimal UnitPrice,
    decimal TotalRevenue,
    string Region,
    string PaymentMethod);