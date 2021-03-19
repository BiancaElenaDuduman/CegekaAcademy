using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Text;

namespace GenericsExercise.Console
{
    class UniversityService
    {
        static Persistence persist = new Persistence();

        public static void InsertUniversity(University university)
        {
            persist.InsertAsync(university);
        }

        public static async Task<IEnumerable<University>> GetAll()
        {
            return await persist.GetAllAsync<University>();
        }
    }
}
