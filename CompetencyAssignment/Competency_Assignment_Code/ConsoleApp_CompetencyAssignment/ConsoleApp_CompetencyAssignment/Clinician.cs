using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_CompetencyAssignment
{
    internal class Clinician
    {
        public string Name { get; set; } = null!;
        public string HospitalName { get; set; } = null!;

        public bool login(string in_username, string in_password)
        {
            return true;
        }

        private bool isSessionExists(string in_username)
        {
            return false;
        }
    }

}
