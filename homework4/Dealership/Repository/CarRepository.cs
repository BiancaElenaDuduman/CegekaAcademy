using Dealership.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Dealership.Repository
{
    public class CarRepository
    {
        private List<Car> carList = new List<Car>()
        {
            new Car(1, "Mercebenz", "electric", 300, 2020, 40000),
            new Car(2, "Dacia", "gas", 200, 1999, 80000),
            new Car(3, "Logan", "petrol", 500, 2021, 100000)
        };

        public List<Car> GetCarList()
        {
            return this.carList;
        }

        public Car GetCarByBrand(string brand)
        {
            return this.carList.Find(a => a.brand == brand);
        }

        public void AddCar(Car car)
        {
            this.carList.Add(car);
        }
    }
}
