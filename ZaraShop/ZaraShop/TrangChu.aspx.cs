using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlSanPham.DataSource = connect.Docbang("select top 12 * from SanPham");
                dlSanPham.DataBind();
            }
        }
    }
}