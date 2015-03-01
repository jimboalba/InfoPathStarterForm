<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2015-03-01T18:52:55" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="my:myFields">
		<html>
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TABLE.msoUcTable TD {
	BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid; BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdHyperlinkBox{word-wrap:break-word; text-overflow:ellipsis;overflow-x:hidden; OVERFLOW-Y: hidden; WHITE-SPACE:nowrap; display:inline-block;margin:1px;padding:5px;border: 1pt solid #dcdcdc;color:windowtext;BEHAVIOR: url(#default#urn::controls/Binder) url(#default#DataBindingUI)} 		.xdSection{border:1pt solid transparent ;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdRepeatingSection{border:1pt solid transparent;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdMultiSelectList{margin:1px;display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{BEHAVIOR: url(#default#ComboBox)} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdLayoutRegion{display:inline-block;} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdSharePointFileAttachment{display:inline-block;margin:2px;BEHAVIOR:url(#default#xdSharePointFileAttachment);} 		.xdAttachItem{display:inline-block;width:100%%;height:25px;margin:1px;BEHAVIOR:url(#default#xdSharePointFileAttachItem);} 		.xdSignatureLine{display:inline-block;margin:1px;background-color:transparent;border:1pt solid transparent;BEHAVIOR:url(#default#SignatureLine);} 		.xdHyperlinkBoxClickable{behavior: url(#default#HyperlinkBox)} 		.xdHyperlinkBoxButtonClickable{border-width:1px;border-style:outset;behavior: url(#default#HyperlinkBoxButton)} 		.xdPictureButton{background-color: transparent; padding: 0px; behavior: url(#default#PictureButton);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;word-wrap:normal;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;word-wrap:normal;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0; layout-grid: none} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style languageStyle="languageStyle">BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
SELECT {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
TABLE {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; TEXT-TRANSFORM: none; FONT-WEIGHT: normal; COLOR: black; FONT-STYLE: normal
}
.optionalPlaceholder {
	FONT-SIZE: 9pt; TEXT-DECORATION: none; FONT-FAMILY: Calibri; FONT-WEIGHT: normal; COLOR: #333333; FONT-STYLE: normal; PADDING-LEFT: 20px; BEHAVIOR: url(#default#xOptional)
}
.langFont {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; WIDTH: 150px
}
.defaultInDocUI {
	FONT-SIZE: 9pt; FONT-FAMILY: Calibri
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeClassic">TABLE {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TD {
	BORDER-TOP-COLOR: #d8d8d8; BORDER-LEFT-COLOR: #d8d8d8; BORDER-BOTTOM-COLOR: #d8d8d8; BORDER-RIGHT-COLOR: #d8d8d8
}
TH {
	BORDER-TOP-COLOR: #000000; BORDER-LEFT-COLOR: #000000; COLOR: black; BORDER-BOTTOM-COLOR: #000000; BORDER-RIGHT-COLOR: #000000; BACKGROUND-COLOR: #f2f2f2
}
.xdTableHeader {
	COLOR: black; BACKGROUND-COLOR: #f2f2f2
}
.light1 {
	BACKGROUND-COLOR: #ffffff
}
.dark1 {
	BACKGROUND-COLOR: #000000
}
.light2 {
	BACKGROUND-COLOR: #f1f5fd
}
.dark2 {
	BACKGROUND-COLOR: #002c84
}
.accent1 {
	BACKGROUND-COLOR: #f6aa00
}
.accent2 {
	BACKGROUND-COLOR: #f41e1e
}
.accent3 {
	BACKGROUND-COLOR: #568804
}
.accent4 {
	BACKGROUND-COLOR: #0a8faa
}
.accent5 {
	BACKGROUND-COLOR: #aa54a2
}
.accent6 {
	BACKGROUND-COLOR: #f47c46
}
</style>
				<style tableStyle="SharePoint">TR.xdTitleRow {
	MIN-HEIGHT: 58px
}
TD.xdTitleCell {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 18px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff
}
TR.xdTitleRowWithHeading {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithHeading {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 18px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff
}
TR.xdTitleRowWithSubHeading {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithSubHeading {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 18px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff
}
TR.xdTitleRowWithOffsetBody {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithOffsetBody {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 18px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff
}
TR.xdTitleHeadingRow {
	MIN-HEIGHT: 38px
}
TD.xdTitleHeadingCell {
	BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 12px; PADDING-TOP: 0px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: top
}
TR.xdTitleSubheadingRow {
	MIN-HEIGHT: 67px
}
TD.xdTitleSubheadingCell {
	BORDER-TOP: #001642 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-BOTTOM: 18px; PADDING-TOP: 8px; PADDING-LEFT: 22px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff
}
TD.xdVerticalFill {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid; BACKGROUND-COLOR: #1c67ff
}
TD.xdTableContentCellWithVerticalOffset {
	BORDER-RIGHT: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 12px; PADDING-LEFT: 85px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 10px; BACKGROUND-COLOR: #ffffff
}
TR.xdTableContentRow {
	MIN-HEIGHT: 140px
}
TD.xdTableContentCell {
	BORDER-RIGHT: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff
}
TD.xdTableContentCellWithVerticalFill {
	BORDER-RIGHT: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 1px; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-RIGHT: 1px; BACKGROUND-COLOR: #ffffff
}
TD.xdTableStyleOneCol {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdContentRowOneCol {
	MIN-HEIGHT: 45px; valign: center
}
TR.xdHeadingRow {
	MIN-HEIGHT: 36px
}
TD.xdHeadingCell {
	BORDER-BOTTOM: #1c67ff 1.5pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 6px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdSubheadingRow {
	MIN-HEIGHT: 27px
}
TD.xdSubheadingCell {
	BORDER-BOTTOM: #a5a5a5 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdHeadingRowEmphasis {
	MIN-HEIGHT: 36px
}
TD.xdHeadingCellEmphasis {
	BORDER-BOTTOM: #1c67ff 1.5pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 6px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdSubheadingRowEmphasis {
	MIN-HEIGHT: 27px
}
TD.xdSubheadingCellEmphasis {
	BORDER-BOTTOM: #a5a5a5 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdTableLabelControlStackedRow {
	MIN-HEIGHT: 45px
}
TD.xdTableLabelControlStackedCellLabel {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableLabelControlStackedCellComponent {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TR.xdTableRow {
	MIN-HEIGHT: 30px
}
TD.xdTableCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TD.xdTableMiddleCell {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px
}
TR.xdTableEmphasisRow {
	MIN-HEIGHT: 30px
}
TD.xdTableEmphasisCellLabel {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #f1f5fd
}
TD.xdTableEmphasisCellComponent {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #f1f5fd
}
TD.xdTableMiddleCellEmphasis {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #f1f5fd
}
TR.xdTableOffsetRow {
	MIN-HEIGHT: 30px
}
TD.xdTableOffsetCellLabel {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableOffsetCellComponent {
	BORDER-TOP: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #f1f5fd
}
P {
	FONT-SIZE: 10pt; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
H1 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 22pt; FONT-WEIGHT: normal; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
H2 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 15pt; FONT-WEIGHT: normal; COLOR: #262626; MARGIN-TOP: 0px
}
H3 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 12pt; FONT-WEIGHT: bold; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
H4 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 10pt; FONT-WEIGHT: normal; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
H5 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 10pt; FONT-WEIGHT: bold; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
H6 {
	MARGIN-BOTTOM: 0px; FONT-SIZE: 10pt; FONT-WEIGHT: normal; COLOR: #3f3f3f; MARGIN-TOP: 0px
}
BODY {
	COLOR: black
}
</style>
			</head>
			<body>
				<div align="center"></div>
				<div align="center"></div>
				<div align="center">
					<div> </div>
				</div>
				<div align="center">
					<table class="xdFormLayout xdTableStyleTwoCol" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; WIDTH: 650px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none">
						<colgroup>
							<col style="WIDTH: 325px"></col>
							<col style="WIDTH: 325px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr class="xdHeadingRow">
								<td colSpan="2" style="BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid" class="xdHeadingCell">
									<h1>InfoPath Form Starter</h1>
								</td>
							</tr>
							<tr class="xdTableRow">
								<td xd:layoutText="Add label" vAlign="top" style="BORDER-LEFT: #d8d8d8 1pt solid" class="xdTableCellLabel">
									<h4> </h4>
								</td>
								<td xd:layoutText="Add control" vAlign="top" style="BORDER-RIGHT: #d8d8d8 1pt solid" class="xdTableCellComponent"></td>
							</tr>
							<tr class="xdTableRow">
								<td xd:layoutText="Add label" vAlign="top" style="BORDER-LEFT: #d8d8d8 1pt solid" class="xdTableCellLabel">
									<h4> </h4>
								</td>
								<td xd:layoutText="Add control" vAlign="top" style="BORDER-RIGHT: #d8d8d8 1pt solid" class="xdTableCellComponent"></td>
							</tr>
							<tr class="xdTableRow">
								<td xd:layoutText="Add label" vAlign="top" style="BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid" class="xdTableCellLabel">
									<h4> </h4>
								</td>
								<td xd:layoutText="Add control" vAlign="top" style="BORDER-RIGHT: #d8d8d8 1pt solid; BORDER-BOTTOM: #d8d8d8 1pt solid" class="xdTableCellComponent"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center"> </div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
