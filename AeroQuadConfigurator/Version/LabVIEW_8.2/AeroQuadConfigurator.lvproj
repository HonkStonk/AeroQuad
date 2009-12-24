<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="Dialog" Type="Folder">
         <Item Name="ErrorDialog.vi" Type="VI" URL="Dialog/ErrorDialog.vi"/>
         <Item Name="ReconnectDialog.vi" Type="VI" URL="Dialog/ReconnectDialog.vi"/>
      </Item>
      <Item Name="Utilities" Type="Folder">
         <Item Name="TDMS" Type="Folder">
            <Item Name="_G TDMS 8x" Type="Folder">
               <Item Name="G TDMS 1D Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS 1D Meta Data.vi"/>
               <Item Name="G TDMS 2D Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS 2D Meta Data.vi"/>
               <Item Name="G TDMS 2D String Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS 2D String Meta Data.vi"/>
               <Item Name="G TDMS Channel Check.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Channel Check.vi"/>
               <Item Name="G TDMS Channel Names.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Channel Names.vi"/>
               <Item Name="G TDMS Close.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Close.vi"/>
               <Item Name="G TDMS Convert Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Convert Data.vi"/>
               <Item Name="G TDMS Dgtl Line.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Line.vi"/>
               <Item Name="G TDMS Dgtl Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Meta Data.vi"/>
               <Item Name="G TDMS Dgtl Waveform Info.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Waveform Info.vi"/>
               <Item Name="G TDMS Dgtl Wfrm Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Wfrm Meta Data.vi"/>
               <Item Name="G TDMS DIAdem Dgtl Properties.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS DIAdem Dgtl Properties.vi"/>
               <Item Name="G TDMS DIAdem Properties.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS DIAdem Properties.vi"/>
               <Item Name="G TDMS Flat String.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Flat String.vi"/>
               <Item Name="G TDMS Get Info.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Get Info.vi"/>
               <Item Name="G TDMS Group Name.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Group Name.vi"/>
               <Item Name="G TDMS Index.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Index.vi"/>
               <Item Name="G TDMS Open.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Open.vi"/>
               <Item Name="G TDMS Path.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Path.vi"/>
               <Item Name="G TDMS Properties Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Properties Array.vi"/>
               <Item Name="G TDMS Property.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Property.vi"/>
               <Item Name="G TDMS Segment.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Segment.vi"/>
               <Item Name="G TDMS Set Properties.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Set Properties.vi"/>
               <Item Name="G TDMS Single Channel Names.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Single Channel Names.vi"/>
               <Item Name="G TDMS String Index.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS String Index.vi"/>
               <Item Name="G TDMS String Offsets 1D.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS String Offsets 1D.vi"/>
               <Item Name="G TDMS Waveform Info.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Waveform Info.vi"/>
               <Item Name="G TDMS Wfrm Meta Data 2D.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Wfrm Meta Data 2D.vi"/>
               <Item Name="G TDMS Wfrm Meta Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Wfrm Meta Data.vi"/>
               <Item Name="G TDMS Write 2D Array of Strings.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write 2D Array of Strings.vi"/>
               <Item Name="G TDMS Write 2D Bool Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write 2D Bool Array.vi"/>
               <Item Name="G TDMS Write Array of Strings.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Array of Strings.vi"/>
               <Item Name="G TDMS Write Array of Waveform.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Array of Waveform.vi"/>
               <Item Name="G TDMS Write Bool Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Bool Array.vi"/>
               <Item Name="G TDMS Write DBL 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write DBL 2D Array.vi"/>
               <Item Name="G TDMS Write DBL Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write DBL Array.vi"/>
               <Item Name="G TDMS Write Dgtl Data.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Dgtl Data.vi"/>
               <Item Name="G TDMS Write Dgtl Waveform.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Dgtl Waveform.vi"/>
               <Item Name="G TDMS Write I16 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I16 2D Array.vi"/>
               <Item Name="G TDMS Write I16 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I16 Array.vi"/>
               <Item Name="G TDMS Write I32 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I32 2D Array.vi"/>
               <Item Name="G TDMS Write I32 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I32 Array.vi"/>
               <Item Name="G TDMS Write I64 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I64 2D Array.vi"/>
               <Item Name="G TDMS Write I64 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I64 Array.vi"/>
               <Item Name="G TDMS Write I8 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I8 2D Array.vi"/>
               <Item Name="G TDMS Write I8 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I8 Array.vi"/>
               <Item Name="G TDMS Write SGL 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write SGL 2D Array.vi"/>
               <Item Name="G TDMS Write SGL Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write SGL Array.vi"/>
               <Item Name="G TDMS Write U16 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U16 2D Array.vi"/>
               <Item Name="G TDMS Write U16 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U16 Array.vi"/>
               <Item Name="G TDMS Write U32 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U32 2D Array.vi"/>
               <Item Name="G TDMS Write U32 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U32 Array.vi"/>
               <Item Name="G TDMS Write U64 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U64 2D Array.vi"/>
               <Item Name="G TDMS Write U64 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U64 Array.vi"/>
               <Item Name="G TDMS Write U8 2D Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U8 2D Array.vi"/>
               <Item Name="G TDMS Write U8 Array.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U8 Array.vi"/>
               <Item Name="G TDMS Write Waveform.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Waveform.vi"/>
               <Item Name="G TDMS Write.vi" Type="VI" URL="Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write.vi"/>
            </Item>
            <Item Name="G TDMS 8x.mnu" Type="Document" URL="Utilities/TDMS/G TDMS 8x.mnu"/>
         </Item>
         <Item Name="DecodeSensorBytes.vi" Type="VI" URL="Utilities/DecodeSensorBytes.vi"/>
         <Item Name="WriteEEPROM.vi" Type="VI" URL="Utilities/WriteEEPROM.vi"/>
      </Item>
      <Item Name="Icon" Type="Folder">
         <Item Name="Config-Tools.ico" Type="Document" URL="../../../../../LabVIEW_8.6/Icon/Config-Tools.ico"/>
      </Item>
      <Item Name="AeroQuadConfigurator.vi" Type="VI" URL="AeroQuadConfigurator.vi"/>
      <Item Name="AeroQuadConfigurator.ini" Type="Document" URL="AeroQuadConfigurator.ini"/>
      <Item Name="Dependencies" Type="Dependencies"/>
      <Item Name="Build Specifications" Type="Build">
         <Item Name="AeroQuad Configurator Executable" Type="EXE">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">true</Property>
            <Property Name="Absolute[2]" Type="Bool">false</Property>
            <Property Name="ActiveXServerName" Type="Str"></Property>
            <Property Name="AliasID" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
            <Property Name="ApplicationID" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
            <Property Name="ApplicationName" Type="Str">AeroQuadConfigurator.exe</Property>
            <Property Name="BuildName" Type="Str">AeroQuad Configurator Executable</Property>
            <Property Name="CommandLineArguments" Type="Bool">false</Property>
            <Property Name="CustomIcon" Type="Ref">/My Computer/Icon/Config-Tools.ico</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As Needed</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">AeroQuadConfigurator.exe</Property>
            <Property Name="DestinationName[1]" Type="Str">DLL Directory</Property>
            <Property Name="DestinationName[2]" Type="Str">Support Directory</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="INIID" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
            <Property Name="ININame" Type="Str">LabVIEW.ini</Property>
            <Property Name="MathScript" Type="Bool">true</Property>
            <Property Name="Path[0]" Type="Path">../../Executable/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">/C/WINDOWS/system32</Property>
            <Property Name="Path[2]" Type="Path">../../Executable/data</Property>
            <Property Name="SourceInfoItemCount" Type="Int">1</Property>
            <Property Name="SourceItem[0].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[0].Inclusion" Type="Str">Startup VI</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
            <Property Name="StripLib" Type="Bool">true</Property>
            <Property Name="TLBID" Type="Str"></Property>
            <Property Name="VersionInfoCompanyName" Type="Str">AeroQuad</Property>
            <Property Name="VersionInfoFileDescription" Type="Str">AeroQuad Configurator Executable
