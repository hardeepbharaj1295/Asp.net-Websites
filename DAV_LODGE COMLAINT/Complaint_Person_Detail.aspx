<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Complaint_Person_Detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <asp:Label ID="Label14" runat="server" 
            style="z-index: 1; left: 995px; top: 111px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 473px; top: 145px; position: absolute; height: 21px; font-family: 'Lucida Calligraphy'; font-weight: 700;" 
            Text="Registration of Complaint" Font-Size="X-Large" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 422px; top: 198px; position: absolute; font-size: 15pt; font-style: italic;" 
            Text="Complaining Person's Details" Font-Bold="True" ForeColor="#000099"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 422px; top: 287px; position: absolute; font-weight: 700;" 
            Text="First Name" ForeColor="#3333CC"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" 
            
            
            
            style="z-index: 1; left: 556px; top: 282px; position: absolute; height: 24px;" 
            TabIndex="2"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
            
            
            
            
            style="z-index: 1; left: 557px; top: 331px; position: absolute; height: 26px;" 
            TabIndex="3"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 422px; top: 335px; position: absolute; font-weight: 700;" 
            Text="Last Name" ForeColor="#3333CC"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" 
            ErrorMessage="Mobile No Should Be 10 Character Long" 
            style="z-index: 1; left: 557px; top: 260px; position: absolute" 
            ValidationExpression="^[0-9]{10}" ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 421px; top: 238px; position: absolute" 
            Text="Mobile Number" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            
            
            style="z-index: 1; left: 557px; top: 234px; position: absolute; height: 24px;" 
            TabIndex="1"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" 
            
            style="z-index: 1; left: 424px; top: 382px; position: absolute; height: 21px; font-weight: 700;" 
            Text="Address" ForeColor="#3333CC"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" 
            
            
            
            
            style="z-index: 1; left: 557px; top: 379px; position: absolute; height: 24px;" 
            TabIndex="4"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 424px; top: 426px; position: absolute; font-weight: 700;" 
            Text="PIN Code" ForeColor="#3333CC"></asp:Label>
