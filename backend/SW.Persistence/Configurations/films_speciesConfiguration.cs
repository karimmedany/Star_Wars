using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class films_speciesConfiguration : IEntityTypeConfiguration<films_species>
    {
        public void Configure(EntityTypeBuilder<films_species> builder)
        {

            builder.ToTable("films_species");
            builder.HasKey(i => i.film_id);
            builder.HasKey(i => i.species_id);

        }
    }
}