1.3.2.0
Copyright ? 2009 AeroQuad</Property>
            <Property Name="VersionInfoFileType" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">18</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">1</Property>
            <Property Name="VersionInfoInternalName" Type="Str">AeroQuad Configurator Executable</Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">Copyright 2009 AeroQuad</Property>
            <Property Name="VersionInfoProductName" Type="Str">AeroQuad Configurator Executable</Property>
         </Item>
         <Item Name="AeroQuad Configurator Installer" Type="Installer">
            <Property Name="arpCompany" Type="Str">AeroQuad</Property>
            <Property Name="arpContact" Type="Str">info@AeroQuad.info</Property>
            <Property Name="arpURL" Type="Str">http://www.AeroQuad.info</Property>
            <Property Name="AutoIncrement" Type="Bool">true</Property>
            <Property Name="BuildLabel" Type="Str">AeroQuad Configurator Installer</Property>
            <Property Name="BuildLocation" Type="Path">../../Installer</Property>
            <Property Name="DirInfo.Count" Type="Int">2</Property>
            <Property Name="DirInfo.DefaultDir" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="DirInfo[0].DirName" Type="Str">AeroQuadConfigurator</Property>
            <Property Name="DirInfo[0].DirTag" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
            <Property Name="DirInfo[1].DirName" Type="Str">data</Property>
            <Property Name="DirInfo[1].DirTag" Type="Str">{1ECFADB7-8B3B-4CC9-86EB-E36A3F56CCAD}</Property>
            <Property Name="DirInfo[1].ParentTag" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="DistID" Type="Str">{5C04B218-05C4-4F6E-8304-0C52611870B7}</Property>
            <Property Name="DistParts.Count" Type="Int">2</Property>
            <Property Name="DistPartsInfo[0].FlavorID" Type="Str"></Property>
            <Property Name="DistPartsInfo[0].ProductID" Type="Str"></Property>
            <Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 8.2</Property>
            <Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{B5171839-26E3-48D9-9FD6-AF7F39055146}</Property>
            <Property Name="DistPartsInfo[1].FlavorID" Type="Str">_deployment_</Property>
            <Property Name="DistPartsInfo[1].ProductID" Type="Str">{D6FC9FA9-3386-409A-8D62-EE026CA721D1}</Property>
            <Property Name="DistPartsInfo[1].ProductName" Type="Str">NI-VISA Runtime 4.5</Property>
            <Property Name="DistPartsInfo[1].UpgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
            <Property Name="FileInfo.Count" Type="Int">3</Property>
            <Property Name="FileInfo[0].DirTag" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="FileInfo[0].FileName" Type="Str">AeroQuadConfigurator.exe</Property>
            <Property Name="FileInfo[0].FileTag" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
            <Property Name="FileInfo[0].Type" Type="Int">3</Property>
            <Property Name="FileInfo[0].TypeID" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
            <Property Name="FileInfo[1].DirTag" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="FileInfo[1].FileName" Type="Str">AeroQuadConfigurator.aliases</Property>
            <Property Name="FileInfo[1].FileTag" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
            <Property Name="FileInfo[1].Type" Type="Int">3</Property>
            <Property Name="FileInfo[1].TypeID" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
            <Property Name="FileInfo[2].DirTag" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="FileInfo[2].FileName" Type="Str">AeroQuadConfigurator.ini</Property>
            <Property Name="FileInfo[2].FileTag" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
            <Property Name="FileInfo[2].Type" Type="Int">3</Property>
            <Property Name="FileInfo[2].TypeID" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
            <Property Name="InstSpecVersion" Type="Str">8608001</Property>
            <Property Name="LicenseFile" Type="Ref"></Property>
            <Property Name="OSCheck" Type="Int">0</Property>
            <Property Name="OSCheck_Vista" Type="Bool">false</Property>
            <Property Name="ProductName" Type="Str">AeroQuad Configurator</Property>
            <Property Name="ProductVersion" Type="Str">2.1.2</Property>
            <Property Name="ReadmeFile" Type="Ref"></Property>
            <Property Name="ShortcutInfo.Count" Type="Int">1</Property>
            <Property Name="ShortcutInfo[0].DirTag" Type="Str">{B9E310F1-839C-48B7-8CAE-33000780C26E}</Property>
            <Property Name="ShortcutInfo[0].FileTag" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
            <Property Name="ShortcutInfo[0].FileTagDir" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
            <Property Name="ShortcutInfo[0].Name" Type="Str">AeroQuad Configurator</Property>
            <Property Name="ShortcutInfo[0].SubDir" Type="Str">AeroQuad Configurator</Property>
            <Property Name="UpgradeCode" Type="Str">{A44E808E-F349-458C-880E-60B6EAC92D03}</Property>
            <Property Name="WindowMessage" Type="Str">Any comments and suggestions for improvement are welcome for the AeroQuad quadrocopter effort.  You can contact us at
