<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Property Name="varPersistentID:{0C81331C-FE93-4859-8DA4-DB9E26FD36BB}" Type="Ref">/My Computer/HUD.lvlib/MainStopPoint</Property>
	<Property Name="varPersistentID:{53AA6703-5D03-45D5-BF20-0FA9210D4EA8}" Type="Ref">/My Computer/HUD.lvlib/Video</Property>
	<Property Name="varPersistentID:{5E887C2D-9358-456B-B723-C863A26B083E}" Type="Ref">/My Computer/HUD.lvlib/EndingPoints</Property>
	<Property Name="varPersistentID:{C2229346-47E0-4E63-99AC-785E03247E35}" Type="Ref">/My Computer/HUD.lvlib/StartingPoints</Property>
	<Property Name="varPersistentID:{CC28B37A-4875-4522-BFB3-E21E9A6CED88}" Type="Ref">/My Computer/HUD.lvlib/OSDText</Property>
	<Property Name="varPersistentID:{D0D6E123-0313-42D6-91F7-322D5EB409D8}" Type="Ref">/My Computer/HUD.lvlib/MainStartPoint</Property>
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
		<Item Name="IMAQ" Type="Folder">
			<Item Name="NIVisSvc.dll" Type="Document" URL="../../../../../../../WINDOWS/system32/NIVisSvc.dll"/>
			<Item Name="ImaqDirectShowDll.dll" Type="Document" URL="../../../../../../../WINDOWS/system32/ImaqDirectShowDll.dll"/>
			<Item Name="NIVision.dll" Type="Document" URL="../../../../../../../WINDOWS/system32/NIVision.dll"/>
			<Item Name="imaqUSB.llb" Type="Document" URL="/&lt;vilib&gt;/imaqUSB/imaqUSB.llb"/>
			<Item Name="IMAQ Clear Overlay" Type="VI" URL="/&lt;vilib&gt;/Vision/Overlay.llb/IMAQ Clear Overlay"/>
			<Item Name="IMAQ Merge Overlay" Type="VI" URL="/&lt;vilib&gt;/Vision/Overlay.llb/IMAQ Merge Overlay"/>
			<Item Name="IMAQ Overlay Line" Type="VI" URL="/&lt;vilib&gt;/Vision/Overlay.llb/IMAQ Overlay Line"/>
			<Item Name="IMAQ Overlay Text" Type="VI" URL="/&lt;vilib&gt;/Vision/Overlay.llb/IMAQ Overlay Text"/>
			<Item Name="Avi1.llb" Type="Document" URL="/&lt;vilib&gt;/vision/Avi1.llb"/>
			<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/Vision/Basics.llb/IMAQ Create"/>
			<Item Name="IMAQ Dispose" Type="VI" URL="/&lt;vilib&gt;/Vision/Basics.llb/IMAQ Dispose"/>
			<Item Name="IMAQ Error" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Error"/>
		</Item>
		<Item Name="AeroQuadConfigurator.vi" Type="VI" URL="../AeroQuadConfigurator.vi"/>
		<Item Name="CalcPoint.vi" Type="VI" URL="../CalcPoint.vi"/>
		<Item Name="PointCoordinates.ctl" Type="VI" URL="../PointCoordinates.ctl"/>
		<Item Name="PointCoordinate.ctl" Type="VI" URL="../PointCoordinate.ctl"/>
		<Item Name="HUD.lvlib" Type="Library" URL="../HUD.lvlib"/>
		<Item Name="TransmitterChannel.ctl" Type="VI" URL="../TransmitterChannel.ctl"/>
		<Item Name="WriteEEPROM.vi" Type="VI" URL="../WriteEEPROM.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="IMAQ USB Init.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Init.vi"/>
				<Item Name="IMAQ USB PropertyPage.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB PropertyPage.vi"/>
				<Item Name="IMAQ USB Grab Setup.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Grab Setup.vi"/>
				<Item Name="IMAQ USB Grab Acquire.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Grab Acquire.vi"/>
				<Item Name="IMAQ USB Stop.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Stop.vi"/>
				<Item Name="IMAQ USB Close.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Close.vi"/>
				<Item Name="IMAQ USB Enumerate Cameras.vi" Type="VI" URL="/&lt;userlib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB Enumerate Cameras.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="IMAQ USB.ctl" Type="VI" URL="/&lt;vilib&gt;/imaqUSB/imaqUSB.llb/IMAQ USB.ctl"/>
				<Item Name="IMAQ AVI Create" Type="VI" URL="/&lt;vilib&gt;/vision/Avi1.llb/IMAQ AVI Create"/>
				<Item Name="AviRefnum.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Avi1.llb/AviRefnum.ctl"/>
				<Item Name="IMAQ Image Datatype to Image Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/vision/DatatypeConversion.llb/IMAQ Image Datatype to Image Cluster.vi"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ Image Cluster to Image Datatype.vi" Type="VI" URL="/&lt;vilib&gt;/vision/DatatypeConversion.llb/IMAQ Image Cluster to Image Datatype.vi"/>
				<Item Name="IMAQ AVI Write Frame" Type="VI" URL="/&lt;vilib&gt;/vision/Avi1.llb/IMAQ AVI Write Frame"/>
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
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/Vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ ReadFile" Type="VI" URL="/&lt;vilib&gt;/Vision/Files.llb/IMAQ ReadFile"/>
				<Item Name="Open Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Open Config Data.vi"/>
				<Item Name="Config Data Open Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Open Reference.vi"/>
				<Item Name="Config Data Registry.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry.vi"/>
				<Item Name="Config Data RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data RefNum"/>
				<Item Name="Config Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data.ctl"/>
				<Item Name="Config Data Section.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Section.ctl"/>
				<Item Name="Config Data Registry Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry Functions.ctl"/>
				<Item Name="Config Data Set File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Set File Path.vi"/>
				<Item Name="Config Data Modify.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify.vi"/>
				<Item Name="Info From Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Info From Config Data.vi"/>
				<Item Name="Config Data Modify Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify Functions.ctl"/>
				<Item Name="Config Data Read From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Read From File.vi"/>
				<Item Name="Config Data Get File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get File Path.vi"/>
				<Item Name="String to Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/String to Config Data.vi"/>
				<Item Name="Invalid Config Data Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Invalid Config Data Reference.vi"/>
				<Item Name="Config Data Close Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Close Reference.vi"/>
				<Item Name="Get Section Names.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Get Section Names.vi"/>
				<Item Name="Read Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (String).vi"/>
				<Item Name="Config Data Get Key Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get Key Value.vi"/>
				<Item Name="Parse Stored String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Parse Stored String.vi"/>
				<Item Name="Get Next Character.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Get Next Character.vi"/>
				<Item Name="Get Key Names.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Get Key Names.vi"/>
				<Item Name="Read Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Boolean).vi"/>
				<Item Name="Read Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Double).vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="Write Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (String).vi"/>
				<Item Name="Single to Double Backslash.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Single to Double Backslash.vi"/>
				<Item Name="Remove Unprintable Chars.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Unprintable Chars.vi"/>
				<Item Name="Write Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Boolean).vi"/>
				<Item Name="Write Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Double).vi"/>
				<Item Name="Close Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Close Config Data.vi"/>
				<Item Name="Config Data Write To File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Write To File.vi"/>
				<Item Name="Config Data to String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data to String.vi"/>
				<Item Name="Add Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Add Quotes.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Read Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key.vi"/>
				<Item Name="Read Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (I32).vi"/>
				<Item Name="Read Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Path).vi"/>
				<Item Name="Remove Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Quotes.vi"/>
				<Item Name="Common Path to Specific Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Common Path to Specific Path.vi"/>
				<Item Name="Read Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (U32).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Write Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key.vi"/>
				<Item Name="Write Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (I32).vi"/>
				<Item Name="Write Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Path).vi"/>
				<Item Name="Specific Path to Common Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Specific Path to Common Path.vi"/>
				<Item Name="Write Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (U32).vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="IMAQ AVI Close" Type="VI" URL="/&lt;vilib&gt;/vision/Avi1.llb/IMAQ AVI Close"/>
			</Item>
			<Item Name="ImaqDirectShowDll.dll" Type="Document" URL="ImaqDirectShowDll.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NIVisSvc.dll" Type="Document" URL="NIVisSvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NIVision.dll" Type="Document" URL="NIVision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="AeroQuad Configurator Executable" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{66C02D92-29AD-43F8-A6C3-B835B0C6FAEA}</Property>
				<Property Name="App_applicationName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="App_autoIncrement" Type="Bool">true</Property>
				<Property Name="App_companyName" Type="Str">AeroQuad</Property>
				<Property Name="App_fileDescription" Type="Str">AeroQuad Configurator Executable
