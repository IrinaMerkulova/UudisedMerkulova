<%@ Page Title="Uudised" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UudisedMerkulova.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uudised</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" ReadOnly="True" SortExpression="uudis_id" />
            <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema], [kirjeldus], [kuupaev]) VALUES (@uudiseTeema, @kirjeldus, @kuupaev)" ProviderName="<%$ ConnectionStrings:uudisedBaas2ConnectionString1.ProviderName %>" SelectCommand="SELECT [uudis_id], [uudiseTeema], [kirjeldus], [kuupaev] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema, [kirjeldus] = @kirjeldus, [kuupaev] = @kuupaev WHERE [uudis_id] = @uudis_id">
        <DeleteParameters>
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>

</asp:Content>
