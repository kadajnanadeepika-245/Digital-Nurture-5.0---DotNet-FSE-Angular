using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace JWTAuthenticationAPI.Controllers
{
    [ApiController]

    [Route("api/[controller]")]

    [Authorize]

    public class WeatherController : ControllerBase
    {
        [HttpGet]

        public IActionResult Get()
        {
            return Ok(new string[]
            {
                "Sunny",
                "Rainy",
                "Cloudy"
            });
        }
    }
}
