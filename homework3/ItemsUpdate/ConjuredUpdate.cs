using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace csharpcore
{
    public class ConjuredUpdate
    {
        public static void Update(Item item)
        {
            item.SellIn--;

            if(item.Quality > 0)
            {
                if (item.SellIn > 0)
                {
                    item.Quality -= 2;
                }
                if (item.SellIn <= 0)
                {
                    item.Quality -= 4;
                }
            }
            
            if(item.Quality < 0)
            {
                item.Quality = 0;
            }
        }
    }
}
