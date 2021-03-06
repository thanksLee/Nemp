{

    Unit ShutDownEdit
    Form ShutDownEditForm

    - Small Form for setting a customized countdown-length

    ---------------------------------------------------------------
    Nemp - Noch ein Mp3-Player
    Copyright (C) 2005-2010, Daniel Gaussmann
    http://www.gausi.de
    mail@gausi.de
    ---------------------------------------------------------------
    This program is free software; you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the
    Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin St, Fifth Floor, Boston, MA 02110, USA

    See license.txt for more information

    ---------------------------------------------------------------
}
unit ShutDownEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, gnuGettext;

type
  TShutDownEditForm = class(TForm)
    BtnOk: TButton;
    BtnCancel: TButton;
    GrpBox_CounbtdownLength: TGroupBox;
    LblConst_Hour: TLabel;
    LblConst_Minute: TLabel;
    SE_Hours: TSpinEdit;
    SE_Minutes: TSpinEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  ShutDownEditForm: TShutDownEditForm;

implementation

{$R *.dfm}

procedure TShutDownEditForm.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

end.
