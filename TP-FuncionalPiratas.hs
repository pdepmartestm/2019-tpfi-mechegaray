data Pirata = Pirata {
    nombre :: String,
    botines :: [Botin]
  } deriving Show

type Botin = (String, Int)

jackSparrow = Pirata {nombre = "jackSparrow",botines = [("brujula",10000),("frascoArena",0)]}
davidJones = Pirata {nombre = "davidJones", botines = [("cajitaMusical",1)]}
anneBonny = Pirata {nombre = "anneBonny", botines = [("doblones",100),("frascoArena",0)]}



valores pirata = map snd (botines pirata)
tesoros pirata = map fst (botines pirata)

cantTesoro pirata = esAfortunado pirata

esAfortunado pirata = sum (valores pirata) >10000

--mismoTesoro pirata1 pirata2 = any ((==) unTesoro pirata1) (tesoros pirata2)

mayor [valor] = valor
mayor (priValor:segValor:valoresSig) = max priValor (mayor (segValor:valoresSig))
tesoroMasValioso pirata = mayor (valores pirata)

adquirirTesoro (_,botines) tesoro = (botines + tesoro)