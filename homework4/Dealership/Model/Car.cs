using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Dealership.Model
{
    public class Car
    {
        public int id { set; get; }
        public string brand { set; get; }
        public string enginePower {set; get;}
        public int speed { set; get; }
        public int year { set; get; }
        public double price { set; get; }

        public Car(int id, string brand, string enginePower, int speed, int year, double price)
        {
            this.id = id;
            this.brand = brand;
            this.enginePower = enginePower;
            this.speed = speed;
            this.year = year;
            this.price = price;
        }
    }
}
