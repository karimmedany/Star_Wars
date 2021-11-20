using MediatR;
using Microsoft.EntityFrameworkCore;
using SW.Application.Common.Interfaces;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SW.Application.App.AppTask.Queries
{
    public class GetPlanetPilotStarWarsUniverseQuery : IRequest<List<GetPlanetPilotStarWarsUniverseQueryResponse>>
    {


        public class GetPlanetPilotStarWarsUniverseQueryHander : IRequestHandler<GetPlanetPilotStarWarsUniverseQuery, List<GetPlanetPilotStarWarsUniverseQueryResponse>>
        {
            private readonly IDBContext _context;


            public GetPlanetPilotStarWarsUniverseQueryHander(IDBContext context)
            {
                _context = context;

            }

            public async Task<List<GetPlanetPilotStarWarsUniverseQueryResponse>> Handle(GetPlanetPilotStarWarsUniverseQuery request, CancellationToken cancellationToken)
            {
                List<GetPlanetPilotStarWarsUniverseQueryResponse> response = new List<GetPlanetPilotStarWarsUniverseQueryResponse>();


                var selectedSpecies = await (from planet in _context.Planets
                                             join fp in _context.FilmsPlanets
                                             on planet.id equals fp.planet_id
                                             join fs in _context.FilmsStarships
                                             on fp.film_id equals fs.film_id

                                             join sp in _context.StarshipsPilots
                               on fs.starship_id equals sp.starship_id
                                             group fs by fs.starship_id into cp
                                             orderby cp.Count() descending
                                             select new { starshipId = cp.Key, count = cp.Count() }).Take(4).ToListAsync();



                foreach (var i in selectedSpecies)
                {

                        var planetSelected = await (from planet in _context.Planets
                                                    join fp in _context.FilmsPlanets
                                                    on planet.id equals fp.planet_id
                                                    join fs in _context.FilmsStarships
                                                    on fp.film_id equals fs.film_id
                                                    where fs.starship_id == i.starshipId
                                                    select new { planetName = planet.name }).FirstOrDefaultAsync();

                        var pilotsSelected = await (from people in _context.People
                                                    join starshipPilot in _context.StarshipsPilots
                                                    on people.id equals starshipPilot.people_id
                                                    join sp in _context.SpeciesPeople
                                                    on people.id equals sp.people_id
                                                    join s in _context.Species
                                                    on sp.species_id equals s.id
                                                    where starshipPilot.starship_id == i.starshipId
                                                    select new { pilotName = people.name, speciesName = s.name}).ToListAsync();


                    if (planetSelected != null)
                        {
                            GetPlanetPilotStarWarsUniverseQueryResponse item = new GetPlanetPilotStarWarsUniverseQueryResponse()
                            {
                                count = i.count,
                                Planet = planetSelected.planetName
                            };
                            foreach (var p in pilotsSelected)
                            {
                                item.Pilot += p.pilotName;
                                item.Pilot += " - ";
                                item.Pilot += p.speciesName;
                            }

                            response.Add(item);
                        }
                    }

                

                return response;
            }
        }
    }

    public class GetPlanetPilotStarWarsUniverseQueryResponse
    {
        public int count { get; set; }
        public string Planet { get; set; } 
        public string Pilot { get; set; }
    }

}
