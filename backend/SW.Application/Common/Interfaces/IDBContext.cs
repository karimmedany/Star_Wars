using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System.Threading;
using System.Threading.Tasks;

namespace SW.Application.Common.Interfaces
{
    public interface IDBContext
    {
        public DbSet<Films> Films { get; set; }

        public DbSet<films_characters> FilmsCharacters { get; set; }
        public DbSet<films_planets> FilmsPlanets { get; set; }
        public DbSet<films_species> FilmsSpecies { get; set; }
        public DbSet<films_starships> FilmsStarships { get; set; }
        public DbSet<starships_pilots> StarshipsPilots { get; set; }
        public DbSet<People> People { get; set; }
        public DbSet<Species> Species { get; set; }
        public DbSet<planets> Planets { get; set; }

        public DbSet<species_people> SpeciesPeople { get; set; }

        Task<int> SaveChangesAsync(CancellationToken cancellationToken);
        Task<IDbContextTransaction> BeginTransactionAsync();
    }
}
