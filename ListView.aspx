<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListView.aspx.cs" Inherits="ListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SDS_Blog" DataKeyNames="Id">

        <AlternatingItemTemplate>
            <span style="">
                <div class="container">
                <div class="row">
                    <div class="col-md-3">

                        <asp:Image ID="Image1" runat="server" Width="200" Height="200" ImageUrl='<%# Eval("ImageURL") %>' />
                    </div>
                    <div class="col-md-9">
                        <h2>'<%# Eval("Title") %>'</h2>
                        <p>'<%# Eval("Text") %>'</p>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListViewInsert.aspx">'<%# Eval("Data") %>'</asp:HyperLink>
                    </div>
                </div>
            </div>
                <br />
                <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">
                <div class="container">
                <div class="row">
                    <div class="col-md-3">

                        <asp:Image ID="Image1" runat="server" Width="200" Height="200" ImageUrl='<%# Eval("ImageURL") %>' />
                    </div>
                    <div class="col-md-9">
                        <h2>'<%# Eval("Title") %>'</h2>
                        <p>'<%# Eval("Text") %>'</p>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListViewInsert.aspx">'<%# Eval("Data") %>'</asp:HyperLink>
                    </div>
                </div>
            </div>
                <br />
                <br />
            </span>


        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
            <div style="">
            </div>

        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                Title:
                <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /><br />
                Text:
                <asp:Label Text='<%# Eval("Text") %>' runat="server" ID="TextLabel" /><br />
                Data:
                <asp:Label Text='<%# Eval("Data") %>' runat="server" ID="DataLabel" /><br />
                ImageURL:
                <asp:Label Text='<%# Eval("ImageURL") %>' runat="server" ID="ImageURLLabel" /><br />
                <br />
            </span>

        </SelectedItemTemplate>
    </asp:ListView>
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

