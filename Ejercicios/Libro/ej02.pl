/*--  SINTAXIS: Operadores                              --*/


/* horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin) <-
                pertenecen al signo del horoscopo Signo los nacidos
                entre el DiaIni del MesIni y el DiaFin del MesFin   */
horoscopo(aries,21,3,21,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,21,5,21,6).
horoscopo(cancer,21,6,21,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,21,8,21,9).
horoscopo(libra,21,9,21,10).
horoscopo(escorpio,21,10,21,11).
horoscopo(sagitario,21,11,21,12).
horoscopo(capricornio,21,12,21,1).
horoscopo(acuario,21,1,21,2).
horoscopo(piscis,21,2,21,3).

/* signo(Dia,Mes,Signo) <- los nacidos el Dia de Mes pertenecen al
                           signo del zodiaco Signo */
signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),
                        ( (Mes=M1,Dia>=D1,mes(M1,D,_),Dia=<D) ;
                          (Mes=M2,Dia=<D2, Dia>0) ).

mes(1,31,enero).
mes(2,28,febrero).
mes(3,31,marzo).
mes(4,30,abril).
mes(5,31,mayo).
mes(6,30,junio).
mes(7,31,julio).
mes(8,31,agosto).
mes(9,30,septiembre).
mes(10,31,octubre).
mes(11,30,noviembre).
mes(12,31,diciembre).


/*
PREGUNTAS :

?- signo(8,5,tauro).

?- signo(7,8,acuario).

?- signo(7,8,Signo).

?- signo(7,X,Signo).

?- signo(X,7,Signo).


EJERCICIOS:

no podemos poner el 30 de febrero. 

Notas:
- No compliques la regla "signo" con condiciones complejas, si no
para esta regla o para otro programa.
*/

