using League.Models;
using Microsoft.EntityFrameworkCore;

namespace League.Database;

public class DatabaseContext : DbContext
{
  public DbSet<PositionModel>? Positions { get; set; }
  public DbSet<RangeModel>? Ranges { get; set; }
  public DbSet<AbilityModel>? Abilities { get; set; }
  public DbSet<ClassModel>? Classes { get; set; }
  public DbSet<ChampionModel>? Champions { get; set; }
  public DbSet<ChampionClassModel>? ChampionClasses { get; set; }
  public DbSet<ChampionPositionModel>? ChampionPositions { get; set; }
  public DbSet<SkinModel>? Skins { get; set; }
  public DbSet<PriceModel>? Prices { get; set; }

  protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
  {
    optionsBuilder.UseSqlite("Data Source=./Database/LeagueDB.db");
  }

  protected override void OnModelCreating(ModelBuilder modelBuilder)
  {
    modelBuilder.Entity<ChampionClassModel>()
      .HasKey(cc => new { cc.ChampionId, cc.ClassId });
    modelBuilder.Entity<ChampionPositionModel>()
      .HasKey(cp => new { cp.ChampionId, cp.PositionId });
  }
}
