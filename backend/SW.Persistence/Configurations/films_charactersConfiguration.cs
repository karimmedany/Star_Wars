using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace SW.Persistence.Configurations
{
    public class films_charactersConfiguration : IEntityTypeConfiguration<films_characters>
    {
        public void Configure(EntityTypeBuilder<films_characters> builder)
        {

            builder.ToTable("films_characters");
            builder.HasKey(i => i.film_id);
            builder.HasKey(i => i.people_id);

        }
    }
}
