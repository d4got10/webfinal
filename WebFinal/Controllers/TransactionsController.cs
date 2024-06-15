using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebFinal.Database;
using WebFinal.Dto;
using WebFinal.Models;

namespace WebFinal.Controllers;

[Route("[controller]")]
[ApiController]
public class TransactionsController(ApplicationDbContext dbContext) : ControllerBase
{
    [HttpGet("GetTransactions")]
    [ProducesResponseType(typeof(GetTransactionsDto), 200)]
    public async Task<IActionResult> GetTransactions()
    {
        var models = await dbContext.Transactions
            .Include(x => x.Region)
            .Include(x => x.PaymentMethod)
            .ToArrayAsync();
        var dtos = models.Select(MapToDto).ToArray();
        
        return Ok(new GetTransactionsDto(dtos));
    }
    
    [HttpPost("Post")]
    public async Task<IActionResult> PostTransactions(PostTransactionsDto postTransactionsDto)
    {
        var regions = postTransactionsDto.Transactions
            .Select(x => x.Region)
            .Distinct()
            .Select(x => new Region
            {
                Name = x,
            })
            .ToArray();
        
        var paymentMethods = postTransactionsDto.Transactions
            .Select(x => x.PaymentMethod)
            .Distinct()
            .Select(x => new PaymentMethod
            {
                Name = x,
            })
            .ToArray();

        var transactions = postTransactionsDto.Transactions
            .Select(x => new Transaction
            {
                TransactionId = x.TransactionId,
                Date = x.Date,
                UnitPrice = x.UnitPrice,
                TotalRevenue = x.TotalRevenue,
                UnitsSold = x.UnitsSold,
                ProductName = x.ProductName,
                Region = regions.First(r => r.Name == x.Region),
                PaymentMethod = paymentMethods.First(r => r.Name == x.PaymentMethod),
            })
            .ToArray();

        await dbContext.Transactions.AddRangeAsync(transactions);
        await dbContext.SaveChangesAsync();
        
        return Ok();
    }

    private static TransactionDto MapToDto(Transaction transaction)
    {
        if (transaction.Region is null)
        {
            throw new NullReferenceException("Транзакция не была заполнена данными о регионе.");
        }
        
        if (transaction.PaymentMethod is null)
        {
            throw new NullReferenceException("Транзакция не была заполнена данными о способе платежа.");
        }
        
        return new TransactionDto(
            transaction.TransactionId,
            transaction.Date,
            transaction.ProductName,
            transaction.UnitsSold,
            transaction.UnitPrice,
            transaction.TotalRevenue,
            transaction.Region.Name,
            transaction.PaymentMethod.Name);
    }
}