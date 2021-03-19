using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Text;

namespace GenericsExercise.Console
{
    class StudentService
    {
        static Persistence persist = new Persistence();

        public static void InsertStudent(Student student)
        {
            persist.InsertAsync(student);
        }

        public static async Task<IEnumerable<Student>> GetAll()
        {
            return await persist.GetAllAsync<Student>();
        }
    }
}
