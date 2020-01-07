using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Giptech.Startup))]
namespace Giptech
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
