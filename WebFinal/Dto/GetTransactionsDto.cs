namespace WebFinal.Dto;

public record GetTransactionsDto(IReadOnlyList<TransactionDto> Transactions);