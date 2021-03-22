using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace csharpcore
{
    public class StandardItemUpdate
    {
        public static void Update(Item item)
        {
            item.SellIn--;

            if(item.Quality > 0)
            {
                item.Quality--;
            }

            if(item.SellIn < 0)
            {
                if(item.Quality > 0)
                {
                    item.Quality--;
                }
            }
        }
    }
}
