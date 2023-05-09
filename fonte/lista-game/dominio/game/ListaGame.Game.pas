unit ListaGame.Game;

interface

uses
   ListaGame.Game.Dado;

type
   TGame = class
   private
      FID : UInt64;
      FTitulo : String;
      FAno : Cardinal;
      FGenero: String;
      FListaPlataforma: String;
      FScore: Double;
      FURLImagem : String;
      FDescricaoCurta: String;
      FDescricaoLonga: String;
   public
      constructor Create(pDado: TGameDado);
      property ID: UInt64 read FID;
      property Titulo: String read FTitulo;
      property Ano: Integer read FAno;
      property Genero: String read FGenero;
      property ListaPlataforma: String read FListaPlataforma;
      property Score: Double read FScore;
      property URLImagem: String read FURLImagem;
      property DescricaoCurta: String read FDescricaoCurta;
      property DescricaoLonga: String read FDescricaoLonga;
   end;

implementation

{ TGame }

constructor TGame.Create(pDado: TGameDado);
begin
   FID             := pDado.ID;
   FTitulo         := pDado.Titulo;
   FAno            := pDado.Ano;
   FGenero         := pDado.Genero;
   FListaPlataforma:= pDado.ListaPlataforma;
   FScore          := pDado.Score;
   FURLImagem      := pDado.URLImagem;
   FDescricaoCurta := pDado.DescricaoCurta;
   FDescricaoLonga := pDado.DescricaoLonga;
end;

end.
