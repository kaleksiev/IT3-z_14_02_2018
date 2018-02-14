<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Form View.aspx.cs" Inherits="Form_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" PagerSettings-PageButtonCount="10" DataKeyNames="Id" DataSourceID="SDS_Blog" AllowPaging="True" GridLines="Both">
        <EditItemTemplate>
            Id:
            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
            Title:
            <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /><br />
            Text:
            <asp:TextBox Text='<%# Bind("Text") %>' runat="server" ID="TextTextBox" /><br />
            Data:
            <asp:TextBox Text='<%# Bind("Data") %>' runat="server" ID="DataTextBox" /><br />
            ImageURL:
            <asp:TextBox Text='<%# Bind("ImageURL") %>' runat="server" ID="ImageURLTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Title:
            <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /><br />
            Text:
            <asp:TextBox Text='<%# Bind("Text") %>' runat="server" ID="TextTextBox" /><br />
            Data:
            <asp:TextBox Text='<%# Bind("Data") %>' runat="server" ID="DataTextBox" /><br />
            ImageURL:
            <asp:TextBox Text='<%# Bind("ImageURL") %>' runat="server" ID="ImageURLTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
            Title:
            <asp:Label Text='<%# Bind("Title") %>' runat="server" ID="TitleLabel" /><br />
            Text:
            <asp:Label Text='<%# Bind("Text") %>' runat="server" ID="TextLabel" /><br />
            Data:
            <asp:Label Text='<%# Bind("Data") %>' runat="server" ID="DataLabel" /><br />
            ImageURL:
            <asp:Label Text='<%# Bind("ImageURL") %>' runat="server" ID="ImageURLLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
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

