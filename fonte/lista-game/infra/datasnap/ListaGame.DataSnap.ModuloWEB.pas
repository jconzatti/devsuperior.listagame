unit ListaGame.DataSnap.ModuloWEB;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp,
  Web.WebFileDispatcher,
  Web.HTTPProd,
  Web.WebReq,
  Datasnap.DSHTTPCommon,
  Datasnap.DSHTTPWebBroker,
  Datasnap.DSServer,
  DataSnap.DSAuth,
  Datasnap.DSProxyJavaScript,
  Datasnap.DSMetadata,
  Datasnap.DSServerMetadata,
  Datasnap.DSClientMetadata,
  Datasnap.DSCommonServer,
  Datasnap.DSHTTP,
  IPPeerServer,
  ListaGame.DataSnap.Controlador.Exemplo;

type
  TModuloWEBDataSnap = class(TWebModule)
    DSHTTPWebDispatcher: TDSHTTPWebDispatcher;
    DSServer: TDSServer;
    DSServerClassTeste: TDSServerClass;
    procedure DSServerClassTesteGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var ModuloWEBDataSnapClass: TComponentClass = TModuloWEBDataSnap;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TModuloWEBDataSnap.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content :=
    '<html>' +
    '<head><title>DataSnap Server</title></head>' +
    '<body>DataSnap Server</body>' +
    '</html>';
end;

procedure TModuloWEBDataSnap.DSServerClassTesteGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TExemploControladorDataSnap;
end;

initialization

finalization
  Web.WebReq.FreeWebModules;

end.

