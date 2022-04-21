module Library where
import GHC.Num (Num)

data Hechiceros = Hechiceros {
    nombre :: String,
    experiencia :: Int,
    clan :: String,
    grado :: Int
}deriving (Show)

expe :: Hechiceros-> String
preparado :: [Hechiceros]-> String
s_grado :: Hechiceros -> Hechiceros
prestigioso :: Hechiceros -> Bool

nobara = Hechiceros {
    nombre = "Nobara",
    experiencia = 1 ,
    clan = "Kugisaki",
    grado= 3
}

satoru = Hechiceros {
    nombre = "Satura",
    experiencia = 15 ,
    clan = "Gojo",
    grado= 0
}

maki = Hechiceros {
    nombre = "Maki",
    experiencia = 3 ,
    clan = "Zenin",
    grado= 4
}
yuji = Hechiceros {
    nombre = "Yuji",
    experiencia = 0 ,
    clan = "Itadori",
    grado= 1
}
equipo = [yuji, maki, satoru, nobara]
clanesPrestigiosos=["Zenin","Gojo","Kamo"]
expe hechicero | experiencia hechicero>1 = "Tiene experiencia"
expe hechicero | experiencia hechicero<1 = "Es un pichon"

preparado equipo | length equipo >= 3 = "Esta preparado"
preparado equipo | length equipo < 3 = "No esta preparado"

s_grado hechicero = hechicero{nombre=nombre hechicero,experiencia=experiencia hechicero,clan=clan hechicero,grado= grado hechicero-1}

prestigioso hechicero = elem (clan hechicero) clanesPrestigiosos
