<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="caption" style="text-align: center">Details</h1>
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2] WHERE ([MID] = @MID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MID" QueryStringField="MID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />



    </p>
    <div class="well">
    <p>
         










        
       <asp:HyperLink ID="materials" runat="server" NavigateUrl="~/materials.aspx">Back to Materials page</asp:HyperLink>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
       
            </EditItemTemplate>
            <InsertItemTemplate>
               
            </InsertItemTemplate>
            
            <ItemTemplate>

  <table class="table table-bordered">
            
             <tr>
				<td id="title"; style="text-align:right">  
                   Photo: 
				</td>
                <td id="content"; style="text-align:left">
                     <asp:Image Height="220px" ID="Image1" runat="server" ImageUrl='<%# Eval("Photo", "~/img/{0}")%>' />
                </td>
			</tr>
			<tr>
				<td id="title"; style="text-align:right">  
                    *Material ID: 
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="MIDLabel" runat="server" Text='<%# Eval("MID")%>' />
                </td>
			</tr>
       
             <tr>
				<td id="title"; style="text-align:right">  
                   *Title: 
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title")%>' />
                </td>
			</tr>
			
            <tr>
				<td id="title"; style="text-align:right">  
                   *Author:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author")%>' />
                </td>
			</tr>
			
              <tr>
				<td id="title"; style="text-align:right">  
                   Publisher:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="PublisherLabel" runat="server" Text='<%# Bind("Publisher")%>' />
                </td>
			</tr>
		
              <tr>
				<td id="title"; style="text-align:right">  
                   Copyright:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="CopyrightLabel" runat="server" Text='<%# Bind("Copyright")%>' />
                </td>
			</tr>
        
            <tr>
				<td id="title"; style="text-align:right">  
                  *ISBN: 
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Bind("ISBN")%>' />
                </td>
			</tr>
            
            <tr>
				<td id="title"; style="text-align:right">  
                  Description: 
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description")%>' />
                </td>
			</tr>

             
             <tr>
				<td id="title"; style="text-align:right">  
                  *Availability: 
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="AvailabilityLabel" runat="server" Text='<%# Bind("Availability")%>' />
                </td>
			</tr>
      
			<tr>
				<td id="title"; style="text-align:right">  
                  Type:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type")%>' />
                </td>
			</tr>
  
		</table>
            </ItemTemplate>
            
        </asp:FormView>

</p>
        <p>
         










        
            &nbsp;</p>
        <p>
         










        
            &nbsp;</p>
    </div>
</asp:Content>

