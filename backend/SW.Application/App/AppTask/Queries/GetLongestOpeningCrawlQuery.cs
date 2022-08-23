using MediatR;
using Microsoft.EntityFrameworkCore;
using SW.Application.Common.Interfaces;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SW.Application.App.AppTask.Queries
{
    public class GetLongestOpeningCrawlQuery : IRequest<GetLongestOpeningCrawlQueryResponse>
    {


        public class GetIsUserExistByEmailQueryHander : IRequestHandler<GetLongestOpeningCrawlQuery, GetLongestOpeningCrawlQueryResponse>
        {
            private readonly IDBContext _context;


            public GetIsUserExistByEmailQueryHander(IDBContext context)
            {
                _context = context;

            }

            public async Task<GetLongestOpeningCrawlQueryResponse> Handle(GetLongestOpeningCrawlQuery request, CancellationToken cancellationToken)
            {
                GetLongestOpeningCrawlQueryResponse response = new GetLongestOpeningCrawlQueryResponse();
     
                var selectedfilm = await _context.Films.OrderBy(i => i.opening_crawl.Length).FirstOrDefaultAsync();
                if (selectedfilm != null)
                {
                    response.Result = selectedfilm.title;
                }

                return response;
            }
        }
    }

    public class GetLongestOpeningCrawlQueryResponse
    {

        public string Result { get; set; } 
    }
}
