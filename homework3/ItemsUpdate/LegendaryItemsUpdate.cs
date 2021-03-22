using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace csharpcore
{
    public class LegendaryItemsUpdate
    {
        public static void Update(Item item)
        {
            item.SellIn = item.SellIn;
            item.Quality = item.Quality;
        }
    }
}
