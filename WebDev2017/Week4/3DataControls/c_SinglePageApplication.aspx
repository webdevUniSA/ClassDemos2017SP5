<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="c_SinglePageApplication.aspx.cs" Inherits="WebDev2017.Week4.DataControls.c_SinglePageApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
     <asp:FormView ID="FormView1" EnableViewState="False" runat="server" DataKeyNames="customerID" DataSourceID="SDSCustomer">
            <EditItemTemplate>
                firstName:
                <asp:TextBox  runat="server" Text='<%# Bind("firstName") %>' ID="firstNameTextBox" />
                <br />
                lastName:
                <asp:TextBox runat="server" Text='<%# Bind("lastName") %>' ID="lastNameTextBox" />
                <br />
                customerID:
                <asp:Label ID="customerIDLabel1" runat="server" Text='<%# Eval("customerID") %>' />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                firstName:
                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                customerID:
                <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <EmptyDataTemplate>

                <h2>No Record Selected</h2>
                    Create a   &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /> Record?
      </EmptyDataTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SDSCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customers] ([firstName], [lastName]) VALUES (@firstName, @lastName)" SelectCommand="SELECT [firstName], [lastName], [customerID] FROM [Customers] WHERE ([customerID] = @customerID)" UpdateCommand="UPDATE [Customers] SET [firstName] = @firstName, [lastName] = @lastName WHERE [customerID] = @customerID">
            <DeleteParameters>
                <asp:Parameter Name="customerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="customerID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="customerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView EnableViewState="False" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerID" DataSourceID="SDSCustomers">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="customerID" HeaderText="customerID" InsertVisible="False" ReadOnly="True" SortExpression="customerID" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDSCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    
</asp:Content>
