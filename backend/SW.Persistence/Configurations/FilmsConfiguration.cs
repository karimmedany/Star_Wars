using SW.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace SW.Persistence.Configurations
{
    public class FilmsConfiguration : IEntityTypeConfiguration<Films>
    {
        public void Configure(EntityTypeBuilder<Films> builder)
        {

            builder.ToTable("films");
            builder.HasKey(i => i.id);



        }
    }
}
