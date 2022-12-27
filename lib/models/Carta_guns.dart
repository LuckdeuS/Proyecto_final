class Carta{
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String description;

  const Carta({ this.id,  this.nombre, this.precio, this.imagen, this.description});
}

final accesorios=[
  new Carta(id: 1, nombre: "Cascos de Combate CS", precio: 75.00, imagen: "casco1.jpg", description: "El Fast Base Jump es la réplica de uno de los últimas piezas de engranaje principal disponible para el combate moderno."),
  new Carta(id: 2, nombre: "Wosport Tactical Helmet Black", precio: 80.15, imagen: "casco2.jpg", description: "Este casco fue desarrollado y diseñado por WoSporT Industry Co."),
  new Carta(id: 3, nombre: "LBT 6049A Multicam", precio: 254.30, imagen: "chaleco.png", description: "Costura con hebras de 610D nylon de alta densidad y correas a prueba de humedad y tratamiento Anti-Moho"),
  new Carta(id: 4, nombre: "Evolution Gear CIRAS A-tacs", precio: 340.05, imagen: "chaleco2.png", description: "Chaleco táctico modular Ciras V2, lleva todo lo que necesitas en este completo chaleco. Totalmente modular, compatible con pouches M.D.O"),
  new Carta(id: 5, nombre: "LBT 6094A Olive Drab", precio: 245.04, imagen: "chaleco3.png", description: "El LBT 6094 el porta placa usado por los SEALS ya llegó al Perú fabricado en Cordura Genuino"),
  new Carta(id: 6, nombre: "Evolution Gear RBAV Khaki", precio: 350.90, imagen: "chaleco4.jpg", description: "El chaleco RBAV de Evolution Gear está fabricado en cordura 1000D genuina, esto significa que no son telas copias de cordura"),
  new Carta(id: 7, nombre: "mechanix M-pact Black", precio: 70.00, imagen: "guante.png", description: "El M-Pact es un guante todo terreno de la Tactical Serie de Mechanix Wear, que ofrece doble protección para la mano."),
  new Carta(id: 8, nombre: "Mechanix M-Pact Cover Green", precio: 68.45, imagen: "guante2.png", description: "La zona de los nudillos y los dedos están bien protegidos mediante almohadillas de goma y la palma se encuentra protegida por un acolchado EVA"),
  new Carta(id: 9,nombre: "Guantes Multiproposito Tan",precio: 75.00,imagen: "guante3.png",description: "Guantes Multiproposito Tan"),
  new Carta(id: 10,nombre: "Guantes Multiproposito Negro",precio: 65.42,imagen: "guante4.jpg",description: "Guantes Multiproposito Negro Miton"),
  new Carta(id: 11,nombre: "NCStar Red Dot DMP5 MP5 HK",precio: 184.54,imagen: "mira1.jpg",description: "Montura tipo STANAG integrada, compatible con armas tipo HK MP5 y CETME. "),
  new Carta(id: 12,nombre: "551 Mira Holografica",precio: 140.59,imagen: "mira2.jpg",description: "Retícula en color verde o rojo Intensidad de brillo ajustable Liviana, durable y golpes."),
  new Carta(id: 13,nombre: "NCStar Red Dot DAB",precio: 165.00,imagen: "mira3.jpg",description: "MIRA 1X25 ROJO Y VERDE DE VISTA REFLEJA / BASE MET ACABADO:"),
  new Carta(id: 14,nombre: "Mango de agarre para Bipod táctico",precio: 57.45,imagen: "soporte1.jpg",description: "El botón de presión hace que las piernas se salgan, el botón pulsador para desbloquear las piernas del bípode"),
  new Carta(id: 15,nombre: "Agarre táctico de metralla TD",precio: 47.50,imagen:"soporte2.jpg" ,description: "Ornamento de la función del producto de color negro y arena material "),
  new Carta(id: 16,nombre:"G&P KeyMod M4 SBR Monolithic Upper",precio: 450.00,imagen:"airsoft1.jpg" ,description: "Establecido en 1995, G&P se encuentra entre los fabricantes de Airsoft de entrenamiento y simulación militar más antiguos del mundo." ),
  new Carta(id: 17,nombre:"KRYTAC Alpha CRB",precio: 384.00,imagen: "airsoft2.jpg",description: "El Alpha CRB es un rifle de longitud de carabina versátil que se puede utilizar eficazmente en batalla de cuartos cercanos y compromisos al aire libre." ),
  new Carta(id: 18,nombre:"G&P MOTS High Speed Edition 8 Keymod",precio: 553.00,imagen: "airsoft3.jpg",description: "La línea G&P High Speed ​​de Airsoft grado de competencia establece el punto de referencia." ),
  new Carta(id: 19,nombre:"WE 888C Assault Rifle Airsoft Gas Blowback GBB",precio: 456.55,imagen: "airsoft4.jpg",description: "Longitud total: 564mmm/655mm extendido.Longitud cañon: Capacidad del cargador: 30 rds. Hop-up: ajustable." ),
  new Carta(id: 20,nombre:"Hi-Capa 5.2 R Full Metal GBB - WE",precio: 265.12,imagen: "airsoft5.jpg",description: "Hi-Capa 5.2 R de WE es full metal, una réplica semiautomática de una de las pistolas más icónicas del mundo. Se hizo con el objetivo de mejorar algunas características importantes" ),
  new Carta(id: 21,nombre:"PISTOLA AAP01 Semi & full auto TAN - Action Army",precio: 120.00,imagen: "airsoft6.jpg",description:"El nuevo AAP01 Assassin de Action Army Company revolucionará el mercado GBB: Ligero, compacto, híbrido, es el futuro más vendido en su categoría."  ),
  new Carta(id: 22,nombre:"Rifle M4 Style Pistola eléctrica AEG",precio: 115.00,imagen: "airsoft7.jpg",description: "Carga los BBs de Airsoft a través del alcance en la parte superiorBatería y cargador incluidos. Peso recomendado para Airsoft" ),
  new Carta(id: 23,nombre:"GameFace GFM4NFB Ripcord M4",precio: 564.00,imagen: "airsoft8.jpg",description:"Rifle eléctrico de airsoft completo/semiautomático – con caja de cambios de metalDiseño de cuerpo de fibra de nailon y material ajustable: fácil de hombro para la mayoría de los usuarios"  ),
  new Carta(id: 24,nombre:"BOB LONG MVP PAINTBALL GUN NEGRO",precio: 115.00,imagen: "paintball1.jpg",description: "" ),
  new Carta(id: 25,nombre:"MARCADOR DE PAINTBALL WGP OUTKAST AUTOCOCKER",precio: 130.00,imagen: "paintball2.jpg" ,description: ""),
  new Carta(id: 26,nombre:"Marcadora Tippmann Ft12",precio: 120.00,imagen: "painball3.jpg" ,description: ""),
  new Carta(id: 27,nombre:"Marcadora Gryphon Fx",precio: 100.00,imagen: "paintball4.jpg",description: "Marcador de paintball de diseño confiable, ligero y compacto que es perfecto para el nuevo jugador Línea interna de gas" ),
  new Carta(id: 28,nombre:"Marcadora Tippman 98",precio: 95.00,imagen:"paintball5.jpg" ,description: "El clásico de las marcadoras de iniciación, una marcadora que con más de 20 años a sus espaldas todavía se sigue comercializando." ),
];

