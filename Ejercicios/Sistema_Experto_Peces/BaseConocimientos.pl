/* BASE DE CONOCIMIENTOS: Sintomas y Enfermedades del Aparato Respiratorio, contiente ademas
el identificador de imagenes de acuerdo al  sintoma
*/

conocimiento(ictioftiriosis, ['manchas blancas en la piel', 'frotamiento contra objetos']).
conocimiento(columnaris, ['aparicion de manchas algodonosas en la piel', 'aparicion de manchas algodonosas en aletas']).
conocimiento(saprolegniasis, ['mohos algodonosos en el cuerpo de los peces']).
conocimiento(aeromoniasis, ['ulceras y lesiones en la piel', 'inflamacion abdominal']).
conocimiento(costia, ['capa mucosa en la piel y aletas', 'movimientos erraticos']).
conocimiento(punto_blanco, ['aparicion de puntos blancos en la piel y las aletas']).
conocimiento(eustrongylidosis, ['inflamacion abdominal', 'perdida de apetito']).
conocimiento(hidropesia, ['hinchazon abdominal', 'escamas levantadas']).
conocimiento(mycobacteriosis, ['perdida de peso', 'lesiones en la piel', 'abscesos']).
conocimiento(septicemia, ['manchas rojas', 'hemorragias en la piel y aletas']).
conocimiento(nematodos, ['perdida de peso', 'inflamacion abdominal']).
conocimiento(parasitos_agallas, ['dificultad respiratoria', 'agallas palidas']).
conocimiento(dactiliosis, ['lesiones en las aletas y la piel', 'enrojecimiento']).
conocimiento(lerneosis, ['peces rascandose contra objetos', 'presencia de puntos blancos']).
conocimiento(oodiniosis, ['peces con aspecto algodonoso', 'movimientos lentos']).
conocimiento(anemia_infecciosa, ['decoloracion de la piel', 'letargo']).
conocimiento(hidatidosis, ['quistes en los tejidos', 'debilidad general']).
conocimiento(hexamitiasis, ['perdida de apetito', 'heces blancas y filamentosas']).
conocimiento(furunculosis, ['ulceras en la piel', 'hinchazon alrededor de la boca']).
conocimiento(copepodos, ['peces rascandose contra objetos', 'puntos blancos moviles']).
conocimiento(vibriosis, ['peces con ulceras en la piel y aletas', 'perdida de apetito']).
conocimiento(piscirickettsiosis, ['letargo', 'ulceras en la piel', 'hinchazon abdominal']).
conocimiento(lepidortosis, ['deformidades en las escamas', 'piel descolorida']).
conocimiento(myxobolosis, ['tumores en la piel', 'crecimientos anormales']).
conocimiento(enfermedad_linea_lateral, ['dano en la linea lateral', 'cambios en el comportamiento']).
conocimiento(piscirickettsiosis2, ['ulceras en la piel', 'inapetencia']).
conocimiento(streptococosis, ['hemorragias', 'lesiones en la piel y aletas']).
conocimiento(enfermedad_rinon_carpa, ['hinchazon abdominal', 'orina oscura']).
conocimiento(infeccion_ranavirus, ['ulceras en la piel', 'hemorragias internas']).
conocimiento(linfocistis, ['protuberancias blancas en la piel y aletas']).


id_imagen_preg('manchas blancas en la piel', 'ictioftiriosis_img').
id_imagen_preg('frotamiento contra objetos', 'ictioftiriosis_img').

id_imagen_preg('aparicion de manchas algodonosas en la piel', 'columnaris_img').
id_imagen_preg('aparicion de manchas algodonosas en aletas', 'columnaris_img').

id_imagen_preg('mohos algodonosos en el cuerpo de los peces', 'saprolegniasis_img').

id_imagen_preg('ulceras y lesiones en la piel', 'aeromoniasis_img').
id_imagen_preg('inflamacion abdominal', 'aeromoniasis_img').

id_imagen_preg('capa mucosa en la piel y aletas', 'costia_img').
id_imagen_preg('movimientos erraticos', 'costia_img').

