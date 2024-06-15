using Microsoft.EntityFrameworkCore;
using WebFinal.Models;

namespace WebFinal.Database;

public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : DbContext(options)
{
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Transaction>()
            .HasOne(e => e.Region)
            .WithMany(e => e.Transactions)
            .HasForeignKey(e => e.RegionId)
            .IsRequired();
        
        modelBuilder.Entity<Transaction>()
            .HasOne(e => e.PaymentMethod)
            .WithMany(e => e.Transactions)
            .HasForeignKey(e => e.PaymentMethodId)
            .IsRequired();
    }

#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    public DbSet<Transaction> Transactions { get; set; }
    public DbSet<Region> Regions { get; set; }
    public DbSet<PaymentMethod> PaymentMethods { get; set; }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
}