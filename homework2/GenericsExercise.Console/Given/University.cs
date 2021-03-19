namespace GenericsExercise.Console
{
    public class University : IEntity
    {
        public string Id { get; set; }

        public string Name { get; set; }
        public string Address { get; set; }

        public University(string id, string name, string address)
        {
            this.Id = id;
            this.Name = name;
            this.Address = address;
        }
    }
}