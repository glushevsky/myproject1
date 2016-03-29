using System;
using System.IO;
using System.Xml;
using System.Xml.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webprimer1
{
    public partial class _Default : System.Web.UI.Page
    {
        public Parameter outobject;
        protected void Page_Load(object sender, EventArgs e)
        {
            _Default t = new _Default();
            outobject = t.XmlParser("Input.xml");
            this.DataBind();
        }
        public Parameter XmlParser(string filename)
        {
            // Create an instance of the XmlSerializer.
            XmlSerializer serializer = new XmlSerializer(typeof(Parameter));

            // Declare an object variable of the type to be deserialized.
            Parameter i;

            using (Stream reader = new FileStream(filename, FileMode.Open))
            {
                // Call the Deserialize method to restore the object's state.
                i = (Parameter)serializer.Deserialize(reader);
            }

            // Write out the properties of the object.
            return i;
        }
    }
    public class Parameter
    {
        public String Id { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String Type { get; set; }
        public String Value { get; set; }
    }
}
