<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDS_Blog" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="PaleGoldenrod"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
            <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text"></asp:BoundField>
            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data"></asp:BoundField>
            <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL"></asp:BoundField>
        </Columns>
        
        <FooterStyle BackColor="Tan"></FooterStyle>

        <HeaderStyle BackColor="Tan" Font-Bold="True"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue"></PagerStyle>

        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FAFAE7"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#DAC09E"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#E1DB9C"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#C2A47B"></SortedDescendingHeaderStyle>
    </asp:GridView>



    <asp:SqlDataSource runat="server" ID="SDS_Blog" ConnectionString='<%$ ConnectionStrings:ConnStr %>' DeleteCommand="DELETE FROM [Blog] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Blog] ([Title], [Text], [Data], [ImageURL]) VALUES (@Title, @Text, @Data, @ImageURL)" SelectCommand="SELECT * FROM [Blog]" UpdateCommand="UPDATE [Blog] SET [Title] = @Title, [Text] = @Text, [Data] = @Data, [ImageURL] = @ImageURL WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String"></asp:Parameter>
            <asp:Parameter Name="Text" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="Data"></asp:Parameter>
            <asp:Parameter Name="ImageURL" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String"></asp:Parameter>
            <asp:Parameter Name="Text" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="Data"></asp:Parameter>
            <asp:Parameter Name="ImageURL" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>