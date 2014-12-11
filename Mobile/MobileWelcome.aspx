<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Mobile_Default" %>
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>



    <title>
Welcome Mobile
    </title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.css" />
        <link href="~/navbar-fixed-top.css" rel="stylesheet" />
    <style type="text/css">
        .footer {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            
              <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/photos/whitelogo2.png" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>
                   <!--<a class="navbar-brand" href="#">South Liberty Public Library</a>-->
        </div>
          
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
         
         <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>  
         <li><asp:HyperLink ID="materials" runat="server" NavigateUrl="~/materials.aspx">Materials</asp:HyperLink></li>  
	     <li><asp:HyperLink ID="Contact" runat="server" NavigateUrl="~/Contact.aspx">Contact Us</asp:HyperLink></li>  
        <li><asp:HyperLink ID="Search" runat="server" NavigateUrl="~/Search.aspx">Search</asp:HyperLink></li>
               </ul>


          <ul class="nav navbar-nav navbar-right">
          <li><asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="" /> </li>
          <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/librarian/Admin.aspx">Librarian</asp:HyperLink></li>
              
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
 </div>

        <!--NAV BAR - NELSON MIDDENDORFF -->
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    <div class="container">
            <div id="main">
                                
                <h1 style="text-align: center">Welcome Mobile User</h1>
    <div class="well">
    <p>Exciting news - our website is now compatible with all major mobile web browsers! You can search for materials, access our contact information, and even send us an email. Please simply click the link below to enjoy our mobile friendly site.</p>
        </div><div>
        <p style="text-align:center"> <a href="../Default.aspx">Home Page</a> | <a href="../Contact.aspx">Contact Us</a> | <a href="../Search.aspx">Search Materials</a></p>
        <p style="text-align:center"> 

        <a class="btn btn-success" href="tel:+17122998667" role="button">Call Us: 712-299-8667</a></p></div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

            </div> <!-- close the main DIV -->

         <div class="footer">
             <br />
             <br />
        <p class="text-muted">&copy; 2014 MSCI:3300 - Software Design and Development 
                Today's date is: <asp:Label ID="Label2" runat="server" ><%= String.Format("{0:d}", DateTime.Now) %></asp:Label></p>
      </div>
        </div>


    </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>







