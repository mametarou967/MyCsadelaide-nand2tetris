using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyAssenmbler
{
    public class Parser
    {
        private string _filePath;
        int index = 0;
        // ファイルパスを格納するためのプライベート変数
        // コンストラクタ

        string[] lines;

        public Parser(string filePath)
        {
            lines = File.ReadAllLines(filePath);
        }

        public bool hasMoreCommands() => throw new Exception();

        public void advance() => throw new Exception();

        public string symbol() => throw new Exception(); // Symbolまたは10

        public string dest() => throw new Exception(); // 8

        public string comp() => throw new Exception(); // 28

        public string jump() => throw new Exception(); // 8

    }
}
