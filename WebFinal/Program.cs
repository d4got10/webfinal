global using JetBrains.Annotations;

using Microsoft.EntityFrameworkCore;
using WebFinal.Database;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddControllers();
builder.Services.AddDbContext<ApplicationDbContext>(options =>
{
    options.UseNpgsql(builder.Configuration.GetConnectionString("Default"));
});

var app = builder.Build();

app.MapControllers();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

using var scope = app.Services.GetService<IServiceScopeFactory>()!.CreateScope();
app.Logger.LogInformation("Migration starting...");
var context = scope.ServiceProvider.GetService<ApplicationDbContext>()!;
await context.Database.MigrateAsync();
app.Logger.LogInformation("Migration finished");

app.Run();