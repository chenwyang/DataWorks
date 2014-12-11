<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Home</h1>

    <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Browse Materials</h3>
            </div>
            <div class="panel-body">
			<p>
                <asp:Image ID="Image3" runat="server" ImageAlign="Middle" ImageUrl="~/photos/book.png" Width="128px" />
                </p>
            <p>
            <a class="btn btn-success" href="materials.aspx" role="button">Link</a>
                </p>
            </div>
          </div>
          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">

          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Login to Account</h3>
            </div>
            <div class="panel-body">
			<p>
                <asp:Image ID="Image4" runat="server" ImageAlign="Bottom" ImageUrl="~/photos/user_lock.png" Width="128px" />
                </p>
            
              <p><a class="btn btn-success" href="login/login.aspx" role="button">Link</a></p>
            </div>
          </div>
          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Contact Us</h3>
            </div>
            <div class="panel-body">
			<p>
                <asp:Image ID="Image5" runat="server" ImageAlign="Middle" ImageUrl="~/photos/contact.png" Width="128px" />
                </p>
            
             <p> <a class="btn btn-success" href="Contact.aspx" role="button">Link</a></p>
            </div>
          </div>
         
        </div><!-- /.col-sm-4 -->
      </div>


    <div class="well">
    <p style="font-size: small; color: #000000">
    Welcome to South Liberty Public Library. If you are interested in becoming a patron and
    checking out books online please check our hours and visit our library to get your account created.
    We take pride in our online interactive database and encourage our patrons to use it. 
    If you experience any issues with our system or have any recommendations visit our contact page
    and send us an email. - South Libery Library
    </p>
    </div>
    <br />
     <br />
     <br />
    <div class="well">
    <p>
     <a class="twitter-timeline" href="https://twitter.com/MSCI3300_SLPL" data-widget-id="407604853909639168">Tweets by @MSCI3300_SLPL</a>
<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
    </p>
    <p>
        </div>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT COUNT(MID)
FROM project_Materials2
"></asp:SqlDataSource>
        <div class="well">
    <h3>Material Count: </h3>
         <p>
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                 <ItemTemplate>
                     &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                     <br />
<br />
                 </ItemTemplate>
             </asp:DataList>

         </p>
            </div>
        <p>
            &nbsp;</p>



</asp:Content>

