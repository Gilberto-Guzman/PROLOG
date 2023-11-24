/*
INTERFAZ GRAFICA: Esta parte del sistema experto es la que se encarga de
interactuar con la persona comun, mostrar imagenes, botones, textos, etc.
INICIAR SISTEMA EXPERTO:
PARA CORRER EL PROGRAMA, ES NESESARIO CARGAR LAS 3 PARTES AL SWI PROLOG
Y LUEGO SOLO CONSULTAR TODO, AUTOMATICAMENTE SE ABRIRA LA VENTANA DEL PROGRAMA
*/
 :- use_module(library(pce)).
 :- pce_image_directory('./imagenes').
 :- use_module(library(pce_style_item)).
 :- dynamic color/2.
 
 resource(img_principal, image, image('img_principal.jpg')).
 resource(portada, image, image('portada.jpg')).

 resource('lo siento diagnostico desconocido', image, image('lo_siento_diagnostico_desconocido.jpg')).

 resource(ictioftiriosis, image, image('tratamiento_ictioftiriosis.jpg')).
 resource(columnaris, image, image('tratamiento_columnaris.jpg')).
 resource(saprolegniasis, image, image('tratamiento_saprolegniasis.jpg')).
 resource(aeromoniasis, image, image('tratamiento_aeromoniasis.jpg')).
 resource(costia, image, image('tratamiento_costia.jpg')).
 resource(punto_blanco, image, image('tratamiento_punto_blanco.jpg')).
 resource(eustrongylidosis, image, image('tratamiento_eustrongylidosis.jpg')).
 resource(hidropesia, image, image('tratamiento_hidropesia.jpg')).
 resource(mycobacteriosis, image, image('tratamiento_mycobacteriosis.jpg')).
 resource(septicemia, image, image('tratamiento_septicemia.jpg')).
 resource(nematodos, image, image('tratamiento_nematodos.jpg')).
 resource(parasitos_agallas, image, image('tratamiento_parasitos_agallas.jpg')).
 resource(dactiliosis, image, image('tratamiento_dactiliosis.jpg')).
 resource(lerneosis, image, image('tratamiento_lerneosis.jpg')).
 resource(oodiniosis, image, image('tratamiento_oodiniosis.jpg')).
 resource(anemia_infecciosa, image, image('tratamiento_anemia_infecciosa.jpg')).
 resource(hidatidosis, image, image('tratamiento_hidatidosis.jpg')).
 resource(hexamitiasis, image, image('tratamiento_hexamitiasis.jpg')).
 resource(furunculosis, image, image('tratamiento_furunculosis.jpg')).
 resource(copepodos, image, image('tratamiento_copepodos.jpg')).
 resource(vibriosis, image, image('tratamiento_vibriosis.jpg')).
 resource(piscirickettsiosis, image, image('tratamiento_piscirickettsiosis.jpg')).
 resource(lepidortosis, image, image('tratamiento_lepidortosis.jpg')).
 resource(myxobolosis, image, image('tratamiento_myxobolosis.jpg')).
 resource(enfermedad_linea_lateral, image, image('tratamiento_enfermedad_linea_lateral.jpg')).
 resource(piscirickettsiosis2, image, image('tratamiento_piscirickettsiosis2.jpg')).
 resource(streptococosis, image, image('tratamiento_streptococosis.jpg')).
 resource(enfermedad_rinon_carpa, image, image('tratamiento_enfermedad_rinon_carpa.jpg')).
 resource(infeccion_ranavirus, image, image('tratamiento_infeccion_ranavirus.jpg')).
 resource(linfocistis, image, image('tratamiento_linfocistis.jpg')).



 resource(ictioftiriosis_img, image, image('ictioftiriosis.jpg')).
 resource(columnaris_img, image, image('columnaris.jpg')).
 resource(saprolegniasis_img, image, image('saprolegniasis.jpg')).
 resource(aeromoniasis_img, image, image('aeromoniasis.jpg')).
 resource(costia_img, image, image('costia.jpg')).
 resource(punto_blanco_img, image, image('punto_blanco.jpg')).
 resource(eustrongylidosis_img, image, image('eustrongylidosis.jpg')).
 resource(hidropesia_img, image, image('hidropesia.jpg')).
 resource(mycobacteriosis_img, image, image('mycobacteriosis.jpg')).
 resource(septicemia_img, image, image('septicemia.jpg')).
 resource(nematodos_img, image, image('nematodos.jpg')).
 resource(parasitos_agallas_img, image, image('parasitos_agallas.jpg')).
 resource(dactiliosis_img, image, image('dactiliosis.jpg')).
 resource(lerneosis_img, image, image('lerneosis.jpg')).
 resource(oodiniosis_img, image, image('oodiniosis.jpg')).
 resource(anemia_infecciosa_img, image, image('anemia_infecciosa.jpg')).
 resource(hidatidosis_img, image, image('hidatidosis.jpg')).
 resource(hexamitiasis_img, image, image('hexamitiasis.jpg')).
 resource(furunculosis_img, image, image('furunculosis.jpg')).
 resource(copepodos_img, image, image('copepodos.jpg')).
 resource(vibriosis_img, image, image('vibriosis.jpg')).
 resource(piscirickettsiosis_img, image, image('piscirickettsiosis.jpg')).
 resource(lepidortosis_img, image, image('lepidortosis.jpg')).
 resource(myxobolosis_img, image, image('myxobolosis.jpg')).
 resource(enfermedad_linea_lateral_img, image, image('enfermedad_linea_lateral.jpg')).
 resource(piscirickettsiosis2_img, image, image('piscirickettsiosis2.jpg')).
 resource(streptococosis_img, image, image('streptococosis.jpg')).
 resource(enfermedad_rinon_carpa_img, image, image('enfermedad_rinon_carpa.jpg')).
 resource(infeccion_ranavirus_img, image, image('infeccion_ranavirus.jpg')).
 resource(linfocistis_img, image, image('linfocistis.jpg')).








