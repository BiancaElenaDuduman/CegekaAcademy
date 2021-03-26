using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Dealership.Model
{
    public class Customer
    {
        private int id { set; get; }
        private string firstName { set; get; }
        private string lastName { set; get; }
        private Car carBought { set; get; }

        public Customer(int id, string firstName, string lastName, Car carBought)
        {
            this.id = id;
            this.firstName = firstName;
            this.lastName = lastName;
            this.carBought = carBought;
        }
    }
}
