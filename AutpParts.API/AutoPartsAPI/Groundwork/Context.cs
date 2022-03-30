using AutoPartsAPI.Models;
using System.Data.Entity;

namespace Groundwork
{
    public class Context : DbContext
    {
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // default schema
            modelBuilder.HasDefaultSchema("Admin");

            //toTable
            modelBuilder.Entity<User>().ToTable("User");


            //map columns
            modelBuilder.Entity<User>().Property(s => s.FirstName)
            .HasColumnName("FirstName");
        }
        public virtual DbSet<User> Users { get; set; }
    }
}
