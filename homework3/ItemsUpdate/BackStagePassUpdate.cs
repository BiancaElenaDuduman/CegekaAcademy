using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace csharpcore
{
    public class BackStagePassUpdate
    {
        public static void Update(Item item)
        {
            item.SellIn--;

            if (item.Quality < 50)
            {
                item.Quality++;
            }

            if (item.SellIn < 10)
            {
                if (item.Quality < 50) 
                { 
                    item.Quality++; 
                }
            }

            if (item.SellIn < 5)
            {
                if (item.Quality < 50)
                {
                    item.Quality++;
                }
            }

            if (item.SellIn < 0)
            {
                item.Quality = 0;
            }
        }
    }
}
