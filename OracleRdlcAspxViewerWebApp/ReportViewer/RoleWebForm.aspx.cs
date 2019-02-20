using Microsoft.Reporting.WebForms;
using OracleRdlcAspxViewerWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OracleRdlcAspxViewerWebApp.ReportViewer
{
    public partial class RoleWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string searchText = string.Empty;

                if (Request.QueryString["searchText"] != null)
                {
                    searchText = Request.QueryString["searchText"].ToString();
                }

                List<USERROLE> customersRole = null;
                using (var _context = new Entities())
                {
                    customersRole = _context.USERROLEs.ToList();
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/RoleReport.rdlc");
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportDataSource rdc = new ReportDataSource("DataSet1", customersRole);
                    ReportViewer1.LocalReport.DataSources.Add(rdc);
                    ReportViewer1.LocalReport.Refresh();
                    ReportViewer1.DataBind();
                }
            }
        }
    }
}