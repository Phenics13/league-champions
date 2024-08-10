using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class PriceModel
{
    public int Id { get; set; }
    [Column("blue_essence")]
    public int BlueEssence { get; set; }
    [Column("riot_points")]
    public int RiotPoints { get; set; }
}
