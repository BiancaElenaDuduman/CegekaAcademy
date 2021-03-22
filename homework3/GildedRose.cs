using System.Collections.Generic;

namespace csharpcore
{
    public class GildedRose
    {
        IList<Item> Items;
        public GildedRose(IList<Item> Items)
        {
            this.Items = Items;
        }

        public void UpdateQuality()
        {
            for (var i = 0; i < Items.Count; i++)
            {
                switch (Items[i].Name)
                {
                    case "Aged Brie":
                        AgedBrieUpdate.Update(Items[i]);
                        break;
                    case "Backstage passes to a TAFKAL80ETC concert":
                        BackStagePassUpdate.Update(Items[i]);
                        break;
                    case "Sulfuras, Hand of Ragnaros":
                        LegendaryItemsUpdate.Update(Items[i]);
                        break;
                    case "Conjured Mana Cake":
                        ConjuredUpdate.Update(Items[i]);
                        break;
                    default:
                        StandardItemUpdate.Update(Items[i]);
                        break;
                }
            }
        }
    }
}
