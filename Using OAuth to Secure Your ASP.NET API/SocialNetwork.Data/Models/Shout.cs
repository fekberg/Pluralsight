using System;

namespace SocialNetwork.Data.Models
{
    public class Shout
    {
        public Guid Id { get; set; }
        public Guid ByUserId { get; set; }
        public Guid ToProfileId { get; set; }
        public DateTime ShoutedAt { get; set; }
        public string Text { get; set; }
    }
}