&nbsp;<asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            style="z-index: -2; left: 407px; top: 198px; position: absolute; height: 467px; width: 445px"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 424px; top: 471px; position: absolute; height: 20px; font-weight: 700;" 
            Text="Email_Address" ForeColor="#3333CC"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Insert Text Without Space" 
            style="z-index: 1; left: 556px; top: 306px; position: absolute; height: 19px" 
            ValidationExpression="^[a-zA-Z]+$" ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" 
            
            
            
            
            
            
            style="z-index: 1; left: 557px; top: 468px; position: absolute; height: 25px;" 
            TabIndex="6"></asp:TextBox>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Pin Code Should Be 6 Character Long" 
            style="z-index: 1; left: 557px; top: 447px; position: absolute" 
            ValidationExpression="^[0-9]{6}" ForeColor="#000099"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Enter Correct Email_Id" 
            style="z-index: 1; left: 557px; top: 492px; position: absolute; height: 19px;" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Insert Text Without Space" 
            style="z-index: 1; left: 557px; top: 356px; position: absolute" 
            ValidationExpression="^[a-zA-z]+$" ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" 
            style="z-index: 1; left: 747px; top: 547px; position: absolute; width: 100px; height: 22px;" 
            ForeColor="#000099" AutoPostBack="True" TabIndex="8">
            <asp:ListItem>Locality</asp:ListItem>
            <asp:ListItem>GNP</asp:ListItem>
            <asp:ListItem>P.A.P</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox8" runat="server" 
            style="z-index: 1; left: 736px; top: 309px; position: absolute; width: 107px;" 
            Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" 
            
            
            
            style="z-index: 1; left: 557px; top: 423px; position: absolute; height: 24px;" 
            ontextchanged="TextBox5_TextChanged" TabIndex="5"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 683px; top: 549px; position: absolute; font-weight: 700;" 
            Text="Locality" ForeColor="#3333CC"></asp:Label>
        <br />
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 423px; top: 589px; position: absolute; width: 131px; font-weight: 700;" 
            Text="Specific Landmark" ForeColor="#3333CC"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; left: 423px; top: 512px; position: absolute; height: 22px; font-size: large; font-weight: 700; font-style: italic;" 
            Text="Complaint Location" ForeColor="#000099"></asp:Label>
        
        <br />
        <asp:TextBox ID="TextBox7" runat="server" 
            
            
            style="z-index: 1; left: 558px; top: 586px; position: absolute; height: 25px;" 
            TabIndex="9"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" 
            style="z-index: 1; left: 558px; top: 548px; position: absolute" 
            ForeColor="#000099" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" TabIndex="7">
            <asp:ListItem>Area/Ward no.</asp:ListItem>
            <asp:ListItem>WardNo1</asp:ListItem>
            <asp:ListItem>WardNo2</asp:ListItem>
            <asp:ListItem>WardNo3</asp:ListItem>
            <asp:ListItem>WardNo4</asp:ListItem>
            <asp:ListItem>WardNo5</asp:ListItem>
            <asp:ListItem>WardNo6</asp:ListItem>
            <asp:ListItem>WardNo7</asp:ListItem>
            <asp:ListItem>WardNo8</asp:ListItem>
            <asp:ListItem>WardNo9</asp:ListItem>
            <asp:ListItem>WardNo10</asp:ListItem>
            <asp:ListItem>WardNo11</asp:ListItem>
            <asp:ListItem>WardNo12</asp:ListItem>
            <asp:ListItem>WardNo13</asp:ListItem>
            <asp:ListItem>WardNo14</asp:ListItem>
            <asp:ListItem>WardNo15</asp:ListItem>
            <asp:ListItem>WardNo16</asp:ListItem>
            <asp:ListItem>WardNo17</asp:ListItem>
            <asp:ListItem>WardNo18</asp:ListItem>
            <asp:ListItem>WardNo19</asp:ListItem>
            <asp:ListItem>WardNo20</asp:ListItem>
            <asp:ListItem>WardNo21</asp:ListItem>
            <asp:ListItem>WardNo22</asp:ListItem>
            <asp:ListItem>WardNo23</asp:ListItem>
            <asp:ListItem>WardNo24</asp:ListItem>
            <asp:ListItem>WardNo25</asp:ListItem>
            <asp:ListItem>WardNo26</asp:ListItem>
            <asp:ListItem>WardNo27</asp:ListItem>
            <asp:ListItem>WardNo28</asp:ListItem>
            <asp:ListItem>WardNo29</asp:ListItem>
            <asp:ListItem>WardNo30</asp:ListItem>
            <asp:ListItem>WardNo31</asp:ListItem>
            <asp:ListItem>WardNo32</asp:ListItem>
            <asp:ListItem>WardNo33</asp:ListItem>
            <asp:ListItem>WardNo34</asp:ListItem>
            <asp:ListItem>WardNo35</asp:ListItem>
            <asp:ListItem>WardNo36</asp:ListItem>
            <asp:ListItem>WardNo37</asp:ListItem>
            <asp:ListItem>WardNo38</asp:ListItem>
            <asp:ListItem>WardNo39</asp:ListItem>
            <asp:ListItem>WardNo40</asp:ListItem>
            <asp:ListItem>WardNo41</asp:ListItem>
            <asp:ListItem>WardNo42</asp:ListItem>
            <asp:ListItem>WardNo43</asp:ListItem>
            <asp:ListItem>WardNo44</asp:ListItem>
            <asp:ListItem>WardNo45</asp:ListItem>
            <asp:ListItem>WardNo46</asp:ListItem>
            <asp:ListItem>WardNo47</asp:ListItem>
            <asp:ListItem>WardNo48</asp:ListItem>
            <asp:ListItem>WardNo49</asp:ListItem>
            <asp:ListItem>WardNo50</asp:ListItem>
            <asp:ListItem>WardNo51</asp:ListItem>
            <asp:ListItem>WardNo52</asp:ListItem>
            <asp:ListItem>WardNo53</asp:ListItem>
            <asp:ListItem>WardNo54</asp:ListItem>
            <asp:ListItem>WardNo55</asp:ListItem>
            <asp:ListItem>WardNo56</asp:ListItem>
            <asp:ListItem>WardNo57</asp:ListItem>
            <asp:ListItem>WardNo58</asp:ListItem>
            <asp:ListItem>WardNo59</asp:ListItem>
            <asp:ListItem>WardNo60</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 423px; top: 549px; position: absolute; font-weight: 700;" 
            Text="Area/Wizard no." ForeColor="#3333CC"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 562px; top: 629px; position: absolute; font-weight: 700; font-size: medium;" 
            Text="Continue" ForeColor="#000099" TabIndex="10" />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

