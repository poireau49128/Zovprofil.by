using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zovprofil.zovprofil.Controls
{
    // Товары внутри выбранного типа продукции
    public partial class ProductMenuItem : System.Web.UI.UserControl
    {
        public string ProductCategory = "";
        public string ProductImageUrl = "";
        public string URL = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            ProdImage.Src = ProductImageUrl;
            ProdCategory.InnerHtml = ProductCategory;
            Link.HRef = URL;
        }
    }
}