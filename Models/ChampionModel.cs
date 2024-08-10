using System.ComponentModel.DataAnnotations.Schema;

namespace League.Models;

public class ChampionModel
{
    public int Id { get; set; }
    public string? Name { get; set; }

    [Column("release_date")]
    public string? ReleaseDate { get; set; }

    public string? Lore { get; set; }

    [Column("image_url")]
    public string? ImageUrl { get; set; }
    [Column("icon_url")]
    public string? IconUrl { get; set; }
    [Column("range_id")]
    public int RangeId { get; set; }
    public RangeModel? Range { get; set; }
    [Column("passive_ability_id")]
    public int PassiveAbilityId { get; set; }
    public AbilityModel? PassiveAbility { get; set; }
    [Column("first_ability_id")]
    public int FirstAbilityId { get; set; }
    public AbilityModel? FirstAbility { get; set; }
    [Column("second_ability_id")]
    public int SecondAbilityId { get; set; }
    public AbilityModel? SecondAbility { get; set; }
    [Column("third_ability_id")]
    public int ThirdAbilityId { get; set; }
    public AbilityModel? ThirdAbility { get; set; }
    [Column("ultimate_ability_id")]
    public int UltimateAbilityId { get; set; }
    public AbilityModel? UltimateAbility { get; set; }

    [Column("price_id")]
    public int PriceId { get; set; }
    public PriceModel? Price { get; set; }

    public int Damage { get; set; }
    public int Toughness { get; set; }
    public int Control { get; set; }
    public int Mobility { get; set; }
    public int Utility { get; set; }

    public int Difficulty { get; set; }

}
