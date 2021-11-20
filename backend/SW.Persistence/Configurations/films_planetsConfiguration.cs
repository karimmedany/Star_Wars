using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class films_planetsConfiguration : IEntityTypeConfiguration<films_planets>
    {
        public void Configure(EntityTypeBuilder<films_planets> builder)
        {

            builder.ToTable("films_planets");
            builder.HasKey(i => i.film_id);
            builder.HasKey(i => i.planet_id);

        }
    }
}
