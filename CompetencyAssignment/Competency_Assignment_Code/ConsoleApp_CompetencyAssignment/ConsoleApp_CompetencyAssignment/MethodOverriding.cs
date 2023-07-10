using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_CompetencyAssignment
{
    public class Season
    {
        public virtual void Print()
        {
            Console.WriteLine("I am Season");
        }
    }

    public class Summer : Season
    {
        public override void Print()
        {
            Console.WriteLine("I am Summer");
        }
    }

    public class Winter : Season
    {
        public override void Print()
        {
            Console.WriteLine("I am Winter");
        }
    }
}
