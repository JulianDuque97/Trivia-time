<h1>Trivia time</h1>

<h2>Descripcion:</h2>
<p>El proyecto fue inspirado en el juego llamado Preguntados, se desarrollo principalmente en python, el desarrollo de la interfaz se hizo en Qt y como base de datos se utilizo MySQL.</p>

<h2>Alcance:</h2>
<p>El proyecto no se logro terminar en su totalidad, por falta de tiempo no se logro mandar a llamar las respuesas de la base de datos pero se deja el planteamiento de que se iba a hacer mediante la relacion de IDs de las preguntas, para entender un poco mejor es necesario ver las tablas implementadas en la base de datos, se crearon 3 tablas. </p>
<ul>
  <li>Questions</li>
  <li>Players</li>
  <li>Answers</li>
</ul>

<h2>Planteamiento de logica:</h2>
<h3>Descripcion de las tablas:</h3>

<p>Para la tabla Questions se crearon como lo pide el ejercicio 25 preguntas, cada pregunta tendria asociado un Id y un nivel de complejidad que va del 1 al 5, llamando a cualquiera de las preguntas dependiendo de su nivel de forma aleatoria.</p>

<p>En la tabla Players se podra encontrar que existe una columna llamada player_score la cual iba a guardar el puntaje del usuario, si el usuario se retiraba despues de haber contestado bien la pregunta previa asi mismo si el decidia regresar a jugar despues se incrementaria en uno el score que dejo al momento de irse para asi comenzar con la siguiente pregunta donde el dejo si por el contrario el jugador no contesta de forma correcta la pregunta se le asignara un cero, y ya para la columna llamada highest score se planeba almacenar ahi los puntajes que hacian los jugadores para luego hacer un sort y mostrar al inicio del juego los tres primero jugadores.</p>

<p>Para la tabla Answers se crearon para cada pregunta 3 respuestas malas y solo una buena para un total de 100 respuestas, podemos observar que la relacion entre la pregunta y la respuesta se iba a implementar mediante la columna llamada idquestion la cual tiene el mismo id que las de la tabla de preguntas, ademas de esto podemos observar que la ultima columna llamada t_f es igual a verdadero o falso mediante variable booleana la cual se planeaba llamar y mediante condicionales se sabria cual es la respuesta correcta siendo 1 verdadero y 0 falso.</p>

<h2>Explicacion de los archivos</h2>
<ul>
  <li>Los archivos con extension Ui son los correspondientes a la interfaz desarrollada en Qt</li>
  <li>El archivo con extension qrc corresponde a las imagenes que se utilizaron para la interfaz</li>
  <li>Archivo main.py, como su nombre lo indica es el archivo principal de la actividad</li>
  <li>Archivo logos.py, es el mismo logos.qrc pero convertido a python para asi poder importarlo</li>
  <li>Archivo db.py, es donde se hace la conexion con la base de datos y se hacen los queries para pedirle a la bd.</li>
</ul> 

<h2>Explicacion de las carpetas</h2>
<ul>
  <li>Imagenes, en esta carpeta podra encontrar todas las imagenes que fueron utilizadas en la interfaz</li>
  <li>db, Adentro podran encontrar un export de las tablas utilizadas en la base de datos</li>
  <li>img_interfaz, En esta carpeta podran encontrar imagenes del diseño de la interfaz enumeradas segun el ordern natural del juego. 
    <ul>
      <li>Start_1: Se inicia la aplicacion, el juego pide un nombre para comenzar.</li>
      <li>Instructions_2: Muestra en pantalla las intrucciones del juego y saluda al usuario.</li>
      <li>Instructions_2: Muestra en pantalla las intrucciones del juego y saluda al usuario.</li>
      <li>Question_3.0: Muestra en pantalla la primera pregunta, ahi podemos ver de que nivel es y las 4 posibles respuestas.</li>
      <li>Point_3.1: Si el jugador contesta de manera correcta el juego lo felicita y le da una estrella que es el equivalente a un punto en el juego.</li>
      <li>Lost_3.2: Si el jugador contesta de manera equivocada el juego le dice que a perdido y que es necesario volver a comenzar desde cero.</li>
      <li>Exit_4: Si el jugador decide terminar de manera voluntaria el juego le muestra una alerta al respecto.</li>
      <li>Winner_5: Si el jugador contesta de manera exitosa las 5 rondas el juego le muestra que a ganado.</li>
    </ul>
  </li>
</ul>
 
<h2>Librerias que son necesarias descargar utilizando pip</h2>
<ul>
  <li>PyQt5, esta libreria permite conectar con la interfaz</li>
  <li>MySQL-python, esta libreria permite conectar con la base de datos</li>
</ul>

<h2>Librerias adicionales que no son necesarias descargar utilizando pip</h2>
<ul>
  <li>db, esta libreria hace llamado al programa creado para hacer los llamados a la base de datos</li>
  <li>logos_rc, esta libreria manda a traer las imagenes usadas en la interfaz</li>
</ul>
