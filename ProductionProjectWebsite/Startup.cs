using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProductionProjectWebsite.Startup))]
namespace ProductionProjectWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
