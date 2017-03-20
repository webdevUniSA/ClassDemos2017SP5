<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="b_FormViewDataBinding.aspx.cs" Inherits="WebDev2017.Week4.DataControls.b_FormViewDataBinding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">
   <asp:FormView runat="server" ID="FVCustomer" DataKeyNames="customerID" DataSourceID="SDSCustomer">
       <EditItemTemplate>
           customerID:
           <asp:Label ID="customerIDLabel1" runat="server" Text='<%# Eval("customerID") %>' />
           <br />
           firstName:
           <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
           <br />
           lastName:
           <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
           <br />
           mainPhoneNo:
           <asp:TextBox ID="mainPhoneNoTextBox" runat="server" Text='<%# Bind("mainPhoneNo") %>' />
           <br />
           secondaryPhoneNo:
           <asp:TextBox ID="secondaryPhoneNoTextBox" runat="server" Text='<%# Bind("secondaryPhoneNo") %>' />
           <br />
           email:
           <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
           <br />
           addressLine1:
           <asp:TextBox ID="addressLine1TextBox" runat="server" Text='<%# Bind("addressLine1") %>' />
           <br />
           addressLine2:
           <asp:TextBox ID="addressLine2TextBox" runat="server" Text='<%# Bind("addressLine2") %>' />
           <br />
           isp:
           <asp:TextBox ID="ispTextBox" runat="server" Text='<%# Bind("isp") %>' />
           <br />
           <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
           &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
       </EditItemTemplate>
       <InsertItemTemplate>
           firstName:
           <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
           <br />
           lastName:
           <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
           <br />
           mainPhoneNo:
           <asp:TextBox ID="mainPhoneNoTextBox" runat="server" Text='<%# Bind("mainPhoneNo") %>' />
           <br />
           secondaryPhoneNo:
           <asp:TextBox ID="secondaryPhoneNoTextBox" runat="server" Text='<%# Bind("secondaryPhoneNo") %>' />
           <br />
           email:
           <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
           <br />
           addressLine1:
           <asp:TextBox ID="addressLine1TextBox" runat="server" Text='<%# Bind("addressLine1") %>' />
           <br />
           addressLine2:
           <asp:TextBox ID="addressLine2TextBox" runat="server" Text='<%# Bind("addressLine2") %>' />
           <br />
           isp:
           <asp:TextBox ID="ispTextBox" runat="server" Text='<%# Bind("isp") %>' />
           <br />
           <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
           &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
       </InsertItemTemplate>
       <ItemTemplate>
           customerID:
           <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
           <br />
           firstName:
           <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
           <br />
           lastName:
           <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
           <br />
           mainPhoneNo:
           <asp:Label ID="mainPhoneNoLabel" runat="server" Text='<%# Bind("mainPhoneNo") %>' />
           <br />
           secondaryPhoneNo:
           <asp:Label ID="secondaryPhoneNoLabel" runat="server" Text='<%# Bind("secondaryPhoneNo") %>' />
           <br />
           email:
           <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
           <br />
           addressLine1:
           <asp:Label ID="addressLine1Label" runat="server" Text='<%# Bind("addressLine1") %>' />
           <br />
           addressLine2:
           <asp:Label ID="addressLine2Label" runat="server" Text='<%# Bind("addressLine2") %>' />
           <br />
           isp:
           <asp:Label ID="ispLabel" runat="server" Text='<%# Bind("isp") %>' />
           <br />
           <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
           &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
           &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
       </ItemTemplate>

   </asp:FormView> <asp:SqlDataSource ID="SDSCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customers] ([firstName], [lastName]) VALUES (@firstName, @lastName)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [firstName] = @firstName, [lastName] = @lastName WHERE [customerID] = @customerID">
        <DeleteParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:FormParameter FormField="firstName" Name="firstName" Type="String" />
            <asp:FormParameter DefaultValue="" FormField="lastName" Name="lastName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:FormParameter FormField="firstName" Name="firstName" Type="String" />
            <asp:FormParameter FormField="lastName" Name="lastName" Type="String" />
            <asp:FormParameter FormField="customerID" Name="customerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
