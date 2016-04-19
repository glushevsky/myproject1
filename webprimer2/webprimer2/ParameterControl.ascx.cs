using System;
using System.IO;
using System.Xml.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webprimer2
{
    public partial class ParameterControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SetControl(Parameter par)
        {
            NameLabel.InnerText = par.Name;
            DescriptionLabel.InnerText = par.Description;
            if (par.Type == "System.String")
            {
                TextInput.Visible = true;
                TextInput.Value = par.Value;
            }
            if (par.Type == "System.Integer")
            {
                NumInput.Visible = true;
                NumInput.Value = par.Value;
            }
            if (par.Type == "System.Boolean")
            {
                CheckInput.Visible = true;
                if (par.Value == "True")
                {
                    CheckInput.Checked = true;
                }
                else
                {
                    CheckInput.Checked = false;
                }
            }
        }
        /*public string GetTypeControl()
        {
            return Type;
        }*/
    }
    public class Parameter
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string Value { get; set; }
    }
    }