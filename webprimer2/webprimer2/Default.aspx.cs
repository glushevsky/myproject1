using System;
using System.IO;
using System.Xml;
using System.Xml.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webprimer2
{
    public partial class _Default : System.Web.UI.Page
    {

        private List<Parameter> outobjects;

        protected void Page_Load(object sender, EventArgs e)
        {
            outobjects = XmlParser("C:/Users/Евгений/Desktop/Новая папка (4)/webprimer2/Input.xml");
            foreach (var elem in outobjects)
            {
                ParameterControl elemControl = (ParameterControl)LoadControl("ParameterControl.ascx");
                elemControl.SetControl(elem);
                form1.Controls.Add(elemControl);
            }
            this.DataBind();
        }
        public List<Parameter> XmlParser(string file)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(List<Parameter>), new XmlRootAttribute("Parameters"));

            List<Parameter> i;

            using (Stream reader = new FileStream(file, FileMode.Open))
            {
                i = (List<Parameter>)serializer.Deserialize(reader);
            }

            return i;
        }
    }
}