id_imagen_preg('aparicion de puntos blancos en la piel y las aletas', 'punto_blanco_img').

id_imagen_preg('inflamacion abdominal', 'eustrongylidosis_img').
id_imagen_preg('perdida de apetito', 'eustrongylidosis_img').

id_imagen_preg('hinchazon abdominal', 'hidropesia_img').
id_imagen_preg('escamas levantadas', 'hidropesia_img').

id_imagen_preg('perdida de peso', 'mycobacteriosis_img').
id_imagen_preg('lesiones en la piel', 'mycobacteriosis_img').
id_imagen_preg('abscesos', 'mycobacteriosis_img').

id_imagen_preg('manchas rojas', 'septicemia_img').
id_imagen_preg('hemorragias en la piel y aletas', 'septicemia_img').

id_imagen_preg('perdida de peso', 'nematodos_img').
id_imagen_preg('inflamacion abdominal', 'nematodos_img').

id_imagen_preg('dificultad respiratoria', 'parasitos_agallas_img').
id_imagen_preg('agallas palidas', 'parasitos_agallas_img').

id_imagen_preg('lesiones en las aletas y la piel', 'dactiliosis_img').
id_imagen_preg('enrojecimiento', 'dactiliosis_img').

id_imagen_preg('peces rascandose contra objetos', 'lerneosis_img').
id_imagen_preg('presencia de puntos blancos', 'lerneosis_img').

id_imagen_preg('peces con aspecto algodonoso', 'oodiniosis_img').
id_imagen_preg('movimientos lentos', 'oodiniosis_img').

id_imagen_preg('decoloracion de la piel', 'anemia_infecciosa_img').
id_imagen_preg('letargo', 'anemia_infecciosa_img').

id_imagen_preg('quistes en los tejidos', 'hidatidosis_img').
id_imagen_preg('debilidad general', 'hidatidosis_img').

id_imagen_preg('perdida de apetito', 'hexamitiasis_img').
id_imagen_preg('heces blancas y filamentosas', 'hexamitiasis_img').

id_imagen_preg('ulceras en la piel', 'furunculosis_img').
id_imagen_preg('hinchazon alrededor de la boca', 'furunculosis_img').

id_imagen_preg('peces rascandose contra objetos', 'copepodos_img').
id_imagen_preg('puntos blancos moviles', 'copepodos_img').

id_imagen_preg('peces con ulceras en la piel y aletas', 'vibriosis_img').
id_imagen_preg('perdida de apetito', 'vibriosis_img').

id_imagen_preg('letargo', 'piscirickettsiosis_img').
id_imagen_preg('ulceras en la piel', 'piscirickettsiosis_img').
id_imagen_preg('hinchazon abdominal', 'piscirickettsiosis_img').

id_imagen_preg('deformidades en las escamas', 'lepidortosis_img').
id_imagen_preg('piel descolorida', 'lepidortosis_img').

id_imagen_preg('tumores en la piel', 'myxobolosis_img').
id_imagen_preg('crecimientos anormales', 'myxobolosis_img').

id_imagen_preg('dano en la linea lateral', 'enfermedad_linea_lateral_img').
id_imagen_preg('cambios en el comportamiento', 'enfermedad_linea_lateral_img').

id_imagen_preg('ulceras en la piel', 'piscirickettsiosis2_img').
id_imagen_preg('inapetencia', 'piscirickettsiosis2_img').

id_imagen_preg('hemorragias', 'streptococosis_img').
id_imagen_preg('lesiones en la piel y aletas', 'streptococosis_img').

id_imagen_preg('hinchazon abdominal', 'enfermedad_rinon_carpa_img').
id_imagen_preg('orina oscura', 'enfermedad_rinon_carpa_img').

id_imagen_preg('ulceras en la piel', 'infeccion_ranavirus_img').
id_imagen_preg('hemorragias internas', 'infeccion_ranavirus_img').

id_imagen_preg('protuberancias blancas en la piel y aletas', 'linfocistis_img').


