<%@ Page Language="c#" Codebehind="republish.aspx.cs" MasterPageFile="../masterpages/umbracoDialog.Master" AutoEventWireup="True" Inherits="umbraco.cms.presentation.republish" %>
<%@ Register TagPrefix="ctl" Src="../controls/ProgressBar.ascx" TagName="ProgBar"  %>

<asp:Content ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
     function showProgress(button, elementId) {
       var img = document.getElementById(elementId);

       img.style.visibility = "visible";
       button.style.display = "none";
     }
		</script>
</asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="server">
<asp:Panel ID="p_republish" runat="server">
      <div class="propertyDiv">      
          <p><%= umbraco.ui.Text("defaultdialogs", "siterepublishHelp")%> </p>
      </div>
      
          <div id="buttons">
            <asp:Button ID="bt_go" OnClick="go" OnClientClick="showProgress(document.getElementById('buttons'),'progress'); return true;" runat="server" Text="Republish" />
            <em><%= umbraco.ui.Text("or") %></em>  
            <a href="#" onclick="UmbClientMgr.mainWindow().closeModal();"><%=umbraco.ui.Text("cancel")%></a>
          </div>     
      
      <div id="progress" style="visibility: hidden;">
		<ctl:ProgBar runat="server" id="ProgBar" />
      </div>
      
    </asp:Panel>
    
    <asp:Panel ID="p_done" Visible="false" runat="server">
     <div class="success">
      <p><%= umbraco.ui.Text("defaultdialogs", "siterepublished")%></p>
      
     </div>
      <input type="button" class="guiInputButton" onclick="UmbClientMgr.mainWindow().closeModal();" value="Ok" />
    </asp:Panel>
</asp:Content>