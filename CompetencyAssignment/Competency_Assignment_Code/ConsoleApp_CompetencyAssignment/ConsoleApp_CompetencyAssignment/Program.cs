// See https://aka.ms/new-console-template for more information

using ConsoleApp_CompetencyAssignment;

Console.WriteLine("Hello, World!");

//-------------Method overloading-----------------
Numbers numbers = new Numbers();

int listNumbersSum = numbers.AddNumbers(new List<int> { 1,2,3,4,5});
Console.WriteLine("List Number Sum : "+ listNumbersSum);

int intNumbersSum = numbers.AddNumbers(2, 5);
Console.WriteLine("Int Number Sum : "+ intNumbersSum);

double decimalNumbersSum = numbers.AddNumbers(5.23, 2.22);
Console.WriteLine("Decimal Number Sum : "+ decimalNumbersSum);


//-------------Method overriding-----------------
Season season = new Season();
season.Print();

Season summer = new Summer();
summer.Print();

Season winter = new Winter();
winter.Print();


CompareNumbers compareNumbers = new CompareNumbers();
compareNumbers.PrintMinNum(30,20,10);

public class CompareNumbers
{
    public void PrintMinNum(int n1, int n2, int n3)
    {
        int min = 0;
        if(n1 < n2)
        {
            min = n1;
        }
        else
        {
            min = n2;
        }

        if(n3<min)
        {
            min = n3;
        }

        Console.WriteLine($"Minimum Number : {min}");
    }
}
