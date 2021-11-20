using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class films_starshipsConfiguration : IEntityTypeConfiguration<films_starships>
    {
        public void Configure(EntityTypeBuilder<films_starships> builder)
        {

            builder.ToTable("films_starships");
            builder.HasKey(i => i.film_id);
            builder.HasKey(i => i.starship_id);

        }
    }
}
