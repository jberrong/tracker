using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web;
using TrackerAPI.Models;

namespace TrackerAPI.Controllers
{
    [RoutePrefix("api/PlanType")]
    public class PlanTypeController : ApiController
    {
        PlanTypeModel[] p = new PlanTypeModel[]
        {
            new PlanTypeModel {PlanName= "Cutting" },
            new PlanTypeModel {PlanName= "Bulking" },
            new PlanTypeModel {PlanName= "Maintnence" }

        };
        public IEnumerable<PlanTypeModel> GetAllPlans()
        {
            return p;
        }

        [HttpGet]
        [Route("")]
        public IHttpActionResult GetPlans()
        {
            return this.Ok<IEnumerable<PlanTypeModel>>(GetAllPlans());
        }

    }
}