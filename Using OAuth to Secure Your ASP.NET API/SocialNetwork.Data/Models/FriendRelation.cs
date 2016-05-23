using System;

namespace SocialNetwork.Data.Models
{
    public class FriendRelation
    {
        public Guid InitiaterId { get; set; }
        public Guid FriendId { get; set; }
        public DateTime FriendedAt { get; set; }
        public bool Unfriended { get; set; }
    }
}