using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDown
{
	public partial class DropDown1 : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conns"].ConnectionString);
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				Fill_Country();
				DDState.Items.Insert(0, new ListItem("--SELECT STATE--", "0"));
				DDCity.Items.Insert(0, new ListItem("--SELECT CITY--", "0"));

				DDState.Enabled = true;
				DDCity.Enabled = true;
			}
		}
		public void Fill_Country()
		{
			DataSet ds = new DataSet();
			ds = ShowData("Sp_Countries", null);
			if (ds.Tables[0].Rows.Count > 0)
			{
				ddCountry.DataSource = ds;
				ddCountry.DataBind();
				ddCountry.Items.Insert(0, new ListItem("--SELECT COUNTRY--", "0"));
			}
		}
		private DataSet ShowData(string SP_Name, SqlParameter sp)
		{
			SqlDataAdapter da = null;
			DataSet ds = null;
			using (da = new SqlDataAdapter(SP_Name, con))
			{
				da.SelectCommand.CommandType = CommandType.StoredProcedure;
				if (sp != null)
				{
					da.SelectCommand.Parameters.Add(sp);
				}
				using (ds = new DataSet())
				{
					da.Fill(ds);
					return ds;
				}
			}
		}
		protected void ddCountry_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				SqlParameter sp = null;
				DataSet ds = null;
				if (ddCountry.SelectedValue == "0")
				{
					DDState.SelectedValue = "0";
					DDState.Enabled = false;
				}
				else
				{
					DDState.Enabled = true;
					sp = new SqlParameter("@cid", ddCountry.SelectedValue);
					ds = new DataSet();
					ds = ShowData("Sp_States", sp);
					if (ds.Tables[0].Rows.Count > 0)
					{
						DDState.DataSource = ds;
						DDState.DataBind();
						DDState.Items.Insert(0, new ListItem("--SELECT STATE--", "0"));
					}
				}
				DDCity.SelectedValue = "0";
				DDCity.Enabled = false;
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void DDState_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				SqlParameter sp=null;
				DataSet ds=null;
				if (DDState.SelectedValue == "0")
				{
					DDCity.SelectedValue = "0";
					DDCity.Enabled = false;
				}
				else
				{
					DDCity.Enabled = true;
					sp = new SqlParameter("@sid", DDState.SelectedValue);
					ds = new DataSet();
					ds = ShowData("Sp_Cities", sp);
					if (ds.Tables[0].Rows.Count > 0)
					{
						DDCity.DataSource = ds;
						DDCity.DataBind();
						DDCity.Items.Insert(0, new ListItem("--SELECT CITY--", "0"));
					}
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void btnSave_Click(object sender, EventArgs e)
		{
			
		}
	}
}