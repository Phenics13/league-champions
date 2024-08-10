using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class PositionModel
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public string? Description { get; set; }

    [Column("image_url")]
    public string? ImageUrl { get; set; }
}
