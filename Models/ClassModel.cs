using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class ClassModel
{
    public int Id { get; set; }
    public string? Name { get; set; }

    [Column("image_url")]
    public string? ImageUrl { get; set; }
}