info@AeroQuad.info or visit us at www.AeroQuad.info.</Property>
            <Property Name="WindowTitle" Type="Str">AeroQuad Configurator Installer</Property>
         </Item>
         <Item Name="AeroQuad Source Distribution" Type="Source Distribution">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">AeroQuad Source Distribution</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As Needed</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
            <Property Name="DestinationName[1]" Type="Str">Support Directory</Property>
            <Property Name="DestinationOption" Type="Str">Custom</Property>
            <Property Name="ExcludeInstrLib" Type="Bool">true</Property>
            <Property Name="ExcludeUserLib" Type="Bool">true</Property>
            <Property Name="ExcludeVILIB" Type="Bool">true</Property>
            <Property Name="Path[0]" Type="Path">../../builds/NI_AB_PROJECTNAME/SourceDistribution</Property>
            <Property Name="Path[1]" Type="Path">../../builds/NI_AB_PROJECTNAME/SourceDistribution/data</Property>
            <Property Name="SourceInfoItemCount" Type="Int">10</Property>
            <Property Name="SourceItem[0].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
            <Property Name="SourceItem[0].TopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[1].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[1].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[1].ItemID" Type="Ref">/My Computer/Dialog</Property>
            <Property Name="SourceItem[2].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[2].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[2].ItemID" Type="Ref">/My Computer/Utilities</Property>
            <Property Name="SourceItem[3].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[3].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[3].ItemID" Type="Ref">/My Computer/Icon</Property>
            <Property Name="SourceItem[4].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[4].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[4].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
            <Property Name="SourceItem[5].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[5].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[5].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
            <Property Name="SourceItem[6].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[6].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[6].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
            <Property Name="SourceItem[7].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[7].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[7].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
            <Property Name="SourceItem[8].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[8].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[8].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
            <Property Name="SourceItem[9].FolderTopLevelVI" Type="Str">Never</Property>
            <Property Name="SourceItem[9].Inclusion" Type="Str">As Needed</Property>
            <Property Name="SourceItem[9].ItemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
         </Item>
      </Item>
   </Item>
</Project>
