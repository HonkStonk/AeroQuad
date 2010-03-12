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
		<Item Name="Dialog" Type="Folder">
			<Item Name="ErrorDialog.vi" Type="VI" URL="../Dialog/ErrorDialog.vi"/>
			<Item Name="ReconnectDialog.vi" Type="VI" URL="../Dialog/ReconnectDialog.vi"/>
		</Item>
		<Item Name="Utilities" Type="Folder">
			<Item Name="TDMS" Type="Folder">
				<Item Name="_G TDMS 8x" Type="Folder">
					<Item Name="G TDMS 1D Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS 1D Meta Data.vi"/>
					<Item Name="G TDMS 2D Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS 2D Meta Data.vi"/>
					<Item Name="G TDMS 2D String Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS 2D String Meta Data.vi"/>
					<Item Name="G TDMS Channel Check.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Channel Check.vi"/>
					<Item Name="G TDMS Channel Names.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Channel Names.vi"/>
					<Item Name="G TDMS Close.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Close.vi"/>
					<Item Name="G TDMS Convert Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Convert Data.vi"/>
					<Item Name="G TDMS Dgtl Line.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Line.vi"/>
					<Item Name="G TDMS Dgtl Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Meta Data.vi"/>
					<Item Name="G TDMS Dgtl Waveform Info.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Waveform Info.vi"/>
					<Item Name="G TDMS Dgtl Wfrm Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Dgtl Wfrm Meta Data.vi"/>
					<Item Name="G TDMS DIAdem Dgtl Properties.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS DIAdem Dgtl Properties.vi"/>
					<Item Name="G TDMS DIAdem Properties.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS DIAdem Properties.vi"/>
					<Item Name="G TDMS Flat String.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Flat String.vi"/>
					<Item Name="G TDMS Get Info.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Get Info.vi"/>
					<Item Name="G TDMS Group Name.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Group Name.vi"/>
					<Item Name="G TDMS Index.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Index.vi"/>
					<Item Name="G TDMS Open.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Open.vi"/>
					<Item Name="G TDMS Path.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Path.vi"/>
					<Item Name="G TDMS Properties Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Properties Array.vi"/>
					<Item Name="G TDMS Property.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Property.vi"/>
					<Item Name="G TDMS Segment.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Segment.vi"/>
					<Item Name="G TDMS Set Properties.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Set Properties.vi"/>
					<Item Name="G TDMS Single Channel Names.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Single Channel Names.vi"/>
					<Item Name="G TDMS String Index.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS String Index.vi"/>
					<Item Name="G TDMS String Offsets 1D.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS String Offsets 1D.vi"/>
					<Item Name="G TDMS Waveform Info.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Waveform Info.vi"/>
					<Item Name="G TDMS Wfrm Meta Data 2D.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Wfrm Meta Data 2D.vi"/>
					<Item Name="G TDMS Wfrm Meta Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Wfrm Meta Data.vi"/>
					<Item Name="G TDMS Write 2D Array of Strings.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write 2D Array of Strings.vi"/>
					<Item Name="G TDMS Write 2D Bool Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write 2D Bool Array.vi"/>
					<Item Name="G TDMS Write Array of Strings.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Array of Strings.vi"/>
					<Item Name="G TDMS Write Array of Waveform.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Array of Waveform.vi"/>
					<Item Name="G TDMS Write Bool Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Bool Array.vi"/>
					<Item Name="G TDMS Write DBL 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write DBL 2D Array.vi"/>
					<Item Name="G TDMS Write DBL Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write DBL Array.vi"/>
					<Item Name="G TDMS Write Dgtl Data.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Dgtl Data.vi"/>
					<Item Name="G TDMS Write Dgtl Waveform.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Dgtl Waveform.vi"/>
					<Item Name="G TDMS Write I16 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I16 2D Array.vi"/>
					<Item Name="G TDMS Write I16 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I16 Array.vi"/>
					<Item Name="G TDMS Write I32 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I32 2D Array.vi"/>
					<Item Name="G TDMS Write I32 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I32 Array.vi"/>
					<Item Name="G TDMS Write I64 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I64 2D Array.vi"/>
					<Item Name="G TDMS Write I64 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I64 Array.vi"/>
					<Item Name="G TDMS Write I8 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I8 2D Array.vi"/>
					<Item Name="G TDMS Write I8 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write I8 Array.vi"/>
					<Item Name="G TDMS Write SGL 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write SGL 2D Array.vi"/>
					<Item Name="G TDMS Write SGL Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write SGL Array.vi"/>
					<Item Name="G TDMS Write U16 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U16 2D Array.vi"/>
					<Item Name="G TDMS Write U16 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U16 Array.vi"/>
					<Item Name="G TDMS Write U32 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U32 2D Array.vi"/>
					<Item Name="G TDMS Write U32 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U32 Array.vi"/>
					<Item Name="G TDMS Write U64 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U64 2D Array.vi"/>
					<Item Name="G TDMS Write U64 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U64 Array.vi"/>
					<Item Name="G TDMS Write U8 2D Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U8 2D Array.vi"/>
					<Item Name="G TDMS Write U8 Array.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write U8 Array.vi"/>
					<Item Name="G TDMS Write Waveform.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write Waveform.vi"/>
					<Item Name="G TDMS Write.vi" Type="VI" URL="../Utilities/TDMS/_G TDMS 8x.llb/G TDMS Write.vi"/>
				</Item>
				<Item Name="G TDMS 8x.mnu" Type="Document" URL="../Utilities/TDMS/G TDMS 8x.mnu"/>
			</Item>
			<Item Name="DecodeSensorBytes.vi" Type="VI" URL="../Utilities/DecodeSensorBytes.vi"/>
			<Item Name="WriteEEPROM.vi" Type="VI" URL="../Utilities/WriteEEPROM.vi"/>
		</Item>
		<Item Name="Icon" Type="Folder">
			<Item Name="Config-Tools.ico" Type="Document" URL="../Icon/Config-Tools.ico"/>
		</Item>
		<Item Name="AeroQuadConfigurator.vi" Type="VI" URL="../AeroQuadConfigurator.vi"/>
		<Item Name="AeroQuadConfigurator.ini" Type="Document" URL="../AeroQuadConfigurator.ini"/>
		<Item Name="AeroQuad.ini" Type="Document" URL="../AeroQuad.ini"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Duration.vi"/>
				<Item Name="WDT Waveform Duration DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform Duration DBL.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="DWDT Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Waveform Duration.vi"/>
				<Item Name="DWDT Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital Size.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Uncompress Digital.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Digital Size.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
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
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2009/resource/lvanlys.dll"/>
			<Item Name="visarc" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2009/resource/visarc"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Executable" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
				<Property Name="App_applicationName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="App_autoIncrement" Type="Bool">true</Property>
				<Property Name="App_companyName" Type="Str">AeroQuad</Property>
				<Property Name="App_fileDescription" Type="Str">Executable
