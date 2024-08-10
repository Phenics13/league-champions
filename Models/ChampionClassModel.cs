using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class ChampionClassModel
{
    [Column("champion_id")]
    public int ChampionId { get; set; }
    public ChampionModel? Champion { get; set; }

    [Column("class_id")]
    public int ClassId { get; set; }
    public ClassModel? Class { get; set; }
}
