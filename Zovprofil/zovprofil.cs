using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Zovprofil
{
    public class Framework {
        public static DateTime GetCurrentDate()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT GETDATE()", Catalog.ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return Convert.ToDateTime(DT.Rows[0][0]);
                }
            }
        }


        public static void SetLog(string Page, string ip)
        {
            try
            {
                using (SqlDataAdapter DA = new SqlDataAdapter("SELECT TOP 0 * FROM infiniu2_light.dbo.SiteLog", Catalog.ConnectionString))
                {
                    using (SqlCommandBuilder CB = new SqlCommandBuilder(DA))
                    {
                        using (DataTable DT = new DataTable())
                        {
                            DA.Fill(DT);

                            DataRow NewRow = DT.NewRow();
                            NewRow["Page"] = Page;
                            NewRow["DateTime"] = GetCurrentDate();
                            NewRow["IPAddress"] = ip;
                            DT.Rows.Add(NewRow);

                            DA.Update(DT);
                        }
                    }
                }
            }
            catch
            {

            }
        }
    }

    public class Catalog
    {
        public static string ConnectionString = "Data Source=185.204.118.40, 32433;Initial Catalog=infiniu2_catalog;Persist Security Info=True;Connection Timeout=30;User ID=infiniu2_infinium;Password=InF476()*";
        //public static string ConnectionString = "Data Source=localhost;Initial Catalog=infiniu2_catalog;Persist Security Info=True;Connection Timeout=30;User ID=infiniu2_infinium;Password=InF476()*";
        public static string URL = "https://zovprofil.by/Images/ClientsCatalogImages/";

        public static DataTable FillCategories(int Type)
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT DISTINCT(Category) FROM ClientsCatalogImages WHERE (Category IS NOT NULL AND Category <> '') AND (ProductType = " + Type + ") AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);
                    DT.Columns.Add("FileName", System.Type.GetType("System.String"));

                    foreach (DataRow Row in DT.Rows)
                    {
                        using (SqlDataAdapter sDA = new SqlDataAdapter("SELECT TOP 1 FileName FROM ClientsCatalogImages WHERE Category = '" + Row["Category"].ToString() + "' AND ToSite = 1", ConnectionString))
                        {
                            using (DataTable sDT = new DataTable())
                            {
                                sDA.Fill(sDT);
                                Row["FileName"] = sDT.Rows[0]["FileName"];
                            }
                        }
                    }

                    return DT;
                }
            }
        }

        public static DataTable FillProducts(int Type, string Category)
        {
            string Select = "SELECT FileName, Name, Description, Material, Sizes, Color, ImageID FROM ClientsCatalogImages WHERE Category = '" + Category + "'" + " AND ToSite = 1 AND CatSlider = 0 AND MainSlider = 0 ORDER BY Name ASC";

            if(Type == 3)//ready
                Select = "SELECT FileName, Name, Color, ImageID FROM ClientsCatalogImages WHERE Category = '" + Category + "'" + " AND ToSite = 1 AND MainSlider = 0 AND CatSlider = 0 ORDER BY Name ASC";

            using (SqlDataAdapter DA = new SqlDataAdapter(Select, ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static DataTable FillNewProducts()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Color, ImageID, Category, ProductType FROM ClientsCatalogImages WHERE Latest = 1 AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static DataTable FillMainSliderImages()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, MainSliderLink FROM ClientsCatalogImages WHERE MainSlider = 1 AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static DataTable FillCatSliderImages(string Category)
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Description FROM ClientsCatalogImages WHERE Category = '" + Category + "' AND CatSlider = 1 AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static void GetItemDetail(int ImageID, ref string FileName, ref string Name, ref string Description, ref string Material, ref string Sizes)
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Description, Material, Sizes FROM ClientsCatalogImages WHERE ImageID = " + ImageID, ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    FileName = DT.Rows[0]["FileName"].ToString();
                    Name = DT.Rows[0]["Name"].ToString();
                    Description = DT.Rows[0]["Description"].ToString();
                    Material = DT.Rows[0]["Material"].ToString();
                    Sizes = DT.Rows[0]["Sizes"].ToString();
                }
            }
        }

        public static string SerializeDT(DataTable DT)
        {
            string res = "";

            for (int i = 0; i < DT.Rows.Count; i++)
            {
                res += "{";

                for (int j = 0; j < DT.Columns.Count; j++)
                {
                    res += "[" + DT.Columns[j].ColumnName + "]";
                    res += "=" + DT.Rows[i][j].ToString() + ";";
                }

                res += "}";
            }

            return res;
        }

    }
}