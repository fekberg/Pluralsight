using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using Dapper;
using SocialNetwork.Data.Models;

namespace SocialNetwork.Data.Repositories
{
    public class ShoutRepository : Repository, IShoutRepository
    {
        public ShoutRepository(Func<IDbConnection> openConnection) : base(openConnection) {}
        
        public async Task<IEnumerable<Shout>> AllForAsync(User user, Profile profile)
        {
            using (var connection = OpenConnection())
            {
                return await connection.QueryAsync<Shout>("select * from [Shouts] where [ByUserId]=@userId or [ToProfileId]=@profileId order by [ShoutedAt] desc", 
                    new { userId = user.Id, profileId = profile.Id });
            }
        }
    }

    public interface IShoutRepository
    {
        Task<IEnumerable<Shout>> AllForAsync(User user, Profile profile);
    }
}