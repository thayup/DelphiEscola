�
 TFORMEVENTOATIVIDADE 0:  TPF0�TFormEventoAtividadeFormEventoAtividadeCaptionCadastroOldCreateOrder	PixelsPerInch`
TextHeight �TPageControlPageControl1Left Top Width�Height� 
ActivePage	TabSheet1AlignalClient	MultiLine	TabOrderTabPositiontpRight 	TTabSheet	TabSheet1CaptionConsulta TBevelBevel3Left Top Width�Height7AlignalClientShapebsFrame  TLabelLabel5LeftTopWidth� HeightCaptionPesquisar pelo Nome do evento  TDBGridDBGrid1Left Top7Width�Height� AlignalBottomColor	clBtnFaceCtl3D
DataSource
dsCadastroOptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit ParentCtl3DReadOnly	TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameArialTitleFont.Style OnDrawColumnCellDBGrid1DrawColumnCell
OnDblClickDBGrid1DblClick	OnKeyDownDBGrid1KeyDownColumnsExpanded	FieldName	DESCRICAOTitle.Caption   DescriçãoVisible	    TEditsedtProcuraLeftTopWidth�HeightCharCaseecUpperCaseColorclCreamCtl3DParentCtl3DTabOrder OnChangesedtProcuraChange   	TTabSheet	TabSheet2CaptionCadastro
ImageIndex TBevelBevel1Left Top Width�Height� AlignalClientShapebsFrame  TLabelLabel6LeftoTop� Width-HeightCaptionIDTURMAFocusControlDBEdit5Visible  TLabelLabel7LeftTopWidth� HeightCaption"   Descrição do evento ou AtividadeFocusControlDBEdit6  TLabelLabel8LeftTopJWidthOHeightCaptionValor mensal R$  TLabelLabel1Left� TopJWidth@HeightCaption   Data do Início  TLabelLabel2Left TopJWidth/HeightCaption
Data Final  TDBEditDBEdit5LeftoTop� WidthWHeightColorclCreamCtl3D	DataFieldID
DataSource
dsCadastroParentCtl3DTabOrderVisible  TDBEditDBEdit6LeftTop*Width�HeightCharCaseecUpperCaseColorclCreamCtl3D	DataField	DESCRICAO
DataSource
dsCadastroParentCtl3DTabOrder   TDBEditDBEdit7LeftTop\WidthhHeightColorclCreamCtl3D	DataFieldVALOR
DataSource
dsCadastroParentCtl3DTabOrder  TDBEditDBEdit1Left� Top\Width� HeightColorclCreamCtl3D	DataFieldDATA_INI
DataSource
dsCadastroParentCtl3DTabOrder  TDBEditDBEdit2Left Top\Width� HeightColorclCreamCtl3D	DataFieldDATA_FIM
DataSource
dsCadastroParentCtl3DTabOrder    �TPanel	pnlTitulo �TBitBtn	btnFecharLeft�   �TClientDataSetcdsCadastro
BeforePostcdsCadastroBeforePost TIntegerFieldcdsCadastroID	FieldNameIDProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldcdsCadastroDESCRICAO	FieldName	DESCRICAOSize<  
TDateFieldcdsCadastroDATA_INI	FieldNameDATA_INIEditMask
99/99/9999  
TDateFieldcdsCadastroDATA_FIM	FieldNameDATA_FIMEditMask
99/99/9999  TFloatFieldcdsCadastroVALOR	FieldNameVALORDisplayFormat0.00  TIntegerFieldcdsCadastroCODEMPRESA	FieldName
CODEMPRESA   �	TSQLQuerysqlCadastroSQL.StringsSELECT * FROM EVENTO  TIntegerFieldsqlCadastroID	FieldNameIDProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldsqlCadastroDESCRICAO	FieldName	DESCRICAOSize<  
TDateFieldsqlCadastroDATA_INI	FieldNameDATA_INI  
TDateFieldsqlCadastroDATA_FIM	FieldNameDATA_FIM  TFloatFieldsqlCadastroVALOR	FieldNameVALOR  TIntegerFieldsqlCadastroCODEMPRESA	FieldName
CODEMPRESA    