mostrar_imagen(Pantalla, Imagen) :- new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(100,80)).
mostrar_imagen_tratamiento(Pantalla, Imagen) :-new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(20,100)).
 nueva_imagen(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(0,0)).
 imagen_pregunta(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(500,60)).
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
 botones:-borrado,
                send(@boton, free),
                send(@btntratamiento,free),
                mostrar_diagnostico(Enfermedad), %modifique
                send(@texto, selection('El Diagnostico a partir de los datos es:')),
                send(@resp1, selection(Enfermedad)),
                new(@boton, button('Iniciar consulta',
                message(@prolog, botones)
                )),

                new(@btntratamiento,button('Detalles y Tratamiento',
                message(@prolog, mostrar_tratamiento,Enfermedad)
                )),
                send(@main, display,@boton,point(20,450)),
                send(@main, display,@btntratamiento,point(138,450)).



  mostrar_tratamiento(X):-new(@tratam, dialog('Tratamiento')),
                          send(@tratam, append, label(nombre, 'Explicacion: ')),
                          send(@tratam, display,@lblExp1,point(70,51)),
                          send(@tratam, display,@lblExp2,point(50,80)),
                          tratamiento(X),
                          send(@tratam, transient_for, @main),
                          send(@tratam, open_centered).

tratamiento(X):- send(@lblExp1,selection('De Acuerdo Al Diagnostico El Tratamiento Es:')),
                 mostrar_imagen_tratamiento(@tratam,X).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

   preguntar(Preg,Resp):-new(Di,dialog('Consultar Datos:')),
                        new(L2,label(texto,'Responde las siguientes preguntas')),
                        /* id_imagen_preg(Preg,Imagen),
                        imagen_pregunta(Di,Imagen), */
                        new(La,label(prob,Preg)),
                        new(B1,button(si,and(message(Di,return,si)))),
                        new(B2,button(no,and(message(Di,return,no)))),
                        send(Di, gap, size(25,25)),
                        send(Di,append(L2)),
                        send(Di,append(La)),
                        send(Di,append(B1)),
                        send(Di,append(B2)),
                        send(Di,default_button,'si'),
                        send(Di,open_centered),get(Di,confirm,Answer),
                        free(Di),
                        Resp=Answer.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  interfaz_principal:-new(@main,dialog('Sistema Experto Diagnosticador de Enfermedades de Peces',
        size(1000,1000))),
        new(@texto, label(nombre,'',font('times','roman',18))),
        new(@resp1, label(nombre,'',font('times','roman',22))),
        new(@lblExp1, label(nombre,'',font('times','roman',14))),
        new(@lblExp2, label(nombre,'',font('times','roman',14))),
        new(@salir,button('SALIR',and(message(@main,destroy),message(@main,free)))),
        new(@boton, button('Iniciar consulta',message(@prolog, botones))),

        new(@btntratamiento,button('�Tratamiento?')),

        nueva_imagen(@main, img_principal),
        send(@main, display,@boton,point(138,450)),
        send(@main, display,@texto,point(20,130)),
        send(@main, display,@salir,point(300,450)),
        send(@main, display,@resp1,point(20,180)),
        send(@main,open_centered).

       borrado:- send(@resp1, selection('')).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  crea_interfaz_inicio:- new(@interfaz,dialog('Sistema Experto Diagnosticador de Enfermedades de Peces',
  size(1000,1000))),

  mostrar_imagen(@interfaz, portada),

  new(BotonComenzar,button('COMENZAR',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('SALIDA',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

  :-crea_interfaz_inicio, consult('Shell.pl'), consult('BaseConocimientos.pl').
