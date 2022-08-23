

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SW.Application.App.AppTask.Queries;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SW.Webapisl.Controllers
{
    public class TaskController : BaseController
    {

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [Route("GetLongestOpeningCrawlQuery")]
        public async Task<ActionResult<GetLongestOpeningCrawlQueryResponse>> GetLongestOpeningCrawlQuery()
        {
            GetLongestOpeningCrawlQuery query = new GetLongestOpeningCrawlQuery();
            return Ok(await Mediator.Send(query));
        }

        
        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [Route("GetMostPersonAppearQuery")]
        public async Task<ActionResult<GetMostPersonAppearQueryResponse>> GetMostPersonAppearQuery()
        {
            GetMostPersonAppearQuery query = new GetMostPersonAppearQuery();
            return Ok(await Mediator.Send(query));
        }
        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [Route("GetMostSpaciesAppearQuery")]
        public async Task<ActionResult<List<GetMostSpaciesAppearQueryResponse>>> GetMostSpaciesAppearQuery()
        {
            GetMostSpaciesAppearQuery query = new GetMostSpaciesAppearQuery();
            return Ok(await Mediator.Send(query));
        }

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [Route("GetPlanetPilotStarWarsUniverseQuery")]
        public async Task<ActionResult<List<GetPlanetPilotStarWarsUniverseQueryResponse>>> GetPlanetPilotStarWarsUniverseQuery()
        {
            GetPlanetPilotStarWarsUniverseQuery query = new GetPlanetPilotStarWarsUniverseQuery();
            return Ok(await Mediator.Send(query));
        }

    }
}
