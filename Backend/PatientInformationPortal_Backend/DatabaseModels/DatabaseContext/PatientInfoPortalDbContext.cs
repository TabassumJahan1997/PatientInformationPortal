using DatabaseModels.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseModels.DatabaseContext
{
    public class PatientInfoPortalDbContext:DbContext
    {
        public PatientInfoPortalDbContext(DbContextOptions<PatientInfoPortalDbContext> options):base(options)
        {
            
        }

        public DbSet<Allergy> tblAllergy { get; set; } = default!;
        public DbSet<Disease> tblDisease { get; set; } = default!;
        public DbSet<NCD> tblNCD { get; set; } = default!;
        public DbSet<Patient> tblPatient { get; set; } = default!;
        public DbSet<NCD_Details> tblNCD_Details { get; set; } = default!;
        public DbSet<Allergies_Details> tblAllergies_Details { get; set; } = default!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);

            string connectionString = "Server=.;Database=PatientInformationPortalDb;Trusted_Connection=true;";
            optionsBuilder.UseSqlServer(connectionString);
        }
    }
}
