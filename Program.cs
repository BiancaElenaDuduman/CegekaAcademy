using System;
using System.Collections.Generic;

namespace ConsoleApp1
{
    class Program
    {
        public class Car
        {
            private string model { get; set; }
            private string package { get; set; }
            //engine power unit: spark ignition, electric motor, hybrid, compression ignition, gas turbine
            private string enginePower { get; set; }
            private string transmission { get; set; }
            private int year { get; set; }
            private int speed { get; set; }
            static List<Car> cars;

            public Car(string model, string package, string engpow, string transm, int year, int speed)
            {
                this.model = model;
                this.package = package;
                this.enginePower = engpow;
                this.transmission = transm;
                this.year = year;
                this.speed = speed;
                Car.cars.Add(this);
            }

            static Car()
            {
                cars = new List<Car>();
            }

            //Create car from console
            public static Car CreateCar()
            {
                Console.WriteLine("\nCar model: ");
                string model = Console.ReadLine();
                Console.WriteLine("Car Package: ");
                string package = Console.ReadLine();
                Console.WriteLine("Car engine power: ");
                string engine = Console.ReadLine();
                Console.WriteLine("Car trasmission type: ");
                string transm = Console.ReadLine();
                Console.WriteLine("Car fabrication year: ");
                int year = Int32.Parse(Console.ReadLine());
                Console.WriteLine("Car max speed: ");
                int speed = Int32.Parse(Console.ReadLine());

                return new Car(model, package, engine, transm, year, speed);
            }

            public static void PrintCar(Car car)
            {
                Console.WriteLine($"{car.model} {car.package}, engine type: {car.enginePower}, transmission type: {car.transmission}, year: {car.year}, speed: {car.speed}km/h");
            }

            public static void PrintCars()
            {
                Console.WriteLine($"Total number of cars: {cars.Count}");
                Console.WriteLine("Cars: ");
                foreach(Car car in cars)
                {
                    Car.PrintCar(car);
                }
            }

            public static List<Car> SelectCar(string model)
            {
                List<Car> lista = new List<Car> { };

                foreach(Car c in cars)
                {
                    if (c.model == model)
                    {
                        lista.Add(c);
                    }
                }

                return lista;
            }
        }

        public static bool MainMenu()
        {
            Console.Clear();
            Console.WriteLine("Choose an option:");
            Console.WriteLine("1) Create new car");
            Console.WriteLine("2) Print all cars");
            Console.WriteLine("3) Select a car");
            Console.WriteLine("4) Exit");

            Console.Write("\r\n Select an option: ");


            switch (Console.ReadLine())
            {
                case "1":
                    Car newCar = Car.CreateCar();
                    Console.WriteLine("\nCar created! Press any key to choose another option...");
                    Console.ReadLine();

                    return true;
                case "2":
                    Console.WriteLine();
                    Car.PrintCars();
                    Console.WriteLine("\nPress any key to choose another option...");
                    Console.ReadLine();

                    return true;
                case "3":
                    Console.Write("\nChoose the car model:");
                    string model = Console.ReadLine();
                    List<Car> selected = Car.SelectCar(model);
                    if(selected.Count == 0)
                    {
                        Console.WriteLine("\n There are no cars of this model.");
                    }
                    else
                    {
                        Console.WriteLine("\nThe selected car(s): ");
                        foreach(Car c in selected)
                        {
                            Car.PrintCar(c);
                        }
                    }
                    Console.WriteLine("\nPress any key to choose another option...");
                    Console.ReadLine();

                    return true;
                case "4":
                    return false;
                default:
                    return true;
            }
        }

        static void Main(string[] args)
        {
            //Car car1 = new Car("Mercedes", "Premium", "2.2D", "manual" , 1990, 1000);
            //Car car2 = new Car("Dacia", "Deluxe", "2.4D", "automatic", 2012, 2000);
            //Car.PrintCars();
            //Car selected = Car.selectCar(car2);
            //Console.WriteLine(selected);

            bool showMenu = true;

            while (showMenu)
            {
                showMenu = MainMenu();
            }
        }
    }
}
