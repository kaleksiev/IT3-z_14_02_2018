<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebPage.aspx.cs" Inherits="WebPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <span style="">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                PageContent:
                <asp:Label Text='<%# Eval("PageContent") %>' runat="server" ID="PageContentLabel" /><br />
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Id:
                
                <asp:TextBox Text='<%# Bind("PageContent") %>'  TextMode="MultiLine" Width="100%" Rows="100" runat="server" ID="PageContentTextBox" ValidateRequestMode="Disabled" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
                <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">PageContent:
                <asp:TextBox Text='<%# Bind("PageContent") %>' runat="server" ID="PageContentTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">Id:
                <%# Eval("PageContent") %> 
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
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
                PageContent:
                <asp:Label Text='<%# Eval("PageContent") %>' runat="server" ID="PageContentLabel" /><br />
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnStr %>' DeleteCommand="DELETE FROM [WebPage] WHERE [Id] = @Id" InsertCommand="INSERT INTO [WebPage] ([PageContent]) VALUES (@PageContent)" SelectCommand="SELECT * FROM [WebPage]" UpdateCommand="UPDATE [WebPage] SET [PageContent] = @PageContent WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PageContent" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PageContent" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