1.1.0.0
Copyright ? 2009 AeroQuad</Property>
				<Property Name="App_fileVersion.build" Type="Int">1</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_fileVersion.minor" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{0E512C75-3384-479B-B8B3-5B0BF1B031D9}</Property>
				<Property Name="App_INI_GUID" Type="Str">{95AB525D-9CC0-48EA-84D7-D36AB922FE00}</Property>
				<Property Name="App_internalName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright ? 2008 AeroQuad</Property>
				<Property Name="App_productName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="Bld_buildSpecName" Type="Str">AeroQuad Configurator Executable</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">AeroQuadConfigurator.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Executable/internal.llb</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Executable/data</Property>
				<Property Name="Destination[2].destName" Type="Str">DLL Directory</Property>
				<Property Name="Destination[2].path" Type="Path">/C/WINDOWS/system32</Property>
				<Property Name="Destination[2].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{EB5EDD2B-C375-4D04-977A-8CE69B55776B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Merge Overlay</Property>
				<Property Name="Source[10].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Overlay Line</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Overlay Text</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[12].type" Type="Str">VI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref">/My Computer/IMAQ/Avi1.llb</Property>
				<Property Name="Source[13].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Create</Property>
				<Property Name="Source[14].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[14].type" Type="Str">VI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Dispose</Property>
				<Property Name="Source[15].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[15].type" Type="Str">VI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Error</Property>
				<Property Name="Source[16].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[16].type" Type="Str">VI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">1</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/IMAQ/NIVisSvc.dll</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">1</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/IMAQ/ImaqDirectShowDll.dll</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">1</Property>
				<Property Name="Source[19].itemID" Type="Ref">/My Computer/IMAQ/NIVision.dll</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/CalcPoint.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/PointCoordinates.ctl</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/PointCoordinate.ctl</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/HUD.lvlib</Property>
				<Property Name="Source[5].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Library</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/TransmitterChannel.ctl</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/WriteEEPROM.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/IMAQ/imaqUSB.llb</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/IMAQ/IMAQ Clear Overlay</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">20</Property>
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
				<Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPartsInfo[0].ProductID" Type="Str">{2CA542BC-E002-4064-84DB-49B3E558A26D}</Property>
				<Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 8.6</Property>
				<Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{7975A1CC-5DCA-4997-EE8C-C1903BA18512}</Property>
				<Property Name="DistPartsInfo[1].FlavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPartsInfo[1].ProductID" Type="Str">{6E14AD54-2574-4DE6-81F0-2D4185B9371F}</Property>
				<Property Name="DistPartsInfo[1].ProductName" Type="Str">NI-VISA Runtime 4.4</Property>
				<Property Name="DistPartsInfo[1].UpgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="FileInfo.Count" Type="Int">8</Property>
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
				<Property Name="FileInfo[3].DirTag" Type="Str">{1ECFADB7-8B3B-4CC9-86EB-E36A3F56CCAD}</Property>
				<Property Name="FileInfo[3].FileName" Type="Str">imaqUSB.llb</Property>
				<Property Name="FileInfo[3].FileTag" Type="Ref">/My Computer/IMAQ/imaqUSB.llb</Property>
				<Property Name="FileInfo[3].Type" Type="Int">3</Property>
				<Property Name="FileInfo[3].TypeID" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
				<Property Name="FileInfo[4].DirTag" Type="Str">{1ECFADB7-8B3B-4CC9-86EB-E36A3F56CCAD}</Property>
				<Property Name="FileInfo[4].FileName" Type="Str">Avi1.llb</Property>
				<Property Name="FileInfo[4].FileTag" Type="Ref">/My Computer/IMAQ/Avi1.llb</Property>
				<Property Name="FileInfo[4].Type" Type="Int">3</Property>
				<Property Name="FileInfo[4].TypeID" Type="Ref">/My Computer/Build Specifications/AeroQuad Configurator Executable</Property>
				<Property Name="FileInfo[5].DirTag" Type="Str">{D2272923-C63E-4A06-9729-85B1AD1CFB2A}</Property>
				<Property Name="FileInfo[5].FileName" Type="Str">NIVisSvc.dll</Property>
				<Property Name="FileInfo[5].FileTag" Type="Ref">/My Computer/IMAQ/NIVisSvc.dll</Property>
				<Property Name="FileInfo[5].Type" Type="Int">3</Property>
				<Property Name="FileInfo[5].TypeID" Type="Ref">/My Computer/Build Specifications/Vision DLL</Property>
				<Property Name="FileInfo[6].DirTag" Type="Str">{D2272923-C63E-4A06-9729-85B1AD1CFB2A}</Property>
				<Property Name="FileInfo[6].FileName" Type="Str">ImaqDirectShowDll.dll</Property>
				<Property Name="FileInfo[6].FileTag" Type="Ref">/My Computer/IMAQ/ImaqDirectShowDll.dll</Property>
				<Property Name="FileInfo[6].Type" Type="Int">3</Property>
				<Property Name="FileInfo[6].TypeID" Type="Ref">/My Computer/Build Specifications/Vision DLL</Property>
				<Property Name="FileInfo[7].DirTag" Type="Str">{D2272923-C63E-4A06-9729-85B1AD1CFB2A}</Property>
				<Property Name="FileInfo[7].FileName" Type="Str">NIVision.dll</Property>
				<Property Name="FileInfo[7].FileTag" Type="Ref">/My Computer/IMAQ/NIVision.dll</Property>
				<Property Name="FileInfo[7].Type" Type="Int">3</Property>
				<Property Name="FileInfo[7].TypeID" Type="Ref">/My Computer/Build Specifications/Vision DLL</Property>
				<Property Name="InstSpecVersion" Type="Str">8608001</Property>
				<Property Name="LicenseFile" Type="Ref"></Property>
				<Property Name="OSCheck" Type="Int">0</Property>
				<Property Name="OSCheck_Vista" Type="Bool">false</Property>
				<Property Name="ProductName" Type="Str">AeroQuad Configurator</Property>
				<Property Name="ProductVersion" Type="Str">1.1.1</Property>
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
				<Property Name="Source[0].itemID" Type="Str">{9CD5859A-E35B-46B7-B6E1-9F551ADFABB7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AeroQuadConfigurator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/CalcPoint.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/PointCoordinates.ctl</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/PointCoordinate.ctl</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/HUD.lvlib</Property>
				<Property Name="Source[5].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Library</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/TransmitterChannel.ctl</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/WriteEEPROM.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
			</Item>
			<Item Name="Vision DLL" Type="Source Distribution">
				<Property Name="Bld_buildSpecName" Type="Str">Vision DLL</Property>
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
				<Property Name="Destination[0].path" Type="Path">../Executable/data</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Executable/data/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{EC4D0BA1-A1BF-4E8F-B905-087F3B960D20}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/IMAQ/NIVisSvc.dll</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/IMAQ/ImaqDirectShowDll.dll</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/IMAQ/NIVision.dll</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
			</Item>
		</Item>
	</Item>
</Project>
