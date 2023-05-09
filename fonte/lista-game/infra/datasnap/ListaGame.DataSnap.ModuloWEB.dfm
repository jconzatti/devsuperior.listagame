object ModuloWEBDataSnap: TModuloWEBDataSnap
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end>
  Height = 333
  Width = 414
  object DSServer: TDSServer
    Left = 56
    Top = 67
  end
  object DSHTTPWebDispatcher: TDSHTTPWebDispatcher
    Server = DSServer
    Filters = <>
    WebDispatch.PathInfo = 'datasnap*'
    Left = 104
    Top = 187
  end
  object DSServerClassTeste: TDSServerClass
    OnGetClass = DSServerClassTesteGetClass
    Server = DSServer
    Left = 176
    Top = 67
  end
end
