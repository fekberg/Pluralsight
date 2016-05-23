using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using SocialNetwork.Api.Helpers;
using SocialNetwork.Data.Repositories;

namespace SocialNetwork.Api.Controllers
{
    public class ShoutsController : SocialNetworkApiController
    {
        private readonly IShoutRepository shoutRepository;
        private readonly IProfileRepository profileRepository;
        private readonly IUserRepository userRepository;

        public ShoutsController(IShoutRepository shoutRepository,
            IProfileRepository profileRepository, 
            IUserRepository userRepository)
        {
            this.shoutRepository = shoutRepository;
            this.profileRepository = profileRepository;
            this.userRepository = userRepository;
        }
        
        public async Task<IHttpActionResult> GetAsync(string username, string password)
        {
            var user = await userRepository.GetAsync(username, HashHelper.Sha512(password + username));

            if (user == null)
            {
                return NotFound();
            }

            var profile = await profileRepository.GetForAsync(user);

            if (profile == null)
            {
                return NotFound();
            }

            var shouts = (await shoutRepository.AllForAsync(user, profile)).ToArray();

            if (!shouts.Any())
            {
                return NotFound();
            }

            return Ok(shouts);
        }
    }
}