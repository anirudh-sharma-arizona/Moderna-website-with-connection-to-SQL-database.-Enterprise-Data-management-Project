using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moderna2
{
    public partial class Employee_Master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees_with_Publications.aspx"); 
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees_experts_communication.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert_Employees.aspx");
        }
    }
}