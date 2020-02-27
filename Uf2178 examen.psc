Algoritmo MenuExamen
	//Determinamos los Arrays paralelos 
	Dimension posicionDoc[8]
	posicionDoc[1]<-2
	posicionDoc[2]<-5
	posicionDoc[3]<-7
	posicionDoc[4]<-1
	posicionDoc[5]<-8
	posicionDoc[6]<-3
	posicionDoc[7]<-6
	posicionDoc[8]<-4
	Dimension documento[8]
	documento[1]<-'Hola ¿Que tal?'
	documento[2]<-'Examen UF21878'
	documento[3]<-'Factura cliente Examen'
	documento[4]<-'El carnaval [...]'
	documento[5]<-'Por Favor, no molestar'
	documento[6]<-'Manual Java'
	
	dimension cola[10]
	//Definimos las variables nombre y tipo
	tMenu es caracter
	ind es entero
	palabra es cadena
	//Hacemos la imagen del menu y bucle while hasta que escribamos en menu s o S 
	mientras tMenu != 'S'  hacer
		Escribir''
		Escribir''
		Escribir'                                     #########################################'
		Escribir'                                     #################Menu####################'
		Escribir'                                     ###                                   ###'
		Escribir'                                     ###   1 Visualizacion de documentos   ###'
		Escribir'                                     ###   2 Busqueda de documentos        ###'
		Escribir'                                     ###   3 Edicion de documentos         ###'
		Escribir'                                     ###   4 Crear documentos              ###'
		Escribir'                                     ###   5 Borrar documentos             ###'
		Escribir'                                     ###   6 Impresion de documentos       ###'
		Escribir'                                     ###                                   ###'
		Escribir'                                     #########################################'
		Escribir'                                     ###                                   ###'
		Escribir'                                     ###        Pulse S para salir         ###'
		Escribir'                                     ###                                   ###'
		Escribir'                                     #########################################'
		Escribir'                                     #########################################'
		Escribir''
		Escribir''
		Escribir'                          Introduzca el numero de la eleccion deseada o pulse s para salir '
		//Pedimos la variable, del numero de menu y trasformamos en mayusculas
		Leer tMenu
		tMenu<-Mayusculas(tMenu)
	
		//Empezamos con el menu 
		Segun tMenu hacer
			'1':
				
				//Llamada del procedimento Visualizar(parametros formales,)
				Visualizar(posicionDoc, documento, numDoc)
				
			'2':
				//LLamada procedimiento Busca
				Busca(posicionDoc, documento, ind, palabra)
				
			'3':
				
				Edicion(posicionDoc, documento, ind)
				
			'4':
				Creacion(posicionDoc, documento)
			'5':
				escribir'CULO HINCO... pulsa intro para continuar'
				leer intro
				Eliminacion(posicionDoc, documento, ind)
			'6':
				
				Impresion(cola)
				
			de otro modo:
				
		FinSegun
	//Cada vez que el programa salga de la instruccion Limpiaremos pantalla e imprimiremos el menu en patalla
		limpiar pantalla
	FinMientras
	//Llamada del metodo fin que imprimira en pantalla Fin del programa... Muy bonito 
	Fini

FinAlgoritmo

//Fuera del algoritmo realizamos los metodos: funciones o procedimientos

//Creamos procedimiento visualizar (Variables actuales(v = array posicionDoc, V2= array documento, a= numDoc ) 
subproceso Visualizar(v por referencia,v2 Por referencia, a por valor)
	escribir'Ha elegido visualizar, introduzca el indice del documento por favor'
	leer a
	//Recoremos array con un for para si encuentra el numero introducido  
	para i<-1 hasta 8 
		
		si v[i] = a entonces
			escribir v[i]
			//si ha encontrado el numero de documento comprueba en el array si esta vacio y si esta vacio imprime por pantalla $$$$ 
			si v2[a] = '' entonces 
				escribir'$$$$'
			//si documento no esta vacio imprimira por pantalla el documento	
			sino 
				escribir V2[a]
			FinSi
		
		finsi	
	FinPara
	// Esto es para visualizar resultado ya que despues de la consulta se limpiara la pantalla
	escribir 'pulse intro para continuar' 
	leer intro
	
