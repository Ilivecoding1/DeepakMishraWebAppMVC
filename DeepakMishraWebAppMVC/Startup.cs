using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DeepakMishraWebAppMVC.Startup))]
namespace DeepakMishraWebAppMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
