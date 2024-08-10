using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class SkinModel
{
    public int Id { get; set; }
    public string? Name { get; set; }

    [Column("release_date")]
    public string? ReleaseDate { get; set; }

    [Column("image_url")]
    public string? ImageUrl { get; set; }

    [Column("champion_id")]
    public int ChampionId { get; set; }
    public ChampionModel? Champion { get; set; }

    [Column("riot_points")]
    public int? RiotPoints { get; set; }
}
