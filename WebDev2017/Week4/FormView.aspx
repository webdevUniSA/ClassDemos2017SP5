<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="WebDev2017.Week4.FormView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customers] ([firstName], [lastName]) VALUES (@firstName, @lastName)" SelectCommand="SELECT [customerID], [firstName], [lastName] FROM [Customers] WHERE ([customerID] = @customerID)" UpdateCommand="UPDATE [Customers] SET [firstName] = @firstName, [lastName] = @lastName WHERE [customerID] = @customerID">
        <DeleteParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="customerID" QueryStringField="record" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:FormParameter FormField="firstName" Name="firstName" Type="String" />
            <asp:FormParameter FormField="lastName" Name="lastName" Type="String" />
            <asp:QueryStringParameter Name="customerID" QueryStringField="record" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:FormView runat="server" ID="FVCustomer" DataKeyNames="customerID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            customerID:
            <%# Eval("customerID") %>
            <br />
            firstName:
            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
            <br />
            lastName:
            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <EditItemTemplate>

        First Name:  <input type="text" name="firstName" value='<%# Eval("firstName") %>' />
        Last Name:      <input type="text" name="lastName" value='<%# Eval("lastName") %>' />
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
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </InsertItemTemplate>
        <EmptyDataTemplate>
            <asp:Button runat="server" CommandName="New" Text="New" />

        </EmptyDataTemplate>

    </asp:FormView>
</asp:Content>
