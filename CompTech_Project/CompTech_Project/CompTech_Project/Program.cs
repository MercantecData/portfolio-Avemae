using System;

namespace CompTech_Project
{
    class Program
    {
        // Rock, Paper, Scissors point.
        static int rpsPlayerScore = 0;
        static int rpsCompScore = 0;

        static void Main(string[] args)
        {
            Menu();
        }

        static void Menu()
        {
            Console.WriteLine(" ----------- WELCOME ----------- ");
            Console.WriteLine("|1. Rock, Paper, Scissors!      |");
            Console.WriteLine("|2. Funky up your text!         |");
            Console.WriteLine("|3. Find the average of numbers!|");
            Console.WriteLine(" ------------------------------- ");

            string input = Console.ReadLine();
            if (input == "1")
            {
                // Win condition for Rock, Paper, Scissors.
                while (rpsCompScore < 5 || rpsPlayerScore < 5)
                {
                    RockPaperScissors();
                }
            }
            else if (input == "2")
            {
                FunkyText();
            }
            else if (input == "3")
            {
                TheAverageNumber();
            }
        }

        static void RockPaperScissors()
        {
            Random random = new Random();
            int compRandom = random.Next(1, 4);
            string compInput = "".ToLower();

            string resultMessage = "";

            Console.WriteLine("Rock, paper or scissors? Take your guess!");
            Console.WriteLine($"Your score: {rpsPlayerScore}. Computer's score: {rpsCompScore}.");
            string playerInput = Console.ReadLine().ToLower();
            
            
            // Gør det muligt at svare med et bogstav for hver mulighed.
            if (playerInput == "r")
            {
                playerInput = "rock";
            }
            else if (playerInput == "p")
            {
                playerInput = "paper";
            }
            else if (playerInput == "s")
            {
                playerInput = "scissors";
            }

            // Ændrer random generated tal til en af spillets mulige kommandoer.
            switch (compRandom)
            {
                case 1:
                    compInput = "rock";
                    break;
                case 2:
                    compInput = "paper";
                    break;
                case 3:
                    compInput = "scissors";
                    break;
                default:
                    compInput = "error";
                    break;
            }

            // Spilleregler.
            if (compInput == "rock")
            {
                if (playerInput == "paper")
                {
                    rpsPlayerScore += 1;
                    resultMessage = "Player won!";
                }
                else if (playerInput == "scissors")
                {
                    rpsCompScore += 1;
                    resultMessage = "Computer won!";
                }
                else if (playerInput == "rock")
                {
                    resultMessage = "It's a draw!";
                }
            }
            else if (compInput == "paper")
            {
                if (playerInput == "rock")
                {
                    rpsCompScore += 1;
                    resultMessage = "Computer won!";
                }
                else if (playerInput == "scissors")
                {
                    rpsPlayerScore += 1;
                    resultMessage = "Player won!";

                }
                else if (playerInput == "paper")
                {
                    resultMessage = "It's a draw!";
                }
            }
            else if (compInput == "scissors")
            {
                if (playerInput == "rock")
                {
                    rpsPlayerScore += 1;
                    resultMessage = "Player won!";
                }
                else if (playerInput == "paper")
                {
                    rpsCompScore += 1;
                    resultMessage = "Computer won!";
                }
                else if (playerInput == "scissors")
                {
                    resultMessage = "It's a draw!";
                }
            }
            Console.WriteLine(resultMessage);
        }

        static void FunkyText()
        {
            string text = Console.ReadLine();
            string result = "";
            char[] charArray = text.ToCharArray();
            
            for (int i = 0; i < charArray.Length; i+=2)
            {
                result += charArray[i].ToString().ToUpper();
                result += charArray[i+1].ToString().ToLower();
            }
            Console.WriteLine(result);
        }

        static void TheAverageNumber()
        {
            FindAverage(InputToArray());
        }
        static int[] InputToArray()
        {
            Console.WriteLine("Write 10 numbers you want an average of!");
            int[] numberArray = new int[10];

            for (int i = 0; i < numberArray.Length; i++)
            {
                Console.WriteLine($"Enter the {i + 1}. number:");
                numberArray[i] = int.Parse(Console.ReadLine());
            }
            return numberArray;

        }

        static void FindAverage (int[] numberArray)
        {
            double numbersTogether = 0;
            for (int i = 0; i < numberArray.Length; i++)
            {
                numbersTogether += numberArray[i];
            }

            double averageNumber = numbersTogether / numberArray.Length;
            Console.WriteLine($"The average of the numbers you entered is: {averageNumber}");
        }
        
    }
}
