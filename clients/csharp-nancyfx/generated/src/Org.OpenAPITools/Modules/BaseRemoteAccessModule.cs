using System;
using Nancy;
using Nancy.ModelBinding;
using System.Collections.Generic;
using Sharpility.Base;
using Org.OpenAPITools..Models;
using Org.OpenAPITools..Utils;
using NodaTime;

namespace Org.OpenAPITools..Modules
{ 

    /// <summary>
    /// Module processing requests of BaseRemoteAccess domain.
    /// </summary>
    public sealed class BaseRemoteAccessModule : NancyModule
    {
        /// <summary>
        /// Sets up HTTP methods mappings.
        /// </summary>
        /// <param name="service">Service handling requests</param>
        public BaseRemoteAccessModule(BaseRemoteAccessService service) : base("/")
        { 
            Get["/crumbIssuer/api/json"] = parameters =>
            {
                
                return service.GetCrumb(Context);
            };
        }
    }

    /// <summary>
    /// Service handling BaseRemoteAccess requests.
    /// </summary>
    public interface BaseRemoteAccessService
    {
        /// <summary>
        /// Retrieve CSRF protection token
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <returns>DefaultCrumbIssuer</returns>
        DefaultCrumbIssuer GetCrumb(NancyContext context);
    }

    /// <summary>
    /// Abstraction of BaseRemoteAccessService.
    /// </summary>
    public abstract class AbstractBaseRemoteAccessService: BaseRemoteAccessService
    {
        public virtual DefaultCrumbIssuer GetCrumb(NancyContext context)
        {
            return GetCrumb();
        }

        protected abstract DefaultCrumbIssuer GetCrumb();
    }

}
