using System;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using SocialNetwork.Data.Models;

namespace SocialNetwork.Data.Repositories
{
    public class ProfileRepository : Repository, IProfileRepository
    {
        public ProfileRepository(Func<IDbConnection> openConnection) : base(openConnection) {}

        public async Task<Profile> GetForAsync(User user)
        {
            using (var connection = OpenConnection())
            {
                var queryResult = await connection.QueryAsync<Profile>("select * from [Profiles] where [UserId]=@userId", new { userId = user.Id });

                return queryResult.SingleOrDefault();
            }
        }

        public async Task UpdateAsync(Profile profile)
        {
            using (var connection = OpenConnection())
            {
                await connection.ExecuteAsync("update [Profiles] set [Bio]=@bio where [Id]=@profileId", new { profileId = profile.Id, bio = profile.Bio });
            }
        }
    }

    public interface IProfileRepository
    {
        Task<Profile> GetForAsync(User user);
        Task UpdateAsync(Profile profile);
    }
}