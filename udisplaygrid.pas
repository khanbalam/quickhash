unit uDisplayGrid;
{ A new unit added in QuickHash 2.6.3 to better enable the seperate display of
  results when copying files from Source to Destination folders. Allows the main
  form to contain treeview explorer style charts for source and destination.
}
{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Grids, StdCtrls;

type

  { TfrmDisplayGrid1 }

  TfrmDisplayGrid1 = class(TForm)
    btnClipboardResults2: TButton;
    CopyAndHashGrid: TStringGrid;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDisplayGrid1: TfrmDisplayGrid1;

implementation

{ TfrmDisplayGrid1 }

procedure TfrmDisplayGrid1.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CopyAndHashGrid.Clear;
end;

initialization
  {$I uDisplayGrid.lrs}

end.

