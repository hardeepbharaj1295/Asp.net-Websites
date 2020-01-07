using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lpuinstitute.Startup))]
namespace Lpuinstitute
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
