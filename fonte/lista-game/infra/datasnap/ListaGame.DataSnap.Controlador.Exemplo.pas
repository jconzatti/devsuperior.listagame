unit ListaGame.DataSnap.Controlador.Exemplo;

interface

uses
   System.SysUtils,
   System.Classes,
   System.StrUtils,
   Datasnap.DSServer,
   Datasnap.DSAuth;

type
{$METHODINFO ON}
  TExemploControladorDataSnap = class(TComponent)
  private
    { Private declarations }
  public
    { Public declarations }
    function Imprimir(Value: string): string;
    function Inverter(Value: string): string;
  end;
{$METHODINFO OFF}

implementation



function TExemploControladorDataSnap.Imprimir(Value: string): string;
begin
   Result := Value;
end;

function TExemploControladorDataSnap.Inverter(Value: string): string;
begin
   Result := ReverseString(Value);
end;

end.

