using MediatR;
using Microsoft.EntityFrameworkCore;
using SW.Application.Common.Interfaces;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SW.Application.App.AppTask.Queries
{
    public class GetMostPersonAppearQuery : IRequest<GetMostPersonAppearQueryResponse>
    {


        public class GetMostPersonAppearQueryHander : IRequestHandler<GetMostPersonAppearQuery, GetMostPersonAppearQueryResponse>
        {
            private readonly IDBContext _context;


            public GetMostPersonAppearQueryHander(IDBContext context)
            {
                _context = context;

            }

            public async Task<GetMostPersonAppearQueryResponse> Handle(GetMostPersonAppearQuery request, CancellationToken cancellationToken)
            {
                GetMostPersonAppearQueryResponse response = new GetMostPersonAppearQueryResponse();

                var sss = _context.Films.ToList();
                var selectedCharacter = await (from film in _context.Films
                                    join character in _context.FilmsCharacters
                                    on film.id equals character.film_id 
                                               group character by character.people_id into cp
                                    orderby cp.Count()  descending
                                    select cp.Key).FirstOrDefaultAsync();

              var selectedPerson = await  _context.People.FirstOrDefaultAsync(i => i.id == selectedCharacter);
                if(selectedPerson!=null)
                {
                    response.Result = selectedPerson.name;
                }
                return response;
            }
        }
    }

    public class GetMostPersonAppearQueryResponse
    {

        public string Result { get; set; } 
    }
}