2.2.0.0
Copyright 2010 AeroQuad</Property>
				<Property Name="App_fileVersion.build" Type="Int">1</Property>
				<Property Name="App_fileVersion.major" Type="Int">2</Property>
				<Property Name="App_fileVersion.minor" Type="Int">2</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
				<Property Name="App_INI_GUID" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
				<Property Name="App_INI_itemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
				<Property Name="App_internalName" Type="Str">Executable</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright 2010 AeroQuad</Property>
				<Property Name="App_productName" Type="Str">Executable</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Executable</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">AeroQuadConfigurator.app</Property>
				<Property Name="Destination[0].path" Type="Path">../Executable/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Executable/data</Property>
				<Property Name="Destination[2].destName" Type="Str">DLL Directory</Property>
				<Property Name="Destination[2].path" Type="Path">../Executable</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Icon/Config-Tools.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{109B255A-F35C-4443-BAE6-20973D17DC21}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/AeroQuad.ini</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
			</Item>
			<Item Name="Installer" Type="Installer">
				<Property Name="arpCompany" Type="Str">Carancho Engineering LLC</Property>
				<Property Name="arpURL" Type="Str">http://www.AeroQuad.com</Property>
				<Property Name="BldInfo.Count" Type="Int">1</Property>
				<Property Name="BldInfo[0].Dir" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="BldInfo[0].Tag" Type="Ref">/My Computer/Build Specifications/Executable</Property>
				<Property Name="BuildLabel" Type="Str">Installer</Property>
				<Property Name="BuildLocation" Type="Path">../../builds/AeroQuadConfigurator/Installer</Property>
				<Property Name="DirInfo.Count" Type="Int">2</Property>
				<Property Name="DirInfo.DefaultDir" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="DirInfo[0].DirName" Type="Str">AeroQuadConfigurator</Property>
				<Property Name="DirInfo[0].DirTag" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="DirInfo[1].DirName" Type="Str">data</Property>
				<Property Name="DirInfo[1].DirTag" Type="Str">{41D76EAD-01B6-44A8-A571-C2D7BE7C0911}</Property>
				<Property Name="DirInfo[1].ParentTag" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="DistID" Type="Str">{AC943C01-8EA8-4BFF-A46F-CC5E452DF24E}</Property>
				<Property Name="DistParts.Count" Type="Int">2</Property>
				<Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPartsInfo[0].ProductID" Type="Str">{61912EB3-0D1B-4EDB-AD88-E96A3B851403}</Property>
				<Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 2009</Property>
				<Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{1DA01FF3-1E36-4A14-802B-D195819E159B}</Property>
				<Property Name="DistPartsInfo[1].FlavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPartsInfo[1].ProductID" Type="Str">{D6FC9FA9-3386-409A-8D62-EE026CA721D1}</Property>
				<Property Name="DistPartsInfo[1].ProductName" Type="Str">NI-VISA Runtime 4.5</Property>
				<Property Name="DistPartsInfo[1].UpgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="FileInfo.Count" Type="Int">4</Property>
				<Property Name="FileInfo[0].DirTag" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="FileInfo[0].FileName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="FileInfo[0].FileTag" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
				<Property Name="FileInfo[0].Type" Type="Int">3</Property>
				<Property Name="FileInfo[0].TypeID" Type="Ref">/My Computer/Build Specifications/Executable</Property>
				<Property Name="FileInfo[1].DirTag" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="FileInfo[1].FileName" Type="Str">AeroQuadConfigurator.aliases</Property>
				<Property Name="FileInfo[1].FileTag" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
				<Property Name="FileInfo[1].Type" Type="Int">3</Property>
				<Property Name="FileInfo[1].TypeID" Type="Ref">/My Computer/Build Specifications/Executable</Property>
				<Property Name="FileInfo[2].DirTag" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="FileInfo[2].FileName" Type="Str">AeroQuadConfigurator.ini</Property>
				<Property Name="FileInfo[2].FileTag" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
				<Property Name="FileInfo[2].Type" Type="Int">3</Property>
				<Property Name="FileInfo[2].TypeID" Type="Ref">/My Computer/Build Specifications/Executable</Property>
				<Property Name="FileInfo[3].DirTag" Type="Str">{41D76EAD-01B6-44A8-A571-C2D7BE7C0911}</Property>
				<Property Name="FileInfo[3].FileName" Type="Str">AeroQuadConfigurator.ini</Property>
				<Property Name="FileInfo[3].FileTag" Type="Ref">/My Computer/AeroQuadConfigurator.ini</Property>
				<Property Name="FileInfo[3].Type" Type="Int">3</Property>
				<Property Name="FileInfo[3].TypeID" Type="Ref">/My Computer/Build Specifications/Executable</Property>
				<Property Name="InstSpecVersion" Type="Str">9008024</Property>
				<Property Name="LicenseFile" Type="Ref"></Property>
				<Property Name="OSCheck" Type="Int">0</Property>
				<Property Name="OSCheck_Vista" Type="Bool">false</Property>
				<Property Name="ProductName" Type="Str">AeroQuad Configurator</Property>
				<Property Name="ProductVersion" Type="Str">2.2.0</Property>
				<Property Name="ReadmeFile" Type="Ref"></Property>
				<Property Name="ShortcutInfo.Count" Type="Int">1</Property>
				<Property Name="ShortcutInfo[0].DirTag" Type="Str">{B9E310F1-839C-48B7-8CAE-33000780C26E}</Property>
				<Property Name="ShortcutInfo[0].FileTag" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
				<Property Name="ShortcutInfo[0].FileTagDir" Type="Str">{911FD540-AAC1-4ACE-952C-14E573DC1E9B}</Property>
				<Property Name="ShortcutInfo[0].Name" Type="Str">AeroQuad Configurator</Property>
				<Property Name="ShortcutInfo[0].SubDir" Type="Str">AeroQuad Configurator</Property>
				<Property Name="UpgradeCode" Type="Str">{24029CB6-D54A-4D61-8023-884E5516E281}</Property>
				<Property Name="WindowMessage" Type="Str">Thanks for using the AeroQuad Configurator.  The Configurator is used to setup your AeroQuad.  If you have any questions or suggestions for improvement for the Configurator, please post them at http://forum.AeroQuad.info</Property>
				<Property Name="WindowTitle" Type="Str">AeroQuad Configurator</Property>
			</Item>
		</Item>
	</Item>
</Project>
