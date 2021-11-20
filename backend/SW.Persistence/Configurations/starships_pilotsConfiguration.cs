using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class starships_pilotsConfiguration : IEntityTypeConfiguration<starships_pilots>
    {
        public void Configure(EntityTypeBuilder<starships_pilots> builder)
        {

            builder.ToTable("starships_pilots");
            builder.HasKey(i => i.starship_id);
            builder.HasKey(i => i.people_id);

        }
    }
}
