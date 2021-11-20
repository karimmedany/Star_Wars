using MediatR;
using Microsoft.EntityFrameworkCore;
using SW.Application.Common.Interfaces;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SW.Application.App.AppTask.Queries
{
    public class GetMostSpaciesAppearQuery : IRequest<List<GetMostSpaciesAppearQueryResponse>>
    {


        public class GetMostSpaciesAppearQueryHander : IRequestHandler<GetMostSpaciesAppearQuery, List<GetMostSpaciesAppearQueryResponse>>
        {
            private readonly IDBContext _context;


            public GetMostSpaciesAppearQueryHander(IDBContext context)
            {
                _context = context;

            }

            public async Task<List<GetMostSpaciesAppearQueryResponse>> Handle(GetMostSpaciesAppearQuery request, CancellationToken cancellationToken)
            {
               List< GetMostSpaciesAppearQueryResponse> response = new List<GetMostSpaciesAppearQueryResponse>();


                var selectedSpecies = await  (from film in _context.Films
                                    join fs in _context.FilmsSpecies
                                    on film.id equals fs.film_id 
                                    group fs by fs.species_id into cp
                                    orderby cp.Count()  descending
                                    select new { speciesId = cp.Key, count = cp.Count() }).Take(3).ToListAsync();

                foreach(var i in selectedSpecies)
                {
                    var selectedS = await _context.Species.FirstOrDefaultAsync(f => f.id == i.speciesId);
                    if (selectedS != null)
                    {
                        GetMostSpaciesAppearQueryResponse item = new GetMostSpaciesAppearQueryResponse()
                        {
                            count = i.count,
                            Result = selectedS.name
                        };
                        response.Add(item);
                    }

                }

                return response;
            }
        }
    }

    public class GetMostSpaciesAppearQueryResponse
    {
        public int count { get; set; }
        public string Result { get; set; } 
    }

}
