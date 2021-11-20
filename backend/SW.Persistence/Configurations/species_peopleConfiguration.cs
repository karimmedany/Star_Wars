using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class species_peopleConfiguration : IEntityTypeConfiguration<species_people>
    {
        public void Configure(EntityTypeBuilder<species_people> builder)
        {

            builder.ToTable("species_people");
            builder.HasKey(i => i.people_id);
            builder.HasKey(i => i.species_id);

        }
    }
}
