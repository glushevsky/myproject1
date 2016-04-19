<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webprimer2._Default" %>
<%@ Register TagPrefix="mycontrol" TagName="ParameterControl" Src="~/ParameterControl.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="mainhead" runat="server">
    <title>default page</title>
    <script type="text/javascript">
        function CheckType()
        {
            var elems = document.getElementsByTagName("input");
            for (var i=0;i<elems.length;i++)
            {
                var elemId = elems[i].getAttribute("id");
                if (elemId.indexOf("NumInput") != -1)
                {
                    var str = elems[i].getAttribute("value");
                    if (isNumeric(str) == true)
                    {
                        if (isInteger(Number(str)) != true)
                        {
                            alert("Ошибка! Значение в поле с id= " + elemId + " не является целочисленным!");
                        }
                    }
                    else
                        alert ("Ошибка! Значение в поле с id= "+elemId+" не является числовым!");
                }
            }
        }
        function isNumeric(n) {
            return !isNaN(parseFloat(n)) && isFinite(n);
        }
        function isInteger(n) {
            return (n ^ 0) === n;
        }
    </script>
</head>
<body style="background-color:#32373d" onload="CheckType()">
    <p>DEFAULT PAGE</p>
    <form id="form1" runat="server">
    </form>
</body>
</html>