FinSubProceso
//Creamos procedimiento Busca
Subproceso Busca(v por referencia, v2 por referencia, a por valor, pala por valor)
	//Definimos encontrado como bool e iniciamos a falso para utilizarla en el mientras de mas adelante para que salga 
	//si encontrado = verdadero
	
	encontrado es logico
	encontrado <- Falso
	//Iniciamos un submenu que nos dara 3 opocines: buscar por indice del array, buscar el 1er documento que contega la palabra introducida
	// y para saque todos los documentos que contengan esa palabra
	escribir'Ha elegido buscar documento'
	escribir'Pulse a para buscar por indice'
	escribir'Pulse b para buscar el primer documento que contenga la palabra'
	escribir'Pulse c para buscar todos los documentos que contengan la palabra'
	leer tMenu2
	tMenu2<- Mayusculas(tMenu2)
	
	segun tMenu2 hacer
	'A':
		Escribir 'Introduzca el indice del documento'
		leer a
		si v2[a] = '' entonces
			escribir'$$$$'
		sino 
			escribir 'Indice documento introducido ', a
			escribir 'Numero de documento ', v[a]
			escribir 'Documento ', v2[a]
				
		FinSi
		escribir 'pulse intro para continuar' 
		leer intro
		
	'B':
		Mientras encontrado = falso 
			escribir'Introduzca la palabra a buscar'
			leer pala 
		
			para i<-1 hasta 8 
				si pala>= v2[i] entonces 
					escribir v2[i]
					encontrado = verdadero
				FinSi
			FinPara
			escribir 'pulse intro para continuar' 
			leer intro
		FinMientras
		
	'C':
		escribir'Introduzca la palabra a buscar'
		leer pala 
		
		para i<-1 hasta 8 
			si pala>= v2[i] entonces 
				escribir v2[i]
			FinSi
		FinPara
		escribir 'pulse intro para continuar' 
		leer intro
		
	finsegun
FinSubProceso

Subproceso Edicion(v, v2, a)
	Escribir 'Elige el documento a editar'
	leer a
	para i<-1 hasta 8
		si v[i] = a
			escribir'Texto a editar'
			leer edit
			v2[a]=v2[a]+edit
		FinSi
	FinPara
	Escribir V2[a]
	escribir 'pulse intro para continuar' 
	leer intro
	
FinSubProceso

Subproceso Creacion(v,v2)
	hueco es logico
	hueco <- falso
	Escribir 'Crear documento'
	i<-1
Mientras i< 9 y hueco != Verdadero
	i=i+1
		si v2[i] = ''
			
			
			hueco <-verdadero
		FinSi
		
	escribir v2[i]
	
FinMientras
escribir'Escriba el texto'
leer newtext
v2[i]<-newtext
Escribir v2[i]
escribir 'pulse intro para continuar' 
leer intro

FinSubProceso


	//Creamos el metodo Eliminacion
Subproceso Eliminacion(v por referencia, v2 Por Referencia, a Por Valor)
	Escribir 'Elige el documento a eliminar'
	leer a
	para i<-1 hasta 8
		si v[i] = a
			v2[a]<-'$'
			escribir 'Doc ',v[i], ' eliminado'
			escribir 'Doc ', v[i],' ', v2[a]
		FinSi
	finpara	
	escribir 'pulse intro para continuar' 
	leer intro
	
FinSubProceso

subproceso Impresion(v por referencia)
	para i<-1 hasta 10
		si v[i]!= '' Entonces
			frente = v[i]
		FinSi
	FinPara
	
	escribir'##################################################'
	escribir'|',' ',v[1],' ','||',' ',v[2],' ','||',' ',v[3],' ','||',' ',v[4],' ','||',' ',v[5],' ','||',' ',v[6],' ','||',' ',v[7],' ','||',' ',v[8],' ','||',' ',v[9],' ','||',' ',v[10],' ','|'
	escribir'##################################################'
	escribir 'pulse intro para continuar' 
	leer intro
FinSubProceso

Subproceso Fini()
	Escribir '######################################'
	Escribir '######################################'
	Escribir '###                                ###'
	Escribir '###        Fin del programa        ###'
	Escribir '###                                ###'
	Escribir '######################################'
	Escribir '######################################'
FinSubProceso
	