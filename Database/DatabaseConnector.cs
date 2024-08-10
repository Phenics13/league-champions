// using Coffee.Models;

using League.Models;

namespace League.Database;

public interface IDbConnector
{
    Champion GetChampionById(int id);
    List<Champion> GetChampions(int page, int pageSize, int rangeId, int classId, int positoinId, string sortBy, string search);
    List<Champion> GetAllChampions(int rangeId, int classId, int positionId, string sortBy, string search);
    List<PositionModel> GetPositions();
    List<PositionModel> GetPositionsByChampionId(int id);
    List<RangeModel> GetRanges();
    List<AbilityModel> GetAbilities();
    List<ClassModel> GetClasses();
    List<ClassModel> GetClassesByChampionId(int id);
    List<PriceModel> GetPrices();
    List<SkinModel> GetSkins();
    List<SkinModel> GetSkinsByChampionId(int id);
    Champion ConvertChampionModelToChampion(ChampionModel championModel);

    AbilityModel GetAbilityById(int id);
    Champion GetChampionByAbilityId(int id);
}

public class DbConnector : IDbConnector
{
    private readonly DatabaseContext _context;

    public DbConnector()
    {
        _context = new DatabaseContext();
    }

    public Champion GetChampionById(int id)
    {
        ChampionModel champion = _context.Champions?.FirstOrDefault(c => c.Id == id)!;
        champion.Range = _context.Ranges?.FirstOrDefault(r => r.Id == champion.RangeId);

        champion.PassiveAbility = _context.Abilities?.FirstOrDefault(a => a.Id == champion.PassiveAbilityId);
        champion.FirstAbility = _context.Abilities?.FirstOrDefault(a => a.Id == champion.FirstAbilityId);
        champion.SecondAbility = _context.Abilities?.FirstOrDefault(a => a.Id == champion.SecondAbilityId);
        champion.ThirdAbility = _context.Abilities?.FirstOrDefault(a => a.Id == champion.ThirdAbilityId);
        champion.UltimateAbility = _context.Abilities?.FirstOrDefault(a => a.Id == champion.UltimateAbilityId);

        champion.Price = _context.Prices?.FirstOrDefault(p => p.Id == champion.PriceId);

        return ConvertChampionModelToChampion(champion);
    }

    public Champion ConvertChampionModelToChampion(ChampionModel championModel)
    {
        var champion = new Champion
        {
            Id = championModel.Id,
            Name = championModel.Name,
            ReleaseDate = championModel.ReleaseDate,
            Lore = championModel.Lore,
            ImageUrl = championModel.ImageUrl,
            IconUrl = championModel.IconUrl,
            Range = championModel.Range,
            RangeId = championModel.RangeId,
            PassiveAbility = championModel.PassiveAbility,
            PassiveAbilityId = championModel.PassiveAbilityId,
            FirstAbility = championModel.FirstAbility,
            FirstAbilityId = championModel.FirstAbilityId,
            SecondAbility = championModel.SecondAbility,
            SecondAbilityId = championModel.SecondAbilityId,
            ThirdAbility = championModel.ThirdAbility,
            ThirdAbilityId = championModel.ThirdAbilityId,
            UltimateAbility = championModel.UltimateAbility,
            UltimateAbilityId = championModel.UltimateAbilityId,
            Price = championModel.Price,
            PriceId = championModel.PriceId,
            Damage = championModel.Damage,
            Toughness = championModel.Toughness,
            Control = championModel.Control,
            Mobility = championModel.Mobility,
            Utility = championModel.Utility,
            Difficulty = championModel.Difficulty,
        };

        champion.Classes = GetClassesByChampionId(champion.Id);
        champion.Positions = GetPositionsByChampionId(champion.Id);
        champion.Skins = GetSkinsByChampionId(champion.Id);

        return champion;
    }

    public List<Champion> GetChampions(
        int page = 1,
        int pageSize = 8,
        int rangeId = 0,
        int classId = 0,
        int positionId = 0,
        string sortBy = "from new to old",
        string search = ""
    )
    {
        List<Champion> champions = GetAllChampions(rangeId, classId, positionId, sortBy, search);

        champions = champions
            .Skip((page - 1) * pageSize)
            .Take(pageSize)
            .ToList()!;

        return champions;
    }

