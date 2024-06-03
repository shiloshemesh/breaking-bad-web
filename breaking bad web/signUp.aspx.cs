using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace breaking_bad_web
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit(object sender, EventArgs e)
        {
            int num = 0;
            if (userName.Text == "")
                num++;
            if (firstName.Text == "")
                num++;
            if (lastName.Text == "")
                num++;
            if (password.Text == "")
                num++;
            if (rating.Text == "")
                num++;
            if (sexChoise.SelectedIndex == -1)
                num++;
            if (state.SelectedIndex == 0)
                num++;


            if (num > 2)
                errorMessage.Text = "almost nothing is filled";
            else if (num < 2 && num > 0)
                errorMessage.Text = $"you need to fill {num} more";
        }
    }
}