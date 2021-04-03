using System;
using System.Collections.Generic;
using System.Text;
using ConsoleApp2.Interfaces;

namespace ConsoleApp2.Entities
{
    public class Car : IEntity
    {
        public Guid Id { get; set; }

        public string Brand { get; set; }

        public string Model { get; set; }
        public string EnginePower { get; set; }
        public int Speed { get; set; }
        public int Year { get; set; }
        public double Price { get; set; }
    }
}
