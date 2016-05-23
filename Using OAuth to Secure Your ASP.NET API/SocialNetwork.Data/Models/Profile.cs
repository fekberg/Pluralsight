using System;

namespace SocialNetwork.Data.Models
{
    public class Profile
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public DateTime RegisteredAt { get; set; }
        public DateTime Birthday { get; set; }
        public string Bio { get; set; }
    }
}