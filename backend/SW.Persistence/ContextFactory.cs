using SW.Persistence.Infrastructure;
using Microsoft.EntityFrameworkCore;


namespace SW.Persistence
{
    public class ContextFactory : DesignTimeDbContextFactoryBase<DbContext>
    {
        protected override DbContext CreateNewInstance(DbContextOptions<DbContext> options)
        {
            return new DbContext(options);
        }
    }
}
