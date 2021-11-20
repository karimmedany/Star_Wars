using SW.Application.Common.Interfaces;
using SW.Domain.Entities;
using SW.Persistence.Configurations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System.Threading.Tasks;

namespace SW.Persistence
{
    public partial class DBContext : DbContext, IDBContext
    {


        public DBContext()
        {
        }

            public DBContext(DbContextOptions<DBContext> options)
            : base(options)
        {
        }


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
        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new FilmsConfiguration());
            modelBuilder.ApplyConfiguration(new films_charactersConfiguration());
            modelBuilder.ApplyConfiguration(new films_speciesConfiguration());
            modelBuilder.ApplyConfiguration(new films_planetsConfiguration());
            modelBuilder.ApplyConfiguration(new films_starshipsConfiguration());
            modelBuilder.ApplyConfiguration(new starships_pilotsConfiguration());


            modelBuilder.ApplyConfiguration(new PeopleConfiguration());
            modelBuilder.ApplyConfiguration(new SpeciesConfiguration());
            modelBuilder.ApplyConfiguration(new planetsConfiguration());
            modelBuilder.ApplyConfiguration(new species_peopleConfiguration());


            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        public Task<IDbContextTransaction> BeginTransactionAsync()
        {
          return   this.Database.BeginTransactionAsync();
        }
    }
}
