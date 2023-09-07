using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Zovprofil.zovprofil.Controls;

namespace Zovprofil.zovprofil
{
    public partial class Wheretobuy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "зов-профиль, купить, фасады, корпусная мебель, цена, мдф, опт, розница";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "Купить мебель и кухню с фасадами фабрики ЗОВ-Профиль в салонах представителей в Беларуси, России, Казахстане и странах ЕС. Стать дилером компании можно, заполнив соответствующую форму на сайте";
            Page.Header.Controls.Add(metaDesc);

            String Country = "";

            if (Request.QueryString["country"] != null)
            {
                Country = Request.QueryString["country"];
                CountryLabel.InnerHtml = Request.QueryString["country"];
                CountryLabel.Attributes.Add("title", Request.QueryString["country"]);
                hCountryID.Value = Request.QueryString["country"];
            }

            String City = "";

            if (Request.QueryString["city"] != null)
            {
                City = Request.QueryString["city"];
                CityLabel.InnerHtml = Request.QueryString["city"];
                CityLabel.Attributes.Add("title", Request.QueryString["city"]);
                hCityID.Value = Request.QueryString["city"];
            }
            else
            {
                City = "-";
                hCityID.Value = "-";
                CityLabel.InnerHtml = hCityID.Value;
                CityLabel.Attributes.Add("title", hCityID.Value);
            }



            String bProfile = "1";
            String bFronts = "1";
            String bFurniture = "1";


            if (Request.QueryString["profile"] != null)
            {
                bProfile = Request.QueryString["profile"];
            }

            ProfileCheckBox.Checked = bProfile == "1";
            hProfile.Value = bProfile;


            if (Request.QueryString["fronts"] != null)
            {
                bFronts = Request.QueryString["fronts"];
            }

            FrontsCheckBox.Checked = bFronts == "1";
            hFronts.Value = bFronts;


            if (Request.QueryString["furniture"] != null)
            {
                bFurniture = Request.QueryString["furniture"];
            }

            FurnitureCheckBox.Checked = bFurniture == "1";
            hFurniture.Value = bFurniture;


            DataTable CountriesDT = new DataTable();

            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT DISTINCT(Country) FROM infiniu2_marketingReference.dbo.ShopAddresses WHERE Long IS NOT NULL AND Lat IS NOT NULL AND Country IS NOT NULL ORDER BY Country ASC", Catalog.ConnectionString))
            {
                DA.Fill(CountriesDT);
            }

            for (int i = 0; i < CountriesDT.Rows.Count; i++)
            {
                if (i == 0 && Country == "")
                {
                    hCountryID.Value = CountriesDT.Rows[i]["Country"].ToString();
                    Country = hCountryID.Value;
                    CountryLabel.InnerHtml = hCountryID.Value;
                    CountryLabel.Attributes.Add("title", hCountryID.Value);
                }

                {
                    HtmlGenericControl div = new HtmlGenericControl("div");
                    div.Attributes.Add("class", "DropListItem");
                    div.Attributes.Add("onclick", "CountryClick(this)");
                    div.ClientIDMode = ClientIDMode.Static;
                    div.InnerHtml = CountriesDT.Rows[i]["Country"].ToString();
                    div.ID = "Country_" + div.InnerHtml;
                    div.Attributes.Add("title", div.InnerHtml);

                    CountryDiv.Controls.Add(div);
                }
            }


            DataTable CitiesDT = new DataTable();

            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT DISTINCT(City) FROM infiniu2_marketingReference.dbo.ShopAddresses WHERE Long IS NOT NULL AND Lat IS NOT NULL AND Country = '" + hCountryID.Value + "' AND City IS NOT NULL ORDER BY City ASC", Catalog.ConnectionString))
            {
                DA.Fill(CitiesDT);
            }      

            {
                HtmlGenericControl div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "DropListItem");
                div.Attributes.Add("onclick", "CityClick(this)");
                div.ClientIDMode = ClientIDMode.Static;
                div.InnerHtml = "-";
                div.ID = "City_-";
                div.Attributes.Add("title", div.InnerHtml);

                CityDiv.Controls.Add(div);
            }

            for (int i = 0; i < CitiesDT.Rows.Count; i++)
            {
                if (i == 0 && City == "")
                {
                    hCityID.Value = CitiesDT.Rows[i]["City"].ToString();
                    CityLabel.InnerHtml = hCityID.Value;
                    CityLabel.Attributes.Add("title", hCityID.Value);
                }

                {
                    HtmlGenericControl div = new HtmlGenericControl("div");
                    div.Attributes.Add("class", "DropListItem");
                    div.Attributes.Add("onclick", "CityClick(this)");
                    div.ClientIDMode = ClientIDMode.Static;
                    div.InnerHtml = CitiesDT.Rows[i]["City"].ToString();
                    div.ID = "City_" + div.InnerHtml;
                    div.Attributes.Add("title", div.InnerHtml);

                    CityDiv.Controls.Add(div);
                }
            }


            string CityFilter = "";
            string TypeFilter = "";

            if (City != "-")
                CityFilter = " AND City = '" + City + "'";

            if (bFurniture == "1")
                TypeFilter += "IsFurniture=1";

            if (bFronts == "1")
            {
                if (TypeFilter.Length > 0)
                    TypeFilter += " OR IsFronts=1";
                else
                    TypeFilter += "IsFronts=1";
            }

            if (bProfile == "1")
            {
                if (TypeFilter.Length > 0)
                    TypeFilter += " OR IsProfile=1";
                else
                    TypeFilter += "IsProfile=1";
            }

            if (TypeFilter.Length > 0)
            {
                TypeFilter = " AND (" + TypeFilter + ")";
            }


            DataTable ShopsDT = new DataTable();

            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT * FROM infiniu2_marketingReference.dbo.ShopAddresses WHERE Long IS NOT NULL AND Lat IS NOT NULL AND Country = '" + Country + "'" + CityFilter + TypeFilter, Catalog.ConnectionString))
            {
                DA.Fill(ShopsDT);
            }

            foreach (DataRow Row in ShopsDT.Rows)
            {
                DealerItem Item = (DealerItem)Page.LoadControl("~/zovprofil/Controls/DealerItem.ascx");
                Item.ID = Row["ShopAddressID"].ToString();
                Item.sName = Row["Name"].ToString();
                Item.sAddress = Row["Address"].ToString();
                Item.sPhone = Row["Phone"].ToString();
                Item.sEmail = Row["Email"].ToString();

                string uri = Row["Site"].ToString();


                if (uri.Length > 0)
                {
                    if (!uri.Contains("http") || !uri.Contains("https"))
                    {
                        var uriBuilder = new UriBuilder(Row["Site"].ToString());
                        uriBuilder.Scheme = "http";

                        Item.sWebSite = uriBuilder.Uri.ToString();
                    }
                    else
                        Item.sWebSite = uri.ToString();
                }

                Item.sWorkTime = Row["WorkTime"].ToString();
                Item.sFurniture = Row["IsFurniture"].ToString();
                Item.sFronts = Row["IsFronts"].ToString();
                Item.sProfile = Row["IsProfile"].ToString();
                Item.sLat = Row["Lat"].ToString().Replace(",", ".");
                Item.sLong = Row["Long"].ToString().Replace(",", ".");

                ShopsContainer.Controls.Add(Item);
            }
        }
    }
}