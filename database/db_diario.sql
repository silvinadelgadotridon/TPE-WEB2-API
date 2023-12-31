-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 23:52:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_diario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `id_noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `contenido`, `fecha`, `hora`, `id_seccion`) VALUES
(1, 'Larroque, sobre el escándalo Insaurralde: \"Siempre que se administra poder se está expuesto a tentaciones\"', 'En pleno escándalo del exjefe de Gabinete bonaerense, Martín Insaurralde, por sus lujosas vacaciones junto a la modelo, Sofía Clerici, en Marbella, España, el ministro de Desarrollo de la Comunidad provincial, Andrés “Cuervo” Larroque, hizo llamativas declaraciones sobre el exfuncionario: “Siempre que se administra el poder se está expuesto a tentaciones, y en algún caso puede haber una decepción”.\r\n\r\nEl funcionario bonaerense buscó despegar, en campaña, al gobernador Axel Kicillof y al oficialismo.', '10/10/23', '13:52:00', 1),
(2, 'El plan de Schiaretti para el día después: Milei, Massa, gobernabilidad y el foco en el Congreso', 'Con todas las encuestas que lo ubican en un cuarto lugar y lejos del podio, el Gringo quiere seguir teniendo poder de decisión en la Cámara de Diputados, en la gobernación de Córdoba a través del electo Martín Llaryora y trabajar para darle gobernabilidad al próximo presidente. \r\n\r\nEl 22 de octubre Schiaretti se juega su 2024. Hoy tiene un solo diputado que le responde directamente. De los tres que integran el bloque Córdoba Federal, el suyo es Carlos Mario Gutiérrez. Natalia De la Sota ya se puede decir que es casi una jugadora 100% de Massa. E Ignacio García Aresca es un hombre del llaryorismo. \r\n\r\nEl mandato de Gutiérrez se vence el 10 de diciembre pero salvo una catástrofe electoral renovará como diputado, ya que es el primero de la lista de Schiaretti en Córdoba. El Gringo además puede sumar hasta tres diputados más. Pero para eso deberá tener una excelente performance en las elecciones. \r\n\r\nSi saca un 20% solo en Córdoba sumará a la segunda de la lista: Alejandra Torres. Si llega a repetir el resultado de las PASO, donde sacó un 27,5% en su provincia, Schiaretti obtendrá tres diputados propios. El tercero será Juan Fernando Brügge. Los tres cordobeses.\r\n\r\nY Schiaretti hasta puede sumar un cuarto diputado desde Santa Fe: el socialista Esteban Paulon, quien sacó un 3% en las PASO pero para entrar necesitará por lo menos un 8% en esa provincia. Sería poco probable. Pero la suerte está echada. Desde el comando de campaña del Gringo no ven que haya más buenas noticias en el resto del país. \r\n\r\nCon ellos y desde la cámara, Schiaretti quiere seguir construyendo esta alternativa que el llama \"un peronismo liberado del kirchnerismo\". Saben en su equipo que los diputados cordobeses, juntos o separados, son clave para el quórum. Lo fueron en el gobierno de Mauricio Macri y también en el de Alberto Fernández. Y será igual para el próximo mandatario, sea Massa o sea Milei. ', '10/10/23', '15:25:00', 1),
(3, 'Kicillof dijo que \"los problemas no se resuelven destruyendo todo, ni con recetas mágicas\"\r\n\r\n\r\n\r\n\r\n\r\n', 'El gobernador bonaerense Axel Kicillof afirmó que \"los problemas no se resuelven dinamitando o destruyendo todo, no con recetas mágicas\", al encabezar el acto de inauguración del nuevo edificio de talleres de la Escuela Secundaia de Educación Técnica N°6 de Wilde, en el municipio de Avellaneda.\r\n\r\n\"¡Es fácil gritar \'quedémonos sin industria, sin escuela pública, sin salud\'! Pero las recetas mágicas no solucionan los problemas. El futuro se construye con más trabajo, más educación y más salud. No puede ser que haya un país solo pata los que lo pueden pagar y el resto quede afuera\", advirtió el gobernador en su discurso.\r\n\r\nKicillof afirmó que \"hablan a los gritos para expresar el enojo. Pero no sea cosa de que el malestar nos conduzca a un lugar al que no queremos ir\" y añadió: \"\"Lo de ampliar derechos no es una frase bonita. Es algo concreto: es si podes o no tener educación o salud. No es algo que se resuelve o un TikTok. Es más complicado. Discutimos qué modelo de país queremos: el que deje afuera a las grandes mayorías o el que las contiene\"', '22/08/23', '14:02:00', 1),
(4, 'Adiós a 2 tipos de dólar: qué pasa con el dólar ahorro, tarjeta y Qatar', 'La Administración Federal de Ingresos Públicos (AFIP) aumentó las percepciones para la compra de dólar ahorro y para el dólar tarjeta y dólar Qatar, a través de la Resolución General 5430/2023 publicada este martes en el Boletín Oficial, unificando de hecho estos tres tipos de cambio con una carga impositiva del 100% sobre el dólar oficial.\r\n\r\nTanto para la compra de divisas para atesoramiento (con cupo de US$ 200 mensuales) a través del denominado dólar “ahorro” o “solidario” como para los gastos de bienes y servicios con tarjetas de débito y crédito en el extranjero (los llamados “dólar tarjeta” y “dólar Qatar”), se deberá abonar el Impuesto PAÍS (30% sobre el valor de cambio oficial), y percepciones de 45% por el Impuesto a las Ganancias y de 25% a cuenta de Bienes Personales. \r\n\r\nLa modificación regirá para las operaciones realizadas desde este mismo martes. La decisión gubernamental busca “sostener el impulso redistributivo de la política fiscal” y, en ese sentido, por “razones de administración tributaria y de equidad” se tomó la decisión de unificar los tres tipos de cambio, indican los considerandos.\r\n\r\nDe esta forma, al tipo de cambio oficial de $ 365,50, se le deberá sumar $109,65 en concepto del Impuesto PAÍS, $ 164,48 de adelanto de Ganancias y $ 91,38 de Bienes Personales, dando como resultado un tipo de cambio de $ 731, es decir, un recargo del 100% sobre el valor oficial.', '10/10/23', '11:01:00', 2),
(5, 'Día de la madre con Cuenta DNI: Los beneficios y promociones de octubre', 'El banco de la Provincia de Buenos Aires viene con descuentos recargados y promociones por el día de la madre durante el mes de octubre. De esta manera, vuelven las 24 cuotas sin interés a través de la página web Provincia Compras.  \r\n\r\nVale remarcar que la promoción será en días específicos. Desde el lunes 2 hasta el sábado 7, y desde el viernes 20 al lunes 23 de octubre, el sitio Provincia Compras ofrecerá 24 cuotas sin interés en productos seleccionados con tarjetas de crédito. El resto del mes habrá 9 cuotas sin interés.  \r\n\r\nSegún detallaron desde la entidad bancaria, “la banca pública bonaerense vuelve a ofrecer a sus clientes y clientas la posibilidad de ampliar su capacidad de compra en miles de productos durante un mes especial, en el que se celebra el Día de la Madre”. También habrá descuentos y cuotas sin interés en compras en comercios adheridos de toda la provincia.\r\nPara comprar en la página web es necesario ser cliente o clienta del Banco Provincia. Si bien se puede pagar con tarjeta de débito, para aprovechar las cuotas es necesario contar con una tarjeta de crédito Visa o Mastercard emitida por la entidad.    \r\n\r\nQuienes deseen obtener una tarjeta de crédito pueden gestionarla a través del mismo portal y completar un formulario de pre-solicitud, tras lo cual un o una ejecutiva de cuenta se comunicará para finalizar el proceso de otorgamiento.  Para poder operar dentro del sitio las personas deben crear una cuenta de usuario y una contraseña personal secreta, confidencial e intransferible.  ', '09/10/23', '12:16:00', 2),
(6, 'Elecciones 2023: las tres claves del informe que desmorona la idea de Milei para dolarizar la economía', 'De acuerdo a un informe del Instituto de Investigación Social Económica y Política Ciudadana (Isepci), las posibilidades de dolarizar el país, marcada por la disponibilidad de dólares, son limitadas por su escasez. Para concretarla ahora, se impondría una brusca devaluación, con un dólar a $ 2.200. Esto lleva a sus impulsores a postergar la medida, por lo menos por dos años, buscando hacer previamente los “cambios necesarios”.\r\n\r\nUno de los aspectos más señalados por los sostenedores de dolarizar la economía argentina es que su moneda ya es el dólar. Si bien desde la convertibilidad, en los años noventa, el dólar es claramente una referencia para la moneda local, el peso argentino es utilizado y circula con normalidad. Hasta el Fondo reconoce las deficiencias de esta idea. La directora de Comunicaciones del FMI, Julie Kozack, afirmó: “La dolarización requiere importantes pasos preparatorios y no es un sustituto de políticas macroeconómicas sólidas”.\r\n\r\nLas funciones del dinero, para el cual su expresión es la moneda, son tres: Unidad de medida (moneda que sirve para valorizar los bienes y servicios); Medio de pago (moneda aceptada en la como pago en las transacciones comerciales) y depósito de valor (medio de ahorro o préstamo).\r\n\r\nEn primer lugar, no existe una teoría de la dolarización. Las experiencias conocidas se vinculan en su mayor parte a naciones muy pequeñas, que consideran la adopción de una moneda en virtud de su posición geográfica.\r\n\r\nLa primera distinción se puede hacer con países que son insulares (pequeñas islas) como Chipre del Norte, Islas Vírgenes, Islas Marshall, Karibati, Micronesia, Tuvalu; estados pequeños de Europa: Vaticano, Liechtenstein, Mónaco, Andorra, San Marino (utilizan el Euro), estados de Europa Oriental: Montenegro y Kosovo (Euro, por sus intenciones de entrar a la UE).\r\n\r\nEl grupo de países más importante que adoptó el dólar se encuentra en Latinoamérica y está integrado por Panamá, que interviene el dólar y el balboa desde la construcción del canal interoceánico dominado por los Estados Unidos. También se destacan El Salvador y Ecuador, que dolarizó con alta inflación.\r\n\r\nLa suma de los PBI de los tres países latinoamericanos dolarizados alcanza a solo el 36% del PBI de Argentina, que se ubica entre los 25 primeros del mundo.', '23/09/23', '15:23:00', 2),
(7, 'Scaloni rompió el silencio sobre la lesión de Lionel Messi y sorprendió a todos', 'Lionel Scaloni es un exjugador que actualmente se desempeña como director técnico de la Selección Argentina y se consagró campeón de la Copa América 2021, la Finalissima y el Mundial de Qatar 2022 al mando de la \"Albiceleste\". En la previa de una nueva fecha FIFA, el entrenador rompió el silencio con sus dichos sobre la lesión que aqueja a Lionel Messi. Es que esta dolencia lo marginó de varios partidos con el Inter Miami y está en duda para las Eliminatorias.\r\n\r\nAl margen de ello, el astro rosarino encabeza la lista presentada por el estratega para enfrentar a Paraguay en el Monumental y a Perú en el Estadio Nacional de Lima. Sin embargo, todavía no es seguro si el mejor del planeta presenciará o no los mencionados cotejos que servirán para que el combinado nacional se encamine a la clasificación para la próxima Copa del Mundo. Claro que, todo dependerá de cómo avance con el dolor que lo deja afuera del verde césped.\r\n\r\n\"Todavía tenemos un entrenamiento más que para él es importante. Lo vimos bien y hablaré antes del entrenamiento para definir si juega de inicio o no. En base a eso el equipo puede cambiar, pero tengo que hablarlo y sobre todo que esté bien, que estemos convencidos de que pueda jugar de inicio, es la realidad. Se lo vio bien, suelto, pero hablaremos y en base a eso veremos el resto del equipo\", sentenció Scaloni en la previa del cruce ante el conjunto \"Guaraní\".\r\n\r\nCabe destacar que la \"Pulga\" se retiró en el encuentro contra Ecuador en el debut de las Eliminatorias y días después no sumó minutos contra Bolivia. Igualmente, el Seleccionado nacional se impuso en ambos compromisos sin sufrir sobresaltos, ya que ganaron 1 a 0 en Núñez con un golazo de tiro libre de Lionel y luego 3 a 0 en La Paz con una brillante actuación de Ángel Di María. \r\n\r\n', '08/10/23', '16:12:00', 3),
(8, 'Pirelli seguirá siendo el proveedor de neumáticos de la F1 hasta 2027', 'Pirelli seguirá siendo el único proveedor de neumáticos de la Fórmula Uno hasta al menos 2027 tras llegar a un acuerdo con el organismo rector, la FIA, según anunciaron el martes todas las partes.\r\n\r\nPirelli dijo que también había una opción, por parte de la FIA y de Formula One Management, para ampliar la asociación por una temporada más.\r\n\r\nLa empresa italiana también suministrará neumáticos a las series de apoyo de Fórmula Dos y Tres.\r\nEste nuevo contrato amplía a 18 años consecutivos la participación actual de Pirelli en la Fórmula Uno.\r\n\r\nCon información de Reuters', '10/10/23', '14:02:00', 3),
(9, 'Quién es Evelin Bermúdez: la boxeadora argentina y campeona mundial que expone sus títulos en Canadá', 'Evelin Bermúdez es una boxeadora argentina campeona del mundo que expondrá sus dos títulos mundiales en Canadá este sábado 7 de octubre ante la local Kim Clavel. Ambas se medirán en el Place Bell de Laval en Quebec y los cetros minimosca de la Federación Internacional de Boxeo (FIB) y la Organización Mundial de Boxeo (OMB) estarán en juego. La historia de la joven nacida en Villa Gobernador Gálvez, Santa Fe, que sueña con seguir haciendo historia en el boxeo.\r\n\r\nComo muchas otras púgiles, la \"Princesita\" se inició en un gimnasio con el sueño de seguir los pasos de su familia, la cual se dedica plenamente al deporte de los puños. Una de sus hermanas es Daniela \"Bonita\" Bermúdez, quien fue protagonista de grandes batallas en los últimos años, no pierde su nivel a pesar de haber sido madre hace poco tiempo y continúa como una de las figuras de la rama femenina. Además, Roxana -apodada Barbi- continúa en actividad y su hermano Gustavo también combatió.\r\n\r\nNo quedan dudas de que el apellido Bermúdez es sinónimo de boxeo en Santa Fe y que la más joven de la dinastía sueña en grande. Actualmente, Evelin es dueña de los mencionados cinturones que ganó en buena ley en el Estadio Luna Park el pasado 10 de marzo contra la mexicana Tania Enriquez tras vencerla por puntos en fallo unánime. Meses antes los perdió en manos de la también azteca Yokasta Valle a raíz de un fallo localista tras un duelo parejo en Estados Unidos.\r\n\r\nCon sólo siete años y acompañada de su padre Nindolfo \"Tito\" Bermúdez, la \"Princesita\" pisó un gimnasio de boxeo para calzarse sus primeros guantes. Los primeros pasos fueron las exhibiciones para luego realizar distintas peleas que la formaron para ser lo que es actualmente. Por supuesto, su carrera amateur también tuvo grandes logros para luego pasar al profesionalismo y continuar por el buen camino en el que ya cosechó 18 victorias (6 por KO), una derrota y un empate. Además, en 2018 fue campeona sudamericana de la categoría supermosca para luego encaminarse a la gloria mundialista.\r\nSerá la tercera vez que Evelin Bermúdez pelee fuera de nuestro país, ya que combatió una vez en México -empate contra Silvia Torres- y en Estados Unidos -con derrota injusta-. Si bien en sus victorias no predominan los cruces ganados por la vía rápida, la santafesina se luce arriba del cuadrilátero y demuestra su potencial cada vez que le toca subir a pelear. De ganar, quedará a sólo un paso de lograr algo histórico para el boxeo femenino.\r\n\r\nKim Clavel lleva 17 triunfos (3 por KO) y una sola derrota. La púgil nacida en Montreal fue campeona del mundo del Consejo Mundial de Boxeo (CMB) y perdió su cinturón contra la mexicana Yésica Neri Plata, quien además es dueña del título de la Asociación Mundial de Boxeo (AMB). De esta manera, una victoria de la púgil de Villa Gobernador Gálvez sobre la canadiense le dará la posibilidad de unificar los cuatro cetros mundiales -los dos que posee Bermúdez y los dos de la nacida en tierras aztecas.', '06/10/23', '12:05:00', 3),
(10, 'Mala noticia para Independiente: la FIFA sancionó al club', 'El Rojo tuvo un nuevo revés en la FIFA que, además, no se esperaba después de lo que significó toda la colecta de Santiago Maratea. En este punto, Independiente recibió un nuevo cachetazo que tiene que ver con una sanción económica y quedó inhibido de comprar jugadores. \r\n\r\nLa situación se dio ya que la FIFA falló a favor de Carlos Benavídez, ex jugador de Independiente que le había hecho una demanda para que pague lo que le debían. Rápidamente el Rojo quedó inhibido porque tiene que pagarle 27 mil dólares más intereses que, aproximadamente, sería de 30 mil dólares. Es decir, está inhibido para comprar en el próximo mercado de pases por 57 mil dólares. \r\n\r\nCon respecto a la resolución, Independiente confía en poder pagarle lo que se le debe al uruguayo durante esta semana para sacarse de encima la deuda y, además, levantar la sanción que le puso la FIFA. Principalmente, pensando en el próximo mercado de pases y en el torneo del 2024.\r\n\r\nEl último fin de semana en la fecha de clásicos, Independiente alcanzó una gran victoria ante Racing en el partido que se llevó adelante en Avellaneda. El Rojo venció 2-0 y jugó mucho mejor de la mano de Carlos Tevez, pero además no solo festejaron la victoria sino que también se sumó el adiós de Fernando Gago como DT del club albiceleste, ahora se suma -por otro lado- una grata noticia que tiene que ver con la salud de un crack.\r\n\r\nIndependiente estuvo diezmado por la salida en el clásico de un gran jugador que incluso llegó para jugar en este torneo. Sin embargo, en las últimas horas se conoció que Federico Mancuello pudo volver a entrenarse a la par de sus compañeros luego del golpe que sufrió ante Racing y que lo obligó a salir de la cancha. La lesión se produjo en el arranque del primer tiempo cuando, con el encuentro 1-0 a favor del Rojo, Aníbal Moreno rompió el travesaño del arquero de Independiente. En ese momento, Federico Mancuello cayó y tuvo que ser asistido por la emergencia ya que, al caer, golpeó con el pie de Moreno. \r\n\r\nEl momento en el que salió del campo de juego hubo mucha preocupación porque significó la posibilidad de algo mucho más grave. Incluso Mancuello, en el momento del partido, tuvo que ser asistido por el árbitro, acompañado por tres compañeros y, además, por el médico que estaba muy pendiente del golpe en la cabeza que se dio. También el jugador tuvo que salir porque -según reveló- tuvo mareos y otros problemas.   ', '04/10/23', '09:23:00', 3),
(11, 'Selección Argentina de vóley vs. Polonia: cuándo juega, horario y TV en vivo por el Preolímpico', 'La Selección Argentina de vóley se prepara para un enfrentamiento crucial en su camino hacia los Juegos Olímpicos de París 2024. Este partido, que se disputará en el marco del Pre-Olímpico 2023, será contra Polonia, una de las potencias mundiales en este deporte.\r\n\r\nLa importancia de este encuentro no puede ser subestimada, ya que podría determinar el futuro olímpico de ambos equipos. A continuación, te contamos todo lo que necesitás saber sobre este emocionante partido.\r\n\r\nEl partido entre la Selección Argentina de vóley y Polonia por el Pre-Olímpico 2024 se llevará a cabo el viernes 6 de octubre a las 5:00 de la mañana (hora argentina). El partido será transmitido en vivo por ESPN y también estará disponible en plataformas de streaming como Star+ y Flow.\r\n\r\nEl equipo argentino viene de una actuación destacada tras ganarle a Bélgica en tie-break, en un partido que es clave para las aspiraciones del seleccionado nacional a clasificar. En la madrugada del miércoles, la Selección ganó su segundo partido clasificatorio por 25-22, 25-23, 18-25, 21-25 y 15-13. Con una medalla de bronce en los Juegos Olímpicos de Tokio 2020 y un título sudamericano en 2023, las expectativas de repetir estas actuaciones son altas. Polonia, por su parte, también llega con un historial impresionante, lo que hace que este partido sea un duelo de titanes.\r\n\r\nDesde el lado argentino, figuras como Luciano De Cecco y Bruno Lima serán claves en la cancha. Polonia, conocida por su fuerte juego en equipo, seguramente presentará una formación igualmente formidable. La calidad del juego promete ser de alto nivel.\r\n\r\nMarcelo Méndez, el entrenador de la selección argentina, tiene la difícil tarea de preparar a su equipo para este enfrentamiento. Su experiencia y tácticas serán fundamentales para lograr la victoria. El Pre-Olímpico es una competencia que sirve como clasificación para los Juegos Olímpicos. Argentina ha tenido un rendimiento mixto en el torneo hasta ahora, con victorias y derrotas que han mantenido a los fanáticos al borde de sus asientos.\r\n\r\nSegún las casas de apuestas, Argentina tiene buenas posibilidades de ganar. Sin embargo, en el deporte, especialmente en un juego tan competitivo como el vóley, todo puede pasar. Argentina se encuentra en el Grupo C del Pre-Olímpico, junto con otros equipos fuertes como China (anfitriona) y los Países Bajos. Cada partido en este grupo es una batalla por los puntos y la clasificación.', '04/10/23', '10:25:00', 3),
(12, 'Amazon ofrece 1 millón de dólares por pruebas de vida extraterrestre: los detalles de una propuesta burlona', 'En el marco de una movida más publicitaria que científica, la compañía promete un cuantioso premio para quienes consigan evidencias de vida alienígena.\r\nReconocida por su plataforma de comercio electrónico, Amazon ha diversificado sus actividades en las últimas décadas. Sin embargo, nadie vio venir que la tecnológica estadounidense se interesaría en la búsqueda de vida extraterrestre. “Hay posibilidades de que los alienígenas estén justo en la puerta de tu casa”, dijeron desde la compañía en el marco de una movida más marketinera que científica.\r\n¿De qué va esta acción de Amazon, con la que ofreció 1 millón de dólares por pruebas de un alien que ronde las casas de sus clientes? ¿Por qué la división de la empresa que se dedica a comercializar dispositivos para el hogar inteligente pretendería rastrear a seres interplanetarios?', '10/10/23', '11:22:00', 5),
(13, 'Piden a los padres israelíes que eliminen las redes sociales de los teléfonos de sus hijos', 'Es para evitar que vean videos de las capturas y maltratos a los rehenes. También preocupa la divulgación de noticias falsas y los reportes sobre el uso de las plataformas digitales para tareas de inteligencia por parte de Hamas.\r\nEn Israel, instan a los padres a eliminar las redes sociales en los celulares de los nenes debido a la divulgación de desinformación y a la proliferación de videos que muestran a los rehenes capturados por los terroristas y la posibilidad de que transmitan sus ejecuciones. De acuerdo al sitio Breaking News Network, se trata de un pedido sin precedentes en el país, luego de los ataques perpetrados por Hamas. Este paso, además, se apoya en reportes que indicaron que los terroristas emplean las plataformas en línea para tareas de inteligencia.\r\n', '10/10/23', '10:30:00', 5),
(14, 'El creador de ChatGPT quiere más músculo y fabricaría sus propios procesadores', 'OpenAI explora la posibilidad de crear chips de inteligencia artificial, según los informes. Aseguran que el director del grupo calificó el plan como una “prioridad máxima”.\r\nOpenAI estaría evaluando dar un salto del software al hardware. Según un informe de Reuters, la organización detrás de ChatGPT pretende fabricar sus propios procesadores de inteligencia artificial (IA) y, en ese marco, barajó comprar a una compañía del sector. El rumor se agrega a reportes recientes sobre conversaciones en la firma para crear un dispositivo que simplifique el acceso a su chatbot.', '9/10/23', '09:48:00', 5),
(15, 'Asesinó a su novia en Rosario y se entregó en una comisaría de la provincia de Buenos Aires', 'Una mujer de 42 años que estaba desaparecida desde el 22 de septiembre pasado fue hallada asesinada en una pension de la ciudad de Rosario, donde vivía con su novio, quien confesó el femicidio al entregarse en una comisaría de la localidad bonaerense de González Catan, partido de La Matanza, informaron hoy fuentes policiales y judiciales.\r\nEl hallazgo del cadáver de la víctima, identificada como Laura Ramona Benitez (42), se produjo luego de que su pareja, Julio Alberto R. (40), confesara el hecho en la sede policial y la Justicia rosarina dispusiera un procedimiento en la pension situada en la calle Lisboa al 2.900, entre Suipacha y Rueda, del barrio Parque Casado, de la zona sudoeste de la ciudad santafesina, consignaron a Télam los voceros consultados.', '11/10/23', '13:20:00', 6),
(16, 'Fue ebrio a protestar a una comisaría, embistió a un policía y lo llevó cargado en el capot.', 'Un hombre de 30 años fue detenido luego de embestir a un policía y llevarlo cargado 15 cuadras en el capot de su auto, tras presentarse en estado de ebriedad en una comisaría de la localidad jujeña de Fraile Pintado, departamente de Ledesma, donde amenazó a los agentes y reclamó la liberación de unos amigos suyos que se encontraban allí demorados.\r\nAsi lo consignaron fuentes policiales, quienes detallaron que el hecho ocurrió ayer a la madrugada en la seccional 40 de Fraile Pintado, una localidad situada a 96 kilómetros de San Salvador de Jujuy.\r\n\"El hombre llego totalmente exaltado e insultó a los efectivos policiales que se encontraban presentes en la comisaría, tras lo cual rápidamente quiso escapar en su automovil\", contaron las fuentes.', '10/10/23', '13:53:00', 6),
(17, 'Familiar de una víctima de la inseguridad vial de la 226 reclamó \"ponerse serios\" y planificar a largo plazo', '“Me parece que hay que ser serios y hacer algo que dure para 30 ó 40 años”, consideró Norma Romero, suegra de un ciclista embestido hace 6 meses. Tras contar el drama que vive la familia, elogió la “voluntad política” de otros municipios para solucionar la movilidad en la traza nacional. “¿Acá tiene que haber fatalidades para que alguien se ponga las pilas y empiece a gestionar cosas?”, cuestionó.\r\nHoy se cumplen seis meses de un accidente ocurrido en el kilómetro 171 de la Ruta Nacional 226, cuando un ciclista fue embestido por alcance por un camión. Ambos involucrados circulaban en sentido Azul-Tandil, y la víctima regresaba de su trabajo en la empresa Bulonfer, hacia su domicilio en la zona de Villa Aguirre. El trayecto lo hacía a diario, ya que era el único medio de comunicación para llegar y volver de su empleo.\r\nLa suegra de la víctima, Norma Romero, se sumó al reclamo de Estrellas Amarillas, que aguarda para esta semana la llegada de técnicos de la Junta Nacional de Seguridad en el Transporte del Ministerio de Transporte de la Nación, para evaluar la dinámica de la traza desde El Paraíso hasta la rotonda del cruce con la Ruta Provincial 30.\r\n', '10/10/23', '00:59:00', 6),
(18, 'La fotografía de un cangrejo herradura, una especie prehistórica, gana un prestigioso premio', 'El biólogo marino y fotógrafo francés Laurent Ballesta obtuvo el máximo galardón del concurso Wildlife Photographer of the Year 2023 con su retrato de una rara variedad de cangrejo en peligro de extinción.\r\nUna hipnótica imagen de un cangrejo herradura, una especie que sobrevivió más de cien millones de años, tomada por el fotógrafo submarino y biólogo francés Laurent Ballesta en la isla filipina de Pangatalan, fue galardonada con el premio “Wildlife Photographer of the Year 2023″ (Fotógrafo de la Vida Silvestre del Año), un prestigioso concurso al que aplicaron más de 49.000 candidaturas de 95 países.\r\n\r\n“La herradura dorada” se titula la fotografía ganadora del premio mayor del concurso, que captura a un cangrejo de tres espinas mientras camina lentamente sobre el barro, en lo profundo del mar, con su caparazón protector dorado, una especie cuya sangre azul es utilizada en el desarrollo de vacunas, y que se enfrenta a la destrucción de su hábitat, informaron los organizadores en un comunicado.\r\n\r\nEs la segunda vez que Laurent Ballesta -biólogo marino y fotógrafo que ha dedicado su vida a explorar los océanos y revelar sus maravillas a través del arte- obtiene el premio Wildlife Photographer of the Year 2023, que organiza el Museo de Historia Natural de Londres, donde la exposición con las imágenes premiadas se inaugurará el viernes próximo.\r\n\r\n“Ver un cangrejo herradura tan vibrantemente vivo en su hábitat natural, de una forma tan inquietantemente bella, fue asombroso. Estamos ante una especie antigua, en grave peligro de extinción, y también fundamental para la salud humana. Esta foto es luminiscente”, afirmó la presidenta del jurado Kathy Moran.', '11/10/23', '02:46:00', 7),
(19, 'Daniel Barenboim condena el ataque de Hamas y el asedio israelí de Gaza', '“El único camino hacia la paz entre Israel y Palestina reposa en el humanismo, la justicia, la igualdad y el fin de la ocupación, más que en una acción militar”, dijo el destacado músico argentino-israelí, y expresó su “solidaridad con las víctimas y sus familias”.\r\nEl pianista y director de orquesta Daniel Barenboim calificó de “crimen escandaloso” el ataque de Hamás contra “la población civil israelí”, al tiempo que condenó el actual asedio militar a la Franja de Gaza.\r\n“El ataque de Hamas contra la población civil israelí es un crimen escandaloso que condeno enérgicamente”, escribió en un comunicado difundido el miércoles en varias redes sociales. “La magnitud de esta tragedia humana” no se mide sólo “en vidas perdidas, sino también en tomas de rehenes, casas destruidas y comunidades devastadas”, explicó.\r\nEl maestro, nacido en Argentina y también ciudadano israelí y español, condenó igualmente el “asedio israelí a Gaza”, un “castigo colectivo que es una violación de los derechos humanos”.\r\nDaniel Barenboim es conocido desde hace mucho tiempo por su compromiso con la paz, especialmente a través de la Orquesta del West-Eastern Divan fundada en 1999 junto con el pensador palestino-estadounidense Edward Said. Esta formación ha venido reuniendo durante años a músicos israelíes y de los países árabes vecinos.', '11/10/23', '16:04:00', 7),
(21, 'Salman Rushdie revela en “Cuchillo” los detalles del atentado que marcó su vida', 'En abril del año que viene saldrán a la venta las memorias del reconocido escritor, según anunció la editorial.\r\nLa editorial Penguin Random House ha confirmado que el próximo 16 de abril verá la luz Cuchillo, la esperada obra de Salman Rushdie. Este libro, que será publicado en más de 15 países, promete ser un relato profundo sobre el intento de asesinato que sufrió el aclamado autor hace poco más de un año.\r\nSalman Rushdie, ganador del prestigioso Premio Booker y defensor inquebrantable de la libertad de expresión, se ha mantenido en el epicentro de la controversia desde que su novela “Los versos satánicos” generó una fatwa en su contra hace tres décadas. Sin embargo, nada lo había preparado para el brutal ataque que enfrentó en agosto de 2022. El agresor de Rushdie, Hadi Matar, un estadounidense de origen libanés de 24 años, se declaró inocente de intento de asesinato y dijo que sentía aversión hacia Rushdie por haber “atacado el Islam”, pero negó estar en contacto con Irán o haber leído entero su libro “Los versos satánicos”.\r\nEl autor, nacido en Bombay en 1947, recibió más de diez puñaladas a manos de un fanático musulmán, un acto de violencia que le costó la visión de un ojo y dejó prácticamente inutilizada su mano izquierda. Este devastador evento, que marcó un antes y un después en la vida de Rushdie, ha sido el catalizador para la creación de Cuchillo.', '11/10/23', '15:37:00', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id_seccion` int(11) NOT NULL,
  `nombre_seccion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id_seccion`, `nombre_seccion`) VALUES
(1, 'Politica'),
(2, 'Economía'),
(3, 'Deporte'),
(5, 'Tecnología'),
(6, 'Policiales'),
(7, 'Cultura'),
(19, 'Nueva seccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `rol` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `email`, `password`, `rol`) VALUES
(2, 'webadmin', 'webadmin@correo.com', '$2y$10$yHQ/gMTE7Rt3R89dJvX75.X8JVx2EUPAlspKl8dTH.t75t4aTqTru', 1),
(3, 'webuser', 'webuser@correo.com', '$2y$10$Hn30eeol8fDlPB2.h1aTNOvBDaCRxX6CdadW.iumdTt3v2iFA5RQ2', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CLAVE FORANEA` (`id_noticia`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_seccion` (`id_seccion`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id_seccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