    public List<Champion> GetAllChampions(int rangeId = 0, int classId = 0, int positionId = 0, string sortBy = "from new to old", string search = "")
    {
        List<ChampionModel> championModels = _context.Champions?.ToList()!;

        championModels.ForEach(c =>
        {
            c.Range = _context.Ranges?.FirstOrDefault(r => r.Id == c.RangeId);

            c.PassiveAbility = _context.Abilities?.FirstOrDefault(a => a.Id == c.PassiveAbilityId);
            c.FirstAbility = _context.Abilities?.FirstOrDefault(a => a.Id == c.FirstAbilityId);
            c.SecondAbility = _context.Abilities?.FirstOrDefault(a => a.Id == c.SecondAbilityId);
            c.ThirdAbility = _context.Abilities?.FirstOrDefault(a => a.Id == c.ThirdAbilityId);
            c.UltimateAbility = _context.Abilities?.FirstOrDefault(a => a.Id == c.UltimateAbilityId);

            c.Price = _context.Prices?.FirstOrDefault(p => p.Id == c.PriceId);
        });

        List<Champion> champions = championModels.Select(ConvertChampionModelToChampion).ToList();

        if (rangeId != 0)
        {
            champions = champions
                .Where(c => c.RangeId == rangeId)
                .ToList()!;
        }

        if (classId != 0)
        {
            champions = champions
                .Where(c => c.Classes!.Any(cl => cl.Id == classId))
                .ToList()!;
        }

        if (positionId != 0)
        {
            champions = champions
                .Where(c => c.Positions!.Any(p => p.Id == positionId))
                .ToList()!;
        }

        switch (sortBy)
        {
            case "from old to new":
                champions = champions
                    .OrderBy(c => c.ReleaseDate)
                    .ToList()!;
                break;
            case "from new to old":
                champions = champions
                    .OrderByDescending(c => c.ReleaseDate)
                    .ToList()!;
                break;
            case "A-Z":
                champions = champions
                    .OrderBy(c => c.Name)
                    .ToList()!;
                break;
            case "Z-A":
                champions = champions
                    .OrderByDescending(c => c.Name)
                    .ToList()!;
                break;
            case "from cheap to expensive":
                champions = champions
                    .OrderBy(c => c.Price!.BlueEssence)
                    .ToList()!;
                break;
            case "from expensive to cheap":
                champions = champions
                    .OrderByDescending(c => c.Price!.BlueEssence)
                    .ToList()!;
                break;
            case "from easy to hard":
                champions = champions
                    .OrderBy(c => c.Difficulty)
                    .ToList()!;
                break;
            case "from hard to easy":
                champions = champions
                    .OrderByDescending(c => c.Difficulty)
                    .ToList()!;
                break;
        }

        if (!string.IsNullOrEmpty(search))
        {
            champions = champions
                .Where(c => c.Name!.ToLower().Contains(search.ToLower()))
                .ToList()!;
        }

        return champions;
    }

    public List<PositionModel> GetPositions()
    {
        return _context.Positions?.ToList()!;
    }

    public List<PositionModel> GetPositionsByChampionId(int id)
    {
        return _context.ChampionPositions?
            .Where(cp => cp.ChampionId == id)
            .Select(cp => cp.Position)
            .ToList()!;
    }

    public List<RangeModel> GetRanges()
    {
        return _context.Ranges?.ToList()!;
    }

    public List<AbilityModel> GetAbilities()
    {
        return _context.Abilities?.ToList()!;
    }

    public AbilityModel GetAbilityById(int id)
    {
        return _context.Abilities?.FirstOrDefault(a => a.Id == id)!;
    }

    public Champion GetChampionByAbilityId(int id)
    {
        ChampionModel championModel = _context.Champions?
            .FirstOrDefault(c =>
                c.PassiveAbilityId == id ||
                c.FirstAbilityId == id ||
                c.SecondAbilityId == id ||
                c.ThirdAbilityId == id ||
                c.UltimateAbilityId == id
            )!;
        return ConvertChampionModelToChampion(championModel);
    }

    public List<ClassModel> GetClasses()
    {
        return _context.Classes?.ToList()!;
    }

    public List<ClassModel> GetClassesByChampionId(int id)
    {
        return _context.ChampionClasses?
            .Where(cc => cc.ChampionId == id)
            .Select(cc => cc.Class)
            .ToList()!;
    }

    public List<PriceModel> GetPrices()
    {
        return _context.Prices?.ToList()!;
    }

    public List<SkinModel> GetSkins()
    {
        List<SkinModel> skinModels = _context.Skins?.ToList()!;
        skinModels.ForEach(s =>
        {
            s.Champion = _context.Champions?.FirstOrDefault(c => c.Id == s.ChampionId);
        });
        return skinModels;
    }

    public List<SkinModel> GetSkinsByChampionId(int id)
    {
        return _context.Skins?
            .Where(s => s.ChampionId == id)
            .ToList()!;
    }

    public void Dispose()
    {
        _context.Dispose();
    }
}
