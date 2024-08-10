using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class ChampionPositionModel
{
    [Column("champion_id")]
    public int ChampionId { get; set; }
    public ChampionModel? Champion { get; set; }

    [Column("position_id")]
    public int PositionId { get; set; }
    public PositionModel? Position { get; set; }
}
