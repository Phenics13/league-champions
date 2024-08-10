using League.Database;
using League.Models;
using League.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace League.Controllers;

public class LeagueController : Controller
{

    private readonly IDbConnector _dbConnector;

    public LeagueController()
    {
        _dbConnector = new DbConnector();
    }

    public IActionResult Index()
    {
        var model = new IndexModel
        {
            Ranges = _dbConnector.GetRanges(),
            Classes = _dbConnector.GetClasses(),
            Positions = _dbConnector.GetPositions()
        };
        return View(model);
    }

    [HttpGet]
    public IActionResult LoadChampions(
        int page = 1,
        int pageSize = 8,
        int rangeId = 0,
        int classId = 0,
        int positionId = 0,
        string sortBy = "from new to old",
        string search = ""
    )
    {
        List<Champion> champions = _dbConnector.GetChampions(
            page, pageSize, rangeId, classId, positionId, sortBy, search
        );

        int totalPages = GetTotalPages(
            pageSize,
            _dbConnector.GetAllChampions(
                rangeId, classId, positionId, sortBy, search
            ).Count()
        );

        ViewBag.TotalPages = totalPages;
        ViewBag.CurrentPage = page;

        return PartialView("_Champions", champions);
    }

    public IActionResult FilterChampions(
        int page = 1,
        int pageSize = 8,
        int rangeId = 0,
        int classId = 0,
        int positionId = 0,
        string sortBy = "from new to old",
        string search = ""
    )
    {
        return RedirectToAction("LoadChampions", new
        {
            page = page,
            pageSize = pageSize,
            rangeId = rangeId,
            classId = classId,
            positionId = positionId,
            sortBy = sortBy,
            search = search
        });
    }

    [HttpGet]
    [Route("League/Details/{id}")]
    public IActionResult Details([FromRoute] int id)
    {
        Champion champion = _dbConnector.GetChampionById(id);
        Console.WriteLine(champion.RangeId);
        return View(champion);
    }

    [HttpGet]
    [Route("league/PickAbility/{id}")]
    public IActionResult PickAbility([FromRoute] int id)
    {
        AbilityModel pickedAbility = _dbConnector.GetAbilityById(id);
        Champion champion = _dbConnector.GetChampionByAbilityId(id);

        AbilityModel passiveAbility = _dbConnector.GetAbilityById(champion.PassiveAbilityId);
        AbilityModel firstAbility = _dbConnector.GetAbilityById(champion.FirstAbilityId);
        AbilityModel secondAbility = _dbConnector.GetAbilityById(champion.SecondAbilityId);
        AbilityModel thirdAbility = _dbConnector.GetAbilityById(champion.ThirdAbilityId);
        AbilityModel ultimateAbility = _dbConnector.GetAbilityById(champion.UltimateAbilityId);

        var model = new AbilitiesModel
        {
            SelectedAbility = pickedAbility,
            PassiveAbility = passiveAbility,
            FirstAbility = firstAbility,
            SecondAbility = secondAbility,
            ThirdAbility = thirdAbility,
            UltimateAbility = ultimateAbility
        };

        return PartialView("_Abilities", model);
    }

    public IActionResult Skin(int id)
    {
        Champion champion = _dbConnector.GetChampionById(id);
        return View(champion);
    }

    private int GetTotalPages(int pageSize, int totalItems)
    {
        int totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);
        return totalPages;
    }
}
