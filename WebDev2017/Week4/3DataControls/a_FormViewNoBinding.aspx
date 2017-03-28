<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="a_FormViewNoBinding.aspx.cs" Inherits="WebDev2017.Week4.DataControls.a_FormViewNoBinding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
           <asp:FormView ID="FormView1" runat="server" DataKeyNames="customerID" DataSourceID="SDSCustomer" RenderOuterTable="False">
            <EditItemTemplate>
                customerID:
                <%# Eval("customerID") %>
                <br />
                firstName:
                <input type="text" value='<%# Eval("firstName") %>' name="firstName" />
                <br />
                lastName:
                <input type="text" value='<%# Eval("lastName") %>' name="lastName"/>
                <br />
                <input type="hidden" name="customerID" value='<%# Eval("customerID") %>' />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                firstName:
                <input type="text" value='<%# Eval("firstName") %>' name="firstName" />
                <br />
                lastName:
                <input type="text" value='<%# Eval("lastName") %>' name="lastName"/>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                customerID:
               <%# Eval("customerID") %>
                <br />
                firstName:
              <%# Eval("firstName") %>
                <br />
                lastName:
                <%# Eval("lastName") %>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </EmptyDataTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SDSCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customers] ([firstName], [lastName]) VALUES (@firstName, @lastName)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [firstName] = @firstName, [lastName] = @lastName WHERE [customerID] = @customerID">
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
