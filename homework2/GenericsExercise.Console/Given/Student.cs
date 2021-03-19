namespace GenericsExercise.Console
{
    public class Student : IEntity
    {
        public string Id { get; set; }

        public string FisrtName { get; set; }
        public string LastName { get; set; }

        public Student(string id, string fname, string lname)
        {
            this.Id = id;
            this.FisrtName = fname;
            this.LastName = lname;
        }
    }
}