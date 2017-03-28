<%@ Page Title="Data Binding" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataBinding.aspx.cs" Inherits="WebDev2017.Week5.DataBinding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">

    <div class="row">
        <div class="col-md-6 col-md-offset-3">


            <asp:FormView RenderOuterTable="False" runat="server" ID="FVDrink" DataKeyNames="drinkID" DataSourceID="SDSDrink">
                <EditItemTemplate>
                    <div class="form-group">
                        <label class="control-label">
                            Title:
                        </label>
                        <asp:TextBox ID="titleTextBox" CssClass="form-control" runat="server" Text='<%# Bind("title") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Description:</label>
                        <asp:TextBox ID="descriptionTextBox" TextMode="MultiLine" CssClass="form-control" runat="server" Text='<%# Bind("description") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            price:
                        </label>
                        <asp:TextBox ID="priceTextBox" CssClass="form-control" runat="server" Text='<%# Bind("price") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            volume:
                        </label>
                        <asp:TextBox ID="volumeTextBox" CssClass="form-control" runat="server" Text='<%# Bind("volume") %>' />

                    </div>
                    <div class="form-group">
                        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

                    </div>
                </EditItemTemplate>
                <EmptyDataTemplate>
<%--                    <p>Current There are no records to display:</p>
                    <asp:LinkButton runat="server" CausesValidation="True" CommandName="New" Text="New Record" />
--%>

                </EmptyDataTemplate>
                <InsertItemTemplate>

                    <div class="form-group">
                        <label class="control-label">
                            Title:
                        </label>
                        <asp:TextBox ID="titleTextBox" CssClass="form-control" runat="server" Text='<%# Bind("title") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Description:</label>
                        <asp:TextBox ID="descriptionTextBox" TextMode="MultiLine" CssClass="form-control" runat="server" Text='<%# Bind("description") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            price:
                        </label>
                        <asp:TextBox ID="priceTextBox" CssClass="form-control" runat="server" Text='<%# Bind("price") %>' />
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            volume:
                        </label>
                        <asp:TextBox ID="volumeTextBox" CssClass="form-control" runat="server" Text='<%# Bind("volume") %>' />

                    </div>
                    <div class="form-group">
                        <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    drinkID:
            <asp:Label ID="drinkIDLabel" runat="server" Text='<%# Eval("drinkID") %>' />
                    <br />
                    description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    volume:
            <asp:Label ID="volumeLabel" runat="server" Text='<%# Bind("volume") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:Repeater ID="RDrinks" runat="server" DataSourceID="SDSDrinks">
                <ItemTemplate>
                    <a class="btn btn-default" href='<%# "DataBinding.aspx?record=" + Eval("drinkID") %>'><%# Eval("title") %></a>
                    drinkID:
            <asp:Label ID="drinkIDLabel" runat="server" Text='<%# Eval("drinkID") %>' />
                    <br />
                    description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <asp:GridView AutoGenerateColumns="false" runat="server" DataSourceID="SDSDrinks" AlternatingRowStyle-CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title" />
            <asp:TemplateField>
                <HeaderTemplate>Description</HeaderTemplate>
                <ItemTemplate>
                    <%# Eval("description") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <div class="form-group">
                        <label class="control-label">Description:</label>
                        <asp:TextBox ID="descriptionTextBox" TextMode="MultiLine" CssClass="form-control" runat="server" Text='<%# Bind("description") %>' />
                    </div>
                </EditItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SDSDrink" runat="server"
        ConnectionString="<%$ ConnectionStrings:DrinksDB %>"
        DeleteCommand="DELETE FROM [Drinks] WHERE [drinkID] = @drinkID"
        InsertCommand="INSERT INTO [Drinks] ([description], [title], [price], [volume]) VALUES (@description, @title, @price, @volume)"
        SelectCommand="SELECT * FROM [Drinks] WHERE ([drinkID] = @drinkID)"
        UpdateCommand="UPDATE [Drinks] SET [description] = @description, [title] = @title, [price] = @price, [volume] = @volume WHERE [drinkID] = @drinkID">
        <DeleteParameters>
            <asp:Parameter Name="drinkID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="volume" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="drinkID" QueryStringField="record" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="volume" Type="Decimal" />
            <asp:Parameter Name="drinkID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSDrinks" runat="server"
        ConnectionString="<%$ ConnectionStrings:DrinksDB %>"
        SelectCommand="SELECT * FROM [Drinks] ORDER BY [price]"></asp:SqlDataSource>

</asp:Content>
