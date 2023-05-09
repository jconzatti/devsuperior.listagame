unit ListaGame.Game.Dado;

interface

type
   TGameDado = record
      ID : UInt64;
      Titulo : String;
      Ano : Cardinal;
      Genero: String;
      ListaPlataforma: String;
      Score: Double;
      URLImagem : String;
      DescricaoCurta: String;
      DescricaoLonga: String;
   end;

implementation

end.
