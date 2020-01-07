 <%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="Create_An_Account.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <asp:TextBox ID="TextBox2" runat="server" 
            
            
            style="z-index: 1; left: 858px; top: 248px; position: absolute; height: 22px;" 
            ForeColor="#000099"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 425px; top: 250px; position: absolute; width: 73px; height: 19px;" 
            Text="First Name" ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            
            style="z-index: 1; left: 616px; top: 249px; position: absolute; height: 22px;" 
            ForeColor="#000099"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Insert Text Without Space" 
            style="z-index: 1; left: 616px; top: 272px; position: absolute" 
            ValidationExpression="^[a-zA-Z]+$" ForeColor="#000099"></asp:RegularExpressionValidator>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 779px; top: 251px; position: absolute; height: 22px" 
            Text="Last Name" ForeColor="#000099"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 426px; top: 298px; position: absolute; height: 18px; width: 47px" 
            Text="User id" ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox16" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 428px; top: 424px; position: absolute" 
            Text="Date of Birth" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="TextBox18" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 616px; top: 295px; position: absolute" 
            ForeColor="#000099"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" 
            
            
            
            style="z-index: 1; left: 616px; top: 332px; position: absolute; bottom: 262px" 
            ForeColor="#000099"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Password should be 4 to 20 long" 
            style="z-index: 1; left: 763px; top: 334px; position: absolute" 
            ValidationExpression="[^\t\n\r]{4,20}" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            
            
            style="z-index: 1; left: 785px; top: 295px; position: absolute; height: 22px;" 
            ForeColor="#000099">
            <asp:ListItem Value="0">Select One</asp:ListItem>
            <asp:ListItem value="@SB.com">SB.com</asp:ListItem>
            <asp:ListItem Value="@OCO.com">OCO.com</asp:ListItem>
            <asp:ListItem Value="@SBO.com">SBO.com</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Select Domain Name" 
            style="z-index: 1; left: 889px; top: 297px; position: absolute" 
            ControlToValidate="DropDownList1" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 427px; top: 336px; position: absolute; height: 19px" 
            Text="Password" ForeColor="#000099"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="DropDownList3" ErrorMessage="Select Month" 
            InitialValue="0" 
            
            
            
            style="z-index: 1; left: 687px; top: 448px; position: absolute; height: 20px;" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label12" runat="server" 
            style="z-index: 1; left: 428px; top: 604px; position: absolute; height: 23px" 
            Text="Security Question" ForeColor="#000099"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 427px; top: 371px; position: absolute" 
            Text="Confirm password" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" 
            
            
            style="z-index: 1; left: 617px; top: 639px; position: absolute; height: 22px;" 
            ForeColor="#000099"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Pin Code Should Be 6 Character Long" 
            style="z-index: 1; left: 617px; top: 545px; position: absolute" 
            ValidationExpression="^[0-9]{6}" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox19" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 427px; top: 398px; position: absolute; height: 23px" 
            Text="Gender" ForeColor="#000099"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            style="z-index: 1; left: 616px; top: 427px; position: absolute; width: 55px;" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            ForeColor="#000099">
            <asp:ListItem value="0">Day</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 428px; top: 642px; position: absolute; height: 15px" 
            Text="ANS" ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" runat="server" 
            style="z-index: 1; left: 617px; top: 521px; position: absolute" 
            ForeColor="#000099"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" 
            
            
            
            style="z-index: 1; left: 617px; top: 566px; position: absolute; height: 22px;" 
            ForeColor="#000099"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" 
            style="z-index: 1; left: 616px; top: 369px; position: absolute"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
            ErrorMessage="Password Mismatch" 
            style="z-index: 1; left: 762px; top: 370px; position: absolute" 
            ForeColor="Red"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownList4" ErrorMessage="Please Select One Question" 
            style="z-index: 1; left: 876px; top: 605px; position: absolute" 
            InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox17" runat="server" 
            style="z-index: 1; left: 617px; top: 469px; position: absolute; width: 242px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:RadioButton runat="server" 
            style="z-index: 1; left: 613px; top: 398px; position: absolute; width: 64px;" 
            Text="Male" GroupName="abc" ID="RadioButton2" ForeColor="#000099" />
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 430px; top: 475px; position: absolute" 
            Text="Address" ForeColor="#000099"></asp:Label>
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 778px; top: 524px; position: absolute" 
            Text="Mobile" ForeColor="#000099"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" 
            
            
            
            
            
            style="z-index: 1; left: 688px; top: 426px; position: absolute; height: 22px;" 
            ForeColor="#000099">
            <asp:ListItem value="0">Month</asp:ListItem>
            <asp:ListItem>Jan</asp:ListItem>
            <asp:ListItem>Feb</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>Aug</asp:ListItem>
            <asp:ListItem>Sep</asp:ListItem>
            <asp:ListItem>Oct</asp:ListItem>
            <asp:ListItem>Nov</asp:ListItem>
            <asp:ListItem>Dec</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" 
            style="z-index: 1; left: 617px; top: 604px; position: absolute" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
            ForeColor="#000099">
            <asp:ListItem Value="0">select one</asp:ListItem>
            <asp:ListItem>What is Your Favourate Colour?</asp:ListItem>
            <asp:ListItem>What is Your Childwood Frind Name?</asp:ListItem>
            <asp:ListItem>What is Your Pet Name?</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SUBMIT" 
            ForeColor="#000099" 
            style="z-index: 1; left: 616px; top: 678px; position: absolute; width: 94px; font-weight: 700; right: 395px" />
        <asp:Label ID="Label15" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 562px; top: 198px; position: absolute; font-family: 'Lucida Calligraphy'; font-size: x-large; font-weight: 700" 
            Text="Create An Account"></asp:Label>
        <br />
        <asp:RadioButton runat="server" 
            style="z-index: 1; left: 683px; top: 398px; position: absolute; width: 72px;" 
            Text="Female" GroupName="abc" ID="RadioButton1" ForeColor="#000099" />
        <asp:Label ID="Label9" runat="server" 
            
            style="z-index: 1; left: 430px; top: 524px; position: absolute; height: 18px;" 
            Text="PIN" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" 
            
            
            
            style="z-index: 1; left: 768px; top: 424px; position: absolute; height: 22px; width: 76px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownList2" ErrorMessage="Select Day" 
            InitialValue="0" 
            
            
            
            
            style="z-index: 1; left: 616px; top: 448px; position: absolute; width: 89px;" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox15" runat="server" 
            style="z-index: 1; left: 852px; top: 522px; position: absolute" 
            ForeColor="#000099"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Text="Account Is Created" 
            ForeColor="Red" style="z-index: 1; left: 739px; top: 682px; position: absolute" 
            Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 429px; top: 569px; position: absolute; height: 18px; width: 54px" 
            Text="Email_id" ForeColor="#000099"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

