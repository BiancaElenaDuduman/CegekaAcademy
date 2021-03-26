using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Glimpse.Core.Extensibility;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Dealership.Repository;
using Dealership.Model;

namespace Dealership.Controllers
{
    [Route("api/cars")]
    [ApiController]
    public class CarController : Controller
    {
        private readonly CarRepository carRepos;

        public CarController(CarRepository carRepo)
        {
            this.carRepos = carRepo;
        }

        // GET api/values
        [HttpGet]
        public List<Car> GetCars()
        {
            return carRepos.GetCarList();
        }

        
        // GET api/values/5
        [HttpGet("{s}")]
        public Car GetCar(string s)
        {
            return carRepos.GetCarByBrand(s);
        }

        [HttpPost("post")]
        public Car PostCar([FromBody] Car car)
        {
            carRepos.AddCar(car);
            Console.WriteLine(carRepos.GetCarList()[3].brand);
            return car;
        }
    }
}