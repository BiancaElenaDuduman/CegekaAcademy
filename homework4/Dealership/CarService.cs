using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dealership.Repository;
using Dealership.Model;

namespace Dealership
{
    public class CarService : CarRepository
    {
        private CarRepository carRepository { get; }

        public CarService(CarRepository userRepo)
        {
            this.carRepository = userRepo;
        }

        public Car GetCar(string brand)
        {
            return this.carRepository.GetCarByBrand(brand);
        }

        public List<Car> GetCars()
        {
            return this.carRepository.GetCarList();
        }
    }
}
