using League.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace League.ViewModels
{
    public class AbilitiesModel : PageModel
    {
        public AbilityModel? SelectedAbility { get; set; }
        public AbilityModel? PassiveAbility { get; set; }
        public AbilityModel? FirstAbility { get; set; }
        public AbilityModel? SecondAbility { get; set; }
        public AbilityModel? ThirdAbility { get; set; }
        public AbilityModel? UltimateAbility { get; set; }

        public List<AbilityModel> Abilities =>
            new List<AbilityModel> {
                PassiveAbility ?? new AbilityModel(),
                FirstAbility ?? new AbilityModel(),
                SecondAbility ?? new AbilityModel(),
                ThirdAbility ?? new AbilityModel(),
                UltimateAbility ?? new AbilityModel()
            };

        public void OnGet()
        {
        }
    }
}
