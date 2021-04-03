using System;
using System.Collections.Generic;
using System.Text;
using ConsoleApp2.Entities;
using Microsoft.EntityFrameworkCore;

namespace ConsoleApp2.Database
{
    public class DealershipContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=(LocalDb)\MSSQLLocalDb;Initial Catalog=session_six;");
        }

        public DbSet<Car> Cars { get; set; }

        public DbSet<Customer> Customers { get; set; }
    }
}
