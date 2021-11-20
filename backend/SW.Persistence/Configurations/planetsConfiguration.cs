using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace SW.Persistence.Configurations
{
    public class planetsConfiguration : IEntityTypeConfiguration<planets>
    {
        public void Configure(EntityTypeBuilder<planets> builder)
        {

            builder.ToTable("planets");
            builder.HasKey(i => i.id);

        }
    }
}
