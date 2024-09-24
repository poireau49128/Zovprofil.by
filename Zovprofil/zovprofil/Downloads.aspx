<%@ Page Title="���������� ��� �������� � ������� ���-�������" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Downloads.aspx.cs" ClientIDMode="Static" Inherits="Zovprofil.zovprofil.Downloads" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/downloads.css" rel="stylesheet" />

    <div class="container">
        <div class="text">
            �� ���� ������������ ����� �������� ��� ����������� ���������� �� ����� ���������. 
            � �������� ��������� � ������������ �� ������� ���������� ��������� �� ��������� ������� � ����������� �������. 
            ������� � ���������� � ������� �������� ������ ������������. 
            ��� �������� ������� ��������� � ���� ������ ������ �������� ������ �����������. 
            ���������� � ��������������� ���������� ������� ������������� � ���������� 3ds Max � PRO100 
            �������� ������ � �������� ������� � ���������� ����������� ��� 3D-���������������.<br /><br />
            �� ������ ��������� � ��������������� �������������� � ������ �������� � ���������� ���������, 
            � ����� ��������������� �����������������. 
            �������������� ��������� ������������ � ������������, 
            ����� ������ �� �������� ��������������, ��������� �������� � ������� ���������.
        </div>

        <div class="category-wrapper">
                <div id="Sotrudnichestvo"  class="men-item-sel"  onclick="SelectItem(this)">
                    ��������������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
                <div id="Info" class="men-item"  onclick="SelectItem(this)">
                    ����������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
                <div id="Catalogs" class="men-item"  onclick="SelectItem(this)">
                    ��������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
                <div id="TechData" class="men-item"  onclick="SelectItem(this)">
                    ���������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
                <div id="Schemes"  class="men-item"  onclick="SelectItem(this)">
                    ����� ������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
                <div id="3D"  class="men-item"  onclick="SelectItem(this)">
                    3D
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>                    
                <div id="Docs" class="men-item"  onclick="SelectItem(this)">
                    ������ ���������
                    <div class="image-container">
                        <img src="/Images/right.png" style="padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
            </div>

        <div class="files-wrapper">
            <div id="SotrudnichestvoCont" style="">
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���������� �� ��������������</span>
                        <span class="desc">��������������� �������� ��� ������� � �������, ������������ ������������,
�������� �������� � �������� ������� ���������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� �� ��������������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/WordFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������� �������</span>
                        <span class="desc">�������� ���������� ��������� ��� ������ �������������� � ���������� �������� �
����� ������������� ��������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������� �������.docx">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/WordFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� ������� BYN(�) 2023</span>
                        <span class="desc">������� ������� �������������� � ����������-����������� ������� 2023 ����, BYN.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� BYN(�) 2023.docx">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/WordFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� ������� B�������(�) 2023</span>
                        <span class="desc">������� ������� �������������� � ����������-������������� ������� 2023 ����, RUB.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� B�������(�) 2023.docx">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
            </div>
            <div id="InfoCont" style="display:none">
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� �� ������������</span>
                        <span class="desc">������������ �� ������������ ��������� ������� � ���������� �������, �������
���������� ����������� ������������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� ������� ���-�������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">��������������� ������ ��� ������ �������</span>
                        <span class="desc">������ �� ��� ���� ����������ʻ �� ������� ������</span>
                    </div>
                    <a href="https://zovprofil.by/Files/��������������� ������ ��� ������ �������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������� � ��������� ��������� cookie</span>
                        <span class="desc">�������� � ��������� ��������� cookie</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������� � ��������� ��������� cookie.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���������� � ������� - 2023</span>
                        <span class="desc">���������� � ������� - 2023</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� ���������� � �������(2023).pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
            </div>
            <div id="CatalogsCont" style="display:none">
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���-�������. ������ (2022)</span>
                        <span class="desc">��������� ����������� ���������� �� ���� ������������ ���������� ������� � ������������ ���������. ������ ��� ���������� ������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/Catalog.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������� ������</span>
                        <span class="desc">����������� ���������� (����� ������, ��������� �����) ��� ���������� � ��������� �
�������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������� ������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">��������� ������</span>
                        <span class="desc">������� � ��������� 3 ��������� ��������� ������: ����������, �������� � �����.
���������� ������� ��� ���������� � ��������� � �������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/��������� ������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������ ��� �������� ���</span>
                        <span class="desc">�������������� ������� � �������� ��������� ������ ��������� �����, ����������
������� � ���� ����������. ��������� �������� ��� �������� �����������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������ ��� �������� ���.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                        
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������ ��� �������� �������</span>
                        <span class="desc">�������������� ������� � ����������� ����������� � ��������� ������ ��������.
��������� �������� ��� �������� �����������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������ ��� �������� �������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
            </div>    
            <div id="TechDataCont" style="display:none">
                     
            </div> 
            <div id="SchemesCont" style="display:none">
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� ������. �������</span>
                        <span class="desc">����� ��� ������� �������� ������ ��������� �������� � �������� ������� � ������
������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� ������. �������.zip">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� ������. ���</span>
                        <span class="desc">����� ��� ������� �������� ������ ��������� ����� � �������� ������� � ������
������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� ������. ���.zip">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� ������. ��������</span>
                        <span class="desc">����� ��� ������� �������� ������ ��������� ���������� � �������� ������� � ������
������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� ������. ��������.zip">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������  ��-1  ��-002.30</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������  ��-1  ��-002.30.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-180  ��-002.39</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-180  ��-002.39.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-180  ��-002.36</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-180  ��-002.36.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-160  ��-002.38</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-160  ��-002.38.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-160  ��-002.35</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-160  ��-002.35.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-90  ��-002.40</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-90  ��-002.40.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�������  ��-90  ��-002.37</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�������  ��-90  ��-002.37.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� ��-150  ��-001.32</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� ��-150  ��-001.32.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� ��-100  ��-001.31</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� ��-100  ��-001.31.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�����  �2-150 ��-001.28</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�����  �2-150 ��-001.28.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�����  �1-100  ��-001.27</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�����  �1-100  ��-001.27.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� �1-80  ��-001.26</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� �1-80  ��-001.26.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� �1-60  ��-001.25</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� �1-60  ��-001.25.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�����  �2-150  ��-001.22</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�����  �2-150  ��-001.22.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�����  �1-100  ��-001.21</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�����  �1-100  ��-001.21.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">�����  �1-60  ��-002.20</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/�����  �1-60  ��-002.20.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���� ��� ������  ��-190  ��-001.52</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���� ��� ������  ��-190  ��-001.52.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���� ��� ������  ��-150  ��-002.51</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���� ��� ������  ��-150  ��-002.51.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���� ��� ������  ��-100  ��-002.50</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���� ��� ������  ��-100  ��-002.50.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����  ��2-100  ��-001.12</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����  ��2-100  ��-001.12.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����  ��2-80  ��-001.11</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����  ��2-80  ��-001.11.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���� ��2-60  ��-001.10</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���� ��2-60  ��-001.10.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��2-100  ��-001.09</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��2-100  ��-001.09.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��2-80  ��-001.08</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��2-80  ��-001.08.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��2-60  ��-001.07</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��2-60  ��-001.07.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���� ��1-100  ��-001.06</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���� ��1-100  ��-001.06.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����  ��1-80  ��-001.05</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����  ��1-80  ��-001.05.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����  ��1-60  ��-001.04</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����  ��1-60  ��-001.04.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��1-100  ��-001.03</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��1-100  ��-001.03.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��1-80  ��-001.02</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��1-80  ��-001.02.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����-�������  ��1-60  ��-001.01</span>
                        <span class="desc">-</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����-�������  ��1-60  ��-001.01.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <%--<div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">������� ������� 2017-2018</span>
                        <span class="desc">��������������� �������� �� �������� ������� � ����������� ����������� ���
������������ �������� ��������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/������� ������� 2017-2018.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���������� �� ��������������</span>
                        <span class="desc">��������������� �������� ��� ������� � �������, ������������ ������������,
�������� �������� � �������� ������� ���������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� �� ��������������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>--%>
            </div>
            <div id="3DCont" style="display:none">
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">PRO100 �������� ������</span>
                        <span class="desc">������������� � ��������� PRO100 �������� �������� �������: ���������, �������,
������� � ������� �������. �������� ����� ������� ���������� � ���������������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/PRO100 �������� ������.zip">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">PRO100 ��������� � ��������</span>
                        <span class="desc">������������� � ��������� PRO100 ���������, ������ � ������������ �������� � �������� �������. ������������� ��� ���������� ����������� � ����������������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� � ��������� Pro100-5.20 �� ���-�������.rar">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">3ds Max ������ ������</span>
                        <span class="desc">������������� � ��������� 3D Max �������� ������ ��������� ����������,
�������� � �����, �������� ������������ ������. �������� ����� �������
���������� � ���������������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/3ds Max ������ ������.zip">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ArchiveFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">PRO100 �������� ���</span>
                        <span class="desc">������������� � ��������� PRO100 �������� ������ ��������� �����, ����� ������������ �������. �������� ����� ������� ���������� � ��������� ������.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���.rar">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
            </div>  
            <div id="DocsCont" style="display:none">
                <div class="downitem">
                    <img src="/Images/PDFFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">����� ��������� ���-�������</span>
                        <span class="desc">����������� ����� ������ ��� ��������� ����� ��������� ��� "���-�������". �����: RU, ENG.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/����� ��������� ���-�������.pdf">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ImageFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���������� ���-�������</span>
                        <span class="desc">���������� ������������ ����������� ��� 1871-2008, ���� 16371-93.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� ���-�������.jpg">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
                <div class="downitem">
                    <img src="/Images/ImageFile.png" class="file-ic" />
                    <div class="data">
                        <span class="name">���������� ���-���</span>
                        <span class="desc">���������� ������������ ����������� ��� 1871-2008, ���� 16371-93.</span>
                    </div>
                    <a href="https://zovprofil.by/Files/���������� ���-���.jpg">
                        <div class="down-but">
                            <img src="/Images/download.png" class="download" />
                        </div>
                    </a>
                </div>
            </div> 
        </div>
    </div>

    <div style="text-align:center">
        <div style="width:70%; display:inline-block">

            <div class="men-cont">
                
            </div>
            <div class="down-cont">
                
            </div>

        </div>
    </div>
    


    <script>
        $(document).ready(function () {
            ShowContent();
        })

        function SelectItem(e) {
            $('.men-item-sel').each(function () {
                document.getElementById(this.id).className = "men-item"
                document.getElementById(this.id + "Cont").style.display = "none";
            });

            //var slides = document.getElementsByClassName("men-item-sel");
            //for (var i = 0; i < slides.length; i++) {
            //    slides.item(i).className = "men-item"
            //    //document.getElementById(slides.item(i).id + "Cont").className = "down-cont-hid";
            //    alert(slides.item(i). + "Cont")
            //}

            document.getElementById(e.id).className = "men-item-sel";
            document.getElementById(e.id + "Cont").style.display = "inline-block";
        }
    </script>

</asp:Content>
