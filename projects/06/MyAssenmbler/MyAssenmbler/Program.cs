using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyAssenmbler
{
    class Program
    {
        static void Main(string[] args)
        {
            string currentDirectory = Directory.GetCurrentDirectory();
            var addFilePath = currentDirectory + @"\..\..\..\..\add\Add.asm";
            if (File.Exists(addFilePath))
            {
                Console.WriteLine("Current directory: " + addFilePath);
                try
                {
                    var parser = new Parser(addFilePath);
                }
                catch(Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
            else
            {
                Console.WriteLine("addが存在しません");
            }
            Console.ReadLine();
        }
    }
}
