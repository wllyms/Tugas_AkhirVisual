unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TFpelanggaran = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpelanggaran: TFpelanggaran;
  id: string;

implementation

{$R *.dfm}

end.
