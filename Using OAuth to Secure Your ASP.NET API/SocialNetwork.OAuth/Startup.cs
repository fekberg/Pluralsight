using System;
using System.Configuration;
using System.IO;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Web;
using IdentityServer3.Core.Configuration;
using Microsoft.Owin;
using Owin;
using SocialNetwork.OAuth.Configuration;

[assembly: OwinStartup(typeof(SocialNetwork.OAuth.Startup))]

namespace SocialNetwork.OAuth
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            //TODO: Add Configuration
        }
    }
}
