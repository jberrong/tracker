using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using TrackerAPI.Models;
using Tracker.Logic.BL;

namespace TrackerAPI.Controllers
{
    [RoutePrefix("api/Login")]
    public class LoginController : ApiController
    {
        LoginValidation l = new LoginValidation();

        [HttpPost]
        public IHttpActionResult ValidateLogin([FromBody]LoginModel request)
        {
            bool result = l.TestValidate(request.username, request.password);
            if (result)
            {
                return Ok();
            }
            else
            {
                return Unauthorized();
            }
        }
    }
}