<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="steps.aspx.cs" Inherits="steps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br /><br /><br />
<br />
<h4> Before filling the form Ensure that you have all the need documents and informations .Whice is required during filling a form.</h4><br />
 <h3><asp:Image ID="Image2" runat="server" ImageUrl="~/images/moon_5.gif" /><u>NEEDED INFORMATION AND DOCUMENTS ARE</u>.......................</h3><br />
     <h3>1.  Fill all information related to your self Correctly.<br />
      2. For all NEW STUDENTS and as well as all OLD STUDENTS the form will be same.<br />
            3. Enter your correct Information .<br />
            4. Students can login by using the provided USERNAME and PASSWORD.<br />
            5. Students can also using their ATM card, Credit card for Online payment.<br />
            6. For Paying the Charges of Admission form we provide the Option Of ONLINE PAYMENT.</h3><br />


         <h3>   
             <asp:HyperLink ID="HyperLink2" runat="server" 
                 NavigateUrl="OnlinePay.aspx">CONTINUOUS FOR PAYMENT PROCESS</asp:HyperLink></h3>

 <br />
    <br />
    </div>
</asp:Content>

