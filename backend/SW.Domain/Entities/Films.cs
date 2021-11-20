using System;


namespace SW.Domain.Entities
{
    public class Films
    {

        public int id { get; set; }
        public DateTime? created { get; set; }
        public string director { get; set; }
        public DateTime? edited { get; set; }
        public int? episode_id { get; set; }
        public string opening_crawl { get; set; }
        public string producer { get; set; }
        public DateTime? release_date { get; set; }
        public string title { get; set; }


    }
}
