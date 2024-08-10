using League.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace League.ViewModels
{
    public class ChampionsFormModel : PageModel
    {
        public List<RangeModel> Ranges { get; set; }
        public List<ClassModel> Classes { get; set; }
        public List<PositionModel> Positions { get; set; }
        public int PickedPositionId { get; set; }

        public ChampionsFormModel()
        {
            Ranges = new List<RangeModel>();
            Classes = new List<ClassModel>();
            Positions = new List<PositionModel>();
        }
        public void OnGet()
        {
        }
    }
}
