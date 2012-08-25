object FormBibSearch: TFormBibSearch
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Nemp: Search in the library'
  ClientHeight = 527
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GRPBOXSuchauswahl: TGroupBox
    Tag = 2
    Left = 8
    Top = 8
    Width = 520
    Height = 49
    Caption = 'Search history'
    TabOrder = 6
    object CB_SearchHistory: TComboBox
      Left = 3
      Top = 16
      Width = 510
      Height = 21
      Style = csDropDownList
      ItemHeight = 0
      TabOrder = 0
      OnChange = CB_SearchHistoryChange
    end
  end
  object GRPErweiterteSucheEdit: TGroupBox
    Tag = 2
    Left = 8
    Top = 63
    Width = 353
    Height = 290
    Caption = 'Keywords'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DesignSize = (
      353
      290)
    object LblConst_SearchArtist: TLabel
      Left = 14
      Top = 76
      Width = 26
      Height = 13
      Caption = 'Artist'
    end
    object LblConst_SearchTitle: TLabel
      Left = 14
      Top = 101
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object LblConst_SearchAlbum: TLabel
      Left = 14
      Top = 128
      Width = 29
      Height = 13
      Caption = 'Album'
    end
    object LblConst_SearchComment: TLabel
      Left = 14
      Top = 182
      Width = 45
      Height = 13
      Caption = 'Comment'
    end
    object LblConst_SearchPath: TLabel
      Left = 14
      Top = 155
      Width = 22
      Height = 13
      Caption = 'Path'
    end
    object LblConst_GeneralSearchHint: TLabel
      Left = 14
      Top = 49
      Width = 89
      Height = 13
      Caption = 'General search for'
    end
    object LblConst_LyricSearchHint: TLabel
      Left = 12
      Top = 217
      Width = 27
      Height = 13
      Caption = 'Lyrics'
    end
    object ArtistEDIT: TEdit
      Left = 53
      Top = 71
      Width = 289
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object TitelEDIT: TEdit
      Left = 53
      Top = 98
      Width = 289
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object AlbumEDIT: TEdit
      Left = 53
      Top = 125
      Width = 289
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object KommentarEDIT: TEdit
      Left = 82
      Top = 181
      Width = 260
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
    end
    object PathEDIT: TEdit
      Left = 53
      Top = 152
      Width = 289
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object GeneralEdit: TEdit
      Left = 121
      Top = 44
      Width = 221
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object LyricEdit: TMemo
      Left = 53
      Top = 217
      Width = 289
      Height = 60
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        '')
      TabOrder = 6
    end
    object CBFehlerToleranz: TCheckBox
      Left = 14
      Top = 21
      Width = 124
      Height = 17
      Caption = 'Fuzzy search'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 7
    end
    object BtnClear: TButton
      Left = 229
      Top = 13
      Width = 113
      Height = 25
      Caption = 'Clear inputs'
      TabOrder = 8
      OnClick = BtnClearClick
    end
  end
  object GrpBox_ExtendedSearchDate: TGroupBox
    Tag = 2
    Left = 229
    Top = 359
    Width = 132
    Height = 160
    Caption = 'Date'
    TabOrder = 2
    object LblConst_SearchExtendedYear: TLabel
      Left = 8
      Top = 80
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year'
      Enabled = False
    end
    object LblConst_SearchExtendedPeriod: TLabel
      Left = 8
      Top = 48
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Period'
      Enabled = False
    end
    object seJahr: TSpinEdit
      Left = 56
      Top = 72
      Width = 57
      Height = 22
      Enabled = False
      MaxValue = 3000
      MinValue = 0
      TabOrder = 2
      Value = 2000
    end
    object cbIgnoreYear: TCheckBox
      Left = 11
      Top = 17
      Width = 105
      Height = 17
      Caption = 'Ignore'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbIgnoreYearClick
    end
    object cbIncludeNA: TCheckBox
      Left = 54
      Top = 102
      Width = 67
      Height = 17
      Caption = 'N/A'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cbInclude0: TCheckBox
      Left = 54
      Top = 125
      Width = 67
      Height = 17
      Caption = '0'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object cb_ExtendedSearchPeriod: TComboBox
      Left = 56
      Top = 40
      Width = 57
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Before'
      Items.Strings = (
        'Before'
        'After'
        'During')
    end
  end
  object GrpBox_ExtendedSearchGenres: TGroupBox
    Tag = 2
    Left = 8
    Top = 359
    Width = 215
    Height = 160
    Align = alCustom
    Caption = 'Genres'
    TabOrder = 1
    object cbGenres: TCheckListBox
      Left = 8
      Top = 40
      Width = 195
      Height = 88
      Columns = 2
      Enabled = False
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
    end
    object cbIgnoreGenres: TCheckBox
      Left = 8
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Ignore'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbIgnoreGenresClick
    end
    object cbIncludeUnkownGenres: TCheckBox
      Left = 8
      Top = 136
      Width = 185
      Height = 17
      Caption = 'N/A, unknown'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object Btn_ExtendedSearch: TButton
    Left = 367
    Top = 66
    Width = 154
    Height = 46
    Caption = 'Search'
    TabOrder = 3
    OnClick = Btn_ExtendedSearchClick
  end
  object BtnRefineSearch: TButton
    Tag = 1
    Left = 367
    Top = 118
    Width = 154
    Height = 46
    Caption = 'Refine search'
    TabOrder = 4
    OnClick = Btn_ExtendedSearchClick
  end
  object BtnExtendSearch: TButton
    Tag = 2
    Left = 367
    Top = 170
    Width = 154
    Height = 46
    Caption = 'Extend search'
    TabOrder = 5
    OnClick = Btn_ExtendedSearchClick
  end
end
