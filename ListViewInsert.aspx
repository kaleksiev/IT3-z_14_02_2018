<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListViewInsert.aspx.cs" Inherits="ListViewInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:ListView ID="ListView1" runat="server" DataSourceID="SDS_Blog" DataKeyNames="Id" InsertItemPosition="LastItem">
       
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Text") %>' runat="server" ID="TextTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Data") %>' runat="server" ID="DataTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("ImageURL") %>' runat="server" ID="ImageURLTextBox" /></td>
            </tr>
        </InsertItemTemplate>
         
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">Title</th>
                                <th runat="server">Text</th>
                                <th runat="server">Data</th>
                                <th runat="server">ImageURL</th>
                            </tr>
                             
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                
            </table>
        </LayoutTemplate>
           <ItemTemplate>

            

        </ItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66; font-weight: bold; color: #000080;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Text") %>' runat="server" ID="TextLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Data") %>' runat="server" ID="DataLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("ImageURL") %>' runat="server" ID="ImageURLLabel" /></td>
            </tr>
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

