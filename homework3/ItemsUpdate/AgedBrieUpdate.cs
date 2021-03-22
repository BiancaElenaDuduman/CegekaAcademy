using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace csharpcore
{
    public class AgedBrieUpdate
    {
        public static void Update(Item item)
        {
            item.SellIn--;

            if(item.Quality < 50)
            {
                item.Quality++;
            }
        }
    }
}
