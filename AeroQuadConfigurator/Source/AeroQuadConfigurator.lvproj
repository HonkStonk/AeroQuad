<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="9008000">
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
		<Item Name="Dialog" Type="Folder" URL="../Dialog">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Utilities" Type="Folder" URL="../Utilities">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Icon" Type="Folder" URL="../Icon">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="AeroQuadConfigurator.vi" Type="VI" URL="../AeroQuadConfigurator.vi"/>
		<Item Name="AeroQuadConfigurator.ini" Type="Document" URL="../AeroQuadConfigurator.ini"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="TDMS - File Viewer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMS - File Viewer.vi"/>
				<Item Name="status.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/status.vi"/>
				<Item Name="fileViewerConfigData.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/fileViewerConfigData.ctl"/>
				<Item Name="TDMSFileViewerLocalizedText.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMSFileViewerLocalizedText.vi"/>
				<Item Name="initFileContentsTree.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initFileContentsTree.vi"/>
				<Item Name="getNamesFromPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getNamesFromPath.vi"/>
				<Item Name="getChannelList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getChannelList.vi"/>
				<Item Name="loadAndFormatValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/loadAndFormatValues.vi"/>
				<Item Name="formatPropertyList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/formatPropertyList.vi"/>
				<Item Name="Get Type of Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Get Type of Variant.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VariantType to Type Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/VariantType to Type Code.vi"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="setListBoxColumnWidths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/setListBoxColumnWidths.vi"/>
				<Item Name="configureNumberOfValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/configureNumberOfValues.vi"/>
				<Item Name="panelResize.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/panelResize.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/resource/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="AeroQuad Configurator Executable" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
				<Property Name="App_applicationName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="App_autoIncrement" Type="Bool">true</Property>
				<Property Name="App_companyName" Type="Str">AeroQuad</Property>
				<Property Name="App_fileDescription" Type="Str">AeroQuad Configurator Executable
1.3.2.0
Copyright ? 2009 AeroQuad</Property>
				<Property Name="App_fileVersion.build" Type="Int">12</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_fileVersion.minor" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
				<Property Name="App_INI_GUID" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
				<Property Name="App_internalName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright 2009 AeroQuad</Property>
				<Property Name="App_productName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="Bld_buildSpecName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Executable/AeroQuadConfigurator.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Executable/data</Property>
				<Property Name="Destination[2].destName" Type="Str">DLL Directory</Property>
				<Property Name="Destination[2].path" Type="Path">/C/WINDOWS/system32</Property>
				<Property Name="Destination[2].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Icon/Config-Tools.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{141E74CC-00CE-490D-BC7D-ACD32BBECD9C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
			<Item Name="AeroQuad Configurator Installer" Type="Installer">
				<Property Name="arpCompany" Type="Str">AeroQuad</Property>
				<Property Name="arpContact" Type="Str">info@AeroQuad.info</Property>
				<Property Name="arpURL" Type="Str">http://www.AeroQuad.info</Property>
				<Property Name="AutoIncrement" Type="Bool">true</Property>
				<Property Name="BldInfo.Count" Type="Int">1</Property>
				<Property Name="BldInfo[0].Dir" Type="Str">{23CD4F4C-2B05-4D82-8801-72DFF4B9C171}</Property>
				<Property Name="BldInfo[0].Tag" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
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
				<Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPartsInfo[0].ProductID" Type="Str">{2CA542BC-E002-4064-84DB-49B3E558A26D}</Property>
				<Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 8.6</Property>
				<Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{7975A1CC-5DCA-4997-EE8C-C1903BA18512}</Property>
				<Property Name="DistPartsInfo[1].FlavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPartsInfo[1].ProductID" Type="Str">{6E14AD54-2574-4DE6-81F0-2D4185B9371F}</Property>
				<Property Name="DistPartsInfo[1].ProductName" Type="Str">NI-VISA Runtime 4.4</Property>
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
				<Property Name="ProductVersion" Type="Str">1.3.4</Property>
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
				<Property Name="Bld_buildSpecName" Type="Str">AeroQuad Source Distribution</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">4</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/SourceDistribution</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/SourceDistribution/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{CB5CB443-B4A2-4F29-99A4-2F125F923DB7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
		</Item>
	</Item>
</Project>