final noticias=[
  new Carta(id: 29, nombre: "La policía de Gavà sorprende a 3 personas practicando ‘airsoft’",  description: "La Policía Municipal de Gavà ha requisado varias réplicas de armas reales tipo ‘airsoft’ y ha denunciado a las tres personas que estaban en posesión de ellas por una presunta infracción de la ley de protección de la seguridad ciudadana."),
  new Carta(id: 30, nombre: "Estudiante de Kinder acusado de llevar pistola de airsoft a escuela de Providence", description: "La policía de Providence, Rhode Island dijo que un estudiante de jardín de infantes en Times2 Academy trajo una pistola de airsoft a la escuela el lunes."),
  new Carta(id: 31, nombre: "Rusia confunde con terroristas a tres jugadores de airsoft inspirados en el videojuego S.T.A.L.K.E.R.", description: "El hecho sucedió en la región rusa de Voronezh, donde el FSB (servicio de seguridad estatal de Moscú). El 23 de noviembre, los medios estatales del país y el propio FSB anunciaron la muerte de los hombres"),
  new Carta(id: 32, nombre: "Jugadores de ‘airsoft’ se citan desde hoy en el nuevo salón de estrategia y simulación ‘Airsoft Encounte", description: " Feria Valencia ha abierto hoy sus puertas al nuevo salón ‘Airsoft Encounter’, un nuevo salón temático en torno al universo del ‘airsoft’, nueva nueva modalidad deportiva en auge"),
  new Carta(id: 33, nombre: "¿Cómo prepararse para el primer juego de ‘airsoft’?", description: "i estás planeando ir a tu primer juego de airsoft, seguramente te estarás preguntando qué equipo necesitarás. El airsoft es un deporte que requiere el equipo correcto. Los jugadores más experimentados te hablarán de los accesorios necesarios."),
];

final proximamente=[
  new Carta(id: 34, nombre: "Evolution Gear Gen2", imagen: "uniforme1.jpg", description: "Muy Pronto"),
  new Carta(id: 35, nombre: "Evolution Gear Combat Shirt Multicam Gen 3", imagen: "uniforme4.jpg", description: "Muy Pronto"),
  new Carta(id: 36, nombre: "Evolution Gear ICS AOR2 Combat Suit", imagen: "uniforme5.jpg", description:  "Muy Pronto"),
  new Carta(id: 37, nombre: "CS JinMing M26 A2", imagen: "granada2.jpg", description: "Muy Pronto"),
  new Carta(id: 38, nombre: "M26A2 M18", imagen: "granada.jpeg", description: "Muy Pronto"),
];








