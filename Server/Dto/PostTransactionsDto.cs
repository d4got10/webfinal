namespace WebFinal.Dto;

public record PostTransactionsDto(IReadOnlyList<TransactionDto> Transactions);