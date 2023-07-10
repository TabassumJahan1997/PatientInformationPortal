using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_CompetencyAssignment
{
    public class Numbers
    {
        public int AddNumbers(int num1, int num2)
        {
            return num1 + num2;
        }

        public int AddNumbers(List<int> numbers)
        {
            int sum = 0;
            for (int i = 0; i < numbers.Count; i++)
            {
                sum = sum + numbers[i];
            }
            return sum;
        }

        public double AddNumbers(double num1, double num2)
        {
            return num1 + num2;
        }
    }

}
