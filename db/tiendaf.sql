-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 18-07-2020 a las 05:21:44
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `productos` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `foto` text NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `presentacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `correo`, `password`, `nombres`, `apellidos`, `foto`, `cargo`, `presentacion`) VALUES
(1, 'juan@flooop.com', 'juan1234', 'Ing. Juan Carlos ', 'Bermeo Calderón', 'https://www.petroamazonas.gob.ec/wp-content/uploads/2019/10/EEF88625-72F2-4A8A-A4D3-DA6E1961989F-768x538.jpeg', 'Gerente', 'Ingeniero Civil, por la Escuela Politécnica Nacional. Cuenta con dos postgrados en Mediación y Solución de Conflictos Ambientales y Desarrollo Sustentable. Además, tiene maestría en Sistemas Integrados de Gestión y un curso de Diplomado en Energía y Ambiente.El nuevo Gerente tiene 39 años de experiencia profesional en el sector público , entre otros aspectos relacionados a las industrias hidrocarburífera e hidráulica.'),
(2, 'pedro@flooop.com', 'pedro1234', 'Ing. Pedro', 'Guillen Vargas', 'https://www.blog.universidades-rusia.com/wp-content/uploads/2019/12/ingeniero-en-sistema-o-informatica-1.jpg', 'Sistemas', 'con sólidos conocimientos en las ciencias de la computación y sus diferentes áreas específicas: análisis, diseño, mejoramiento y mantenimiento de sistemas y redes de información, así como en fundamentos administrativos. Debe desempeñarse eficazmente en el mercado ocupacional que le corresponde, realizando funciones de ingeniería de software y hardware, administrativas, gerenciales, de auditoría y consultoría. '),
(3, 'karla@flooop.com', 'karla1234', 'Lic. Karla', 'Contreras Barrios', 'https://secretariavirtualempresas.com/wp-content/uploads/2018/06/Secretaria-Virtual.png', 'Secretaria', 'Licenciatura en administración de empresas o en campos relacionados. Experiencia comprobada como secretaria ejecutiva o un rol administrativo similar.Debe ser competente en el manejo de Microsoft-Office de forma integral, y en el software «back-office», por ejemplo, sistemas ERP. Conocimiento profundo de la administración de oficinas y de procedimientos contables básicos, así como del vocabulario técnico.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `oferta` float NOT NULL,
  `foto` text NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `oferta`, `foto`, `marca`, `descripcion`, `cantidad`, `tipo`) VALUES
(1, 'Laptop Matebook D 15 Ryzen 5 8GB RAM 256GB - Radeon Vega 8 Graphics', 2399, 2299, 'https://falabella.scene7.com/is/image/FalabellaPE/17352990_3?wid=1500&hei=1500&qlt=70', 'HUAWEI', 'Modelo de procesador:AMD Ryzen™ 3-3250U\r\nMemoria RAM:8 GB\r\nTipo de Disco duro:SSD\r\nCapacidad de Disco Duro:256GB\r\nTipo de Producto:39,62 cm - 15,6\r\nVersión del SO:Windows 10 Home', 5, 'laptop'),
(2, 'Laptop A515-54G-50T9 15,6 FHD Core I5(10Th) 8GB 512GB 2GB Nvidia 250MX Wifi 6', 2899, 2649, 'https://falabella.scene7.com/is/image/FalabellaPE/881888331_2?wid=1500&hei=1500&qlt=70', 'HACER', 'Modelo A515-54G-50T9\r\nProcesador Intel Core i5\r\nModelo tarjeta de video Nvidia Geforce 250Mx\r\nTamaño de la pantalla 15.6 pulgadas\r\nDisco duro sólido 512GB\r\nMemoria total (RAM + Intel Optane) 512GB\r\nVelocidad máxima del procesador 4.20 GHz\r\nMemoria RAM 8GB\r\nResolución de la pantalla Full HD (1920x1080)\r\nDuración aproximada de la batería 10 HORAS\r\nSistema operativo Windows 10\r\n', 8, 'labtop'),
(3, 'Impresora Multifuncional Smart Tank 615 Wifi', 999, 949, 'https://falabella.scene7.com/is/image/FalabellaPE/16957353_4?wid=1500&hei=1500&qlt=70', 'HP', 'Modelo Impresora Multifuncional Smart Tank 615 Wifi\r\nTipo Impresoras multifunción\r\nTipo de inyección Térmica\r\nConexión Bluetooth Sí\r\nConexión WiFi Sí\r\nIncluye Se incluyen en la caja 2 botellas GT53XL de tinta negra que imprimen hasta 6000 páginas de prueba cada una\r\nVelocidad de impresión a color Hasta 5 ppm\r\nResolución del scanner Hasta 1200 x 1200 ppp\r\n', 20, 'impresora'),
(4, 'Impresora Multifuncional Color G3110', 720, 699, 'https://falabella.scene7.com/is/image/FalabellaPE/16304672_4?wid=1500&hei=1500&qlt=70', 'CANON', 'Tipo de impresión: Color\r\nConexión WiFi: Sí\r\nModelo: G3110z\r\nTipo: Impresoras multifunción\r\nVelocidad de impresión a color: 5.0 ipm\r\nResolución del scanner: 600x1200 dpi\r\n', 12, 'impresora'),
(5, 'Impresora 3D Guider', 8500, 8399, 'https://falabella.scene7.com/is/image/FalabellaPE/16552450_1?wid=1500&hei=1500&qlt=70', 'FLASHFORGE', 'Tamaño de construcción: hasta 280 x 250 x 300 mm\r\nFilamento carrete: ABS / PLA / PVA, 1.75mm\r\nPrecisión de impresión: ± 0,10mm\r\nPrecisión de posicionamiento eje: Z 0.0025 mm, eje XY 0.011 mm\r\nGrosor de la capa: 0,05 - 0,4 mm\r\nDiámetro de la boquilla: 0.40 mm\r\nTemperatura del extrusor: 240 ° C\r\nConsumo de energía: 100 - 240V AC, hasta 450 W\r\nSoftware de rebanado Flashprint\r\nTemperatura de la placa de calentamiento ABS: 110 - 115 ° / PLA: 50 °\r\nTipo de archivo: Entrada 3MF / STL / OBJ / FPP / BMP / PNG / JPG / JPEG - Salida: gx / g\r\n', 5, 'impresora3d'),
(6, 'Monitor LED 22 Borderless', 500, 469, 'https://falabella.scene7.com/is/image/FalabellaPE/16793719_2?wid=1500&hei=1500&qlt=70', 'LG', 'Modelo: 22MK600M\r\nAlto: 293 cm\r\nAncho: 488.7 cm\r\nProfundidad: 66.8 cm\r\nPeso: 2.7 kg\r\nTamaño de la pantalla: 22\r\nResolución de la pantalla: 1920 x 1080\r\nTiempo de respuesta: 5ms\r\nAspecto ratio: 0.672916666666667\r\nHecho en: China\r\nGarantía: 3 años\r\n', 10, 'monitor'),
(7, 'Monitor LED 20 Mk400', 360, 349, 'https://falabella.scene7.com/is/image/FalabellaPE/16793717_1?wid=1500&hei=1500&qlt=70', 'LG', 'Modelo: 20MK400H-B\r\nAlto: 181.9 cm\r\nAncho: 468.8 cm\r\nProfundidad: 366.5cm\r\nPeso: 2.3 kg\r\nTamaño de la pantalla: 20\r\nResolución de la pantalla: 1366 x 768\r\nTiempo de respuesta: 2ms\r\nAspecto ratio: 0.672916666666667Garantía: 3 años', 10, 'monitor'),
(8, 'Monitor LED LG 32 Ips', 1000, 979, 'https://falabella.scene7.com/is/image/FalabellaPE/17328066_1?wid=1500&hei=1500&qlt=70', 'LG', 'Modelo 32MP58HQ-P\r\nAlto 49.91 cm\r\nAncho 72.6 cm\r\nProfundidad 20.48 cm\r\nPeso 6.5 kg\r\nTipo de pantalla Plana\r\nTamaño de la pantalla 32 pulgadas\r\nResolución de la pantalla Full HD (1920x1080)\r\nTiempo de respuesta 5 ms\r\nAspecto ratio 16:9\r\nGarantía del proveedor 3 años', 2, 'monitor'),
(9, 'Laptop Asus X540', 2000, 1899, 'https://compuplaza.net.pe/upload/nt1q0ns0g17pckwj.jpg', 'ASUS', '-Procesador: CORE I3 -8va\r\n-Memoria RAM : 4GB DDR4\r\n-Disco Duro 1TB Sata\r\n-Pantalla LED 15.6\' HD\r\n', 23, 'labtop'),
(10, 'Computadora HP Completa', 3000, 2699, 'https://compuplaza.net.pe/upload/46qcqd8vlsy8vuoh.png', 'HP', 'Modelo: HP 290-A0002BLA\r\nProcesador: Intel celeron j4005\r\nMemoria total: 4 gb\r\nTamaño de la pantalla: 21,5\r\nDisco duro: 500 gb\r\nDisco duro sólido: 500 gb\r\nNúcleos del procesador: Dual core\r\nVelocidad del procesador: 2.00 ghz\r\nModelo del procesador: Intel celeron\r\nMemoria ram: 4gb\r\nRam expandible: 8gb\r\nTipo de pantalla: Monitor de 21,5 pulgadas hp 22w\r\n', 7, 'computadora'),
(11, 'COMPUTADORA ALL IN ONE LENOVO CORE I3', 5000, 4550, 'https://compuplaza.net.pe/upload/j86gc6vhq10ly089.png', 'LENOVO', 'MODELO IDEACENTRE AIO 520\r\nPROCESADOR INTEL CORE i3 7100T 3.4 GHZ 3 MB\r\nMEMORIA RAM CAPACIDAD 4 GB\r\nALMACENAMIENTO DISCO DURO CAPACIDAD 1 TB\r\nPANTALLA TAMAÑO 21.5 PULG RESOLUCION 1920 x 1080\r\nCAMARA WEB', 5, 'computadora'),
(12, 'PARLANTES HALLION RAPTOR', 220, 200, 'https://compuplaza.net.pe/upload/0rf8vuuzjrt1d1ce.jpg', 'HALLION', '• Contenido: Radio FM, Lector USB, Lector SD, Bluetooh, control remoto\r\n• Medidas: 32.5 x 21.5 x 38.9 cm\r\n• Potencia: 80 W\r\n• Parlante: 1 woofer / 2 satélites\r\n• Respuesta de frecuencia: 20Hz? 20KHz.\r\n• Entrada USB: Si\r\n• Batería interna: No\r\n• Peso 6.2 kg\r\n• Color Negro', 12, 'parlante'),
(13, 'Tarjeta Madre Asrock Z390 Pro4', 750, 699, 'https://falabella.scene7.com/is/image/FalabellaPE/17238658_5?wid=1500&hei=1500&qlt=70', 'ASROCK', 'Soporta procesadores Intel® Core¿ de 9ª y 8ª Generación (Socket 1151) Diseño de alimentación de 10 fases Soporta memoria DDR4 4300MHz+ (OC) 2 PCIe 3.0 x16, 3 PCIe 3.0 x1, 1 M.2(Key E) Para el WiFi AMD Quad CrossFireX¿ y CrossFireX¿ Opciones de salida gráficos: HDMI, DVI-D, D-Sub Audio 7.1 canales HD (Códec de audio Realtek ALC892), Capacitadores de audio ELNA 6 SATA3, 2 Ultra M.2 (PCIe Gen3 x4 & SATA3) 2 USB 3.1 Gen2 (Trasero Tipo A+C), 6 USB 3.1 Gen1 (4 Frontales, 2 Traseros) Intel® Gigabit LAN', 14, 'placa madre'),
(14, 'Fuentes de Poder Evga 700W', 300, 289, 'https://falabella.scene7.com/is/image/FalabellaPE/17328089_2?wid=1500&hei=1500&qlt=70', 'LG', '', 50, 'fuentepc'),
(15, 'PARLANTES HALLION KARP', 330, 299, 'https://compuplaza.net.pe/upload/8gwlmjisymgwrt5l.png', 'HALLION', 'Parlante Subwoofer Digital 2.1\r\nColor: Negro, con detalle Rojo\r\nBotón de Encendido\r\nLed Indicador de Encendido\r\nControl de Volumen, Volume -, Volume +\r\nInput, Play / Pause,\r\nTuning -, Tuning +, Prev, Next,\r\nDisplay Digital\r\nDispositivo Bluetooth\r\nConexión USB (función MP3)\r\nLector tarjeta SD\r\nRadio FM\r\nControl remoto.\r\nPotencia: 60 Watts RMS\r\nSubwoofer 4” y Satélites de Madera.', 10, 'parlante'),
(16, 'Nvidia Geforce Gt 1030 2gb', 530, 499, 'https://falabella.scene7.com/is/image/FalabellaPE/17423894_1?wid=1500&hei=1500&qlt=70', 'NVIDIA', 'Hecho en: China\r\nGarantía: 1años\r\n', 8, 'video'),
(17, 'ablet E10 1GB RAM-16GB HDD 10.1 HD IPS', 488, 450, 'https://falabella.scene7.com/is/image/Falabella/7137249_1?wid=1500&hei=1500&qlt=70', 'LENOVO', ' Procesador: Qualcomm\r\nTamaño de la pantalla: 10.1 pulgadas\r\nVelocidad del procesador: 1.3 GHz\r\nMemoria RAM: 1GB\r\nMemoria expandible: No aplica', 10, 'tablet'),
(18, 'Lenovo Tab E10/ Ram 1Gb/ 16Gb/ 101', 550, 489, 'https://falabella.scene7.com/is/image/Falabella/10330692_1?wid=1500&hei=1500&qlt=70', 'LENOVO', ' Procesador: Qualcomm\r\nNúcleos del procesador: Quad Core\r\nTamaño de la pantalla: 10.1 pulgadas\r\nVelocidad del procesador: 1,3 GHZ\r\nMemoria RAM: 1GB', 8, 'tablet'),
(19, 'Tintas Hp 664 Tricolor', 52.9, 48.9, 'https://falabella.scene7.com/is/image/Falabella/4839266_1?wid=1500&hei=1500&qlt=70', 'HP', ' Modelo: 664 TRI-COLOR\r\nTipo: Cartuchos\r\nHecho en: China\r\nGarantía del proveedor: 3 meses\r\nCompatibilidad: No aplica', 60, 'cartucho'),
(20, 'Cartucho de tintas 664 Negro Original', 48.9, 45, 'https://falabella.scene7.com/is/image/Falabella/4839263_1?wid=1500&hei=1500&qlt=70', 'HP', 'Modelo: 664 BLACK\r\nTipo: Cartuchos\r\nHecho en: China\r\nGarantía del proveedor: 3 meses\r\nInformación adicional: HP DeskJet 1110, HP DeskJet 1115, HP DeskJet 2130, HP DeskJet 2135, HP DeskJet 3630, HP ENVY 4520, HP OfficeJet 3830, HP OfficeJet 4650', 30, 'cartucho'),
(21, 'Pack de Tintas Epson T544 Negro Colores Original', 160, 155, 'https://falabella.scene7.com/is/image/Falabella/10005358_1?wid=1500&hei=1500&qlt=70', 'EPSON', ' Tipo: Botellas\r\nCapacidad: 65ml\r\nTemporada: Toda temporada\r\nModelo: T544\r\nGarantía del proveedor: 90 días', 10, 'tinta'),
(22, 'Router Ethernet Wireless TP-Link AC750, Dual Band, 2.4/5 GHz, 802.11 a/b/g/n/ac.', 500, 469, 'https://www.compuplaza.net.pe/upload/rx4mora37fn20a0c.png', 'TP-LINK', ' FRECUENCIA DE OPERACION 2.4 GHZ 5 GHZ\r\nESTANDARES 802.11a 802.11b 802.11g 802.11n802.11ac\r\nTASA DE SEÑAL300 MB/S (2.4 GHZ)433 MB/S (5 GHZ)\r\nSEGURIDADWEP 64/128-BITWPAWPA-PSKWPA2WPA2-PSK\r\nPOTENCIA MAXIMA DE TRANSMISION 2.4 GHZ: <20 dBm 5 GHZ: <23 dBm', 5, 'router'),
(23, 'Karpesky Antivirus 2020', 150, 124, 'https://www.compuplaza.net.pe/upload/5k84ncq8s3s37sbt.png', 'Karpesky', 'IEMPO DE LICENCIA 1 AÑO PARA 1 PC\r\nPROTEGE DE VIRUS: RANSOMWARE SPYWARE ANTI-PHISHING SITIOS WEB PELIGROSOS', 6, 'antivirus'),
(24, 'WD Disco duro Elements 1Tb', 170, 160, 'https://falabella.scene7.com/is/image/Falabella/4104359_1?wid=1500&hei=1500&qlt=70', 'WESTERN', ' Capacidad de almacenamiento 1TB\r\nAncho 8,2 cm\r\nVelocidad de lectura 250MB/s\r\nAlto 11 cm\r\nTipo Discos duros externos\r\nProfundidad 1,5 cm', 10, 'disco'),
(25, 'Mouse Inalámbrico Anywhere 2S Negro', 120, 100, 'https://falabella.scene7.com/is/image/Falabella/7089828_1?wid=1500&hei=1500&qlt=70', 'OGITECH', ' Compatible con Mac, Windows 7 o posterior · Compatible con FLOW, puedes navegar y compartir archivos entre computadoras** · Darkfield Laser Tracking: Seguimiento preciso en casi todo tipo de superficie, incluso en vidrio transparente y superficies de alto brillo · Recrga rápida: cada minuto de carga te permite usarlo una hora · Intercambia la conexión entre 3 dispositivos con un botón · Hasta 70 días de duració de baterías con una única carga completa', 50, 'mouse'),
(26, 'LECTORA EXTERNA LG', 120, 89, 'https://www.compuplaza.net.pe/upload/vwnftvw5w2rpbti8.png', 'LG', ' SuperMult 8x\r\nDVD portátil\r\nRegrabadora con apoyo M-Disc\r\nMax 8x DVD-R\r\nVelocidad de escritura\r\nConectividad TV\r\nCompatible con Windows 8', 10, 'lectora'),
(27, 'Mouse Inalámbrico M862', 45, 28, 'https://falabella.scene7.com/is/image/Falabella/6994885_1?wid=1500&hei=1500&qlt=70', 'URBANO', ' Peso 0,050 kg\r\nModelo (Internet) M862\r\nConexión Inalámbrico', 15, 'mouse'),
(28, 'Disco Duro Externo 2TB + Pendrive 32Gb', 250, 230, 'https://falabella.scene7.com/is/image/Falabella/11471832_1?wid=1500&hei=1500&qlt=70', 'WD', ' Tipo Discos duros externos\r\nAlto 11.05 cm\r\nAncho 8.2 cm\r\nProfundidad 1.5 cm\r\nPeso 0,140 kg\r\nCapacidad de almacenamiento 2TB', 10, 'disco'),
(29, 'BOREAL+ AB 18+ BASE CON COOLER 2FAN LED 14CM AIRBOOM', 38, 30, 'https://www.compuplaza.net.pe/upload/wzei9czl9qsjlxxe.png', 'AIRBOM', ' Género: Cooler para Notebook\r\nVentilación: 2 Cooler Led Azul de 140mm\r\nMateriales: Aluminio y plástico ligero\r\nAlimentación: Conector USB\r\nConexión: 1 Puerto USB Adicional\r\nDimensiones: (ANxPRxAL) 37 X 27 X 3.2 ', 7, 'ventilador'),
(30, 'Teclado Inalámbrico Multimedia', 38, 28, 'https://falabella.scene7.com/is/image/Falabella/7164372_1?wid=1500&hei=1500&qlt=70', 'URBANO', 'Modelo Ud-Btsw05', 20, 'teclado'),
(31, 'Power Cargador Universal 65W Slim', 54, 50, 'https://falabella.scene7.com/is/image/Falabella/6274545_1?wid=1500&hei=1500&qlt=70', 'GENERAL POWER', 'Material Plástico\r\nInformación adicional 1 cargador universal ', 2, 'cargador'),
(32, 'Generico Cable de Red 20 Metros Lan Rj45 Patch Cord Cat5E', 38, 35, 'https://falabella.scene7.com/is/image/Falabella/7273663_1?wid=1500&hei=1500&qlt=70', 'ZATRA', 'Para una buena conexión a internet o grupo de trabajo en red recomendamos este cable de red, longitud de 20 METROS, categoría 5E, canal UTP, cable ruta de acceso de alta calidad, COLOR AZUL, de 4 pares, ideal para conectar tu PC a la red o crear redes de casa u oficina. Producto en bolsa.Longitud: 20 metros.Color: Azul.Marca: GenericoRápida identificación y fácil instalación.Alta calidad y diseño del cable.El capuchón termo inyectado permite la sujeción del cable a la salida del conector.', 7, 'cable'),
(33, 'Kit Gamer Teclado + Mouse gamer+ Pad mouse + Audífonos Gamer XTRIKE ME CM-400', 99.9, 79.9, 'https://http2.mlstatic.com/kit-gamer-teclado-mouse-audifonos-pad-mouse-luces-led-D_NQ_NP_688012-MPE32290391957_092019-F.jpg', 'Logitech', '• Botones: conector 6D: impedancia de altavoz de 3,5 mm: 32?\r\n• tipo de micrófono: omnidireccional\r\n• sensibilidad del micrófono: 42dB ± 3dB.\r\n• Impendencia del micrófono: 2.2k? Teclas de teclado de juego retroiluminadas con arco iris: 104\r\n• interfaz: USB Tamaño: 320 * 270 * 2 mm Alfombrilla de ratón de caucho natural', 5, 'combo'),
(34, 'Pc Gamer Xtreme Amd A8 9600 Ram 8Gb Disco 1tb Graficos Radeon R7 Monitor Led 195 Kit', 3500, 3499, 'https://resources.claroshop.com/medios-plazavip/mkt/5c8aa7687943f_800jpg.jpg', 'varios', 'COMPUTADORA GAMER ¡lista para la batalla! Armada con los mejores componentes para dar el máximo rendimiento en tus juegos favoritos. DISFRUTA DE LOS MEJORES TÍTULOS DEL MOMENTO Fortnite *PUBG *Apex Legends *GTA V *Overwatch *League of Legends *The Witcher 3 *Left 4 Dead *Saga Battlefield *Half-Life 2 *Forza Horizon *Far Cry *Saga Call of Duty Y MUCHOS JUEGOS MÁS Los gráficos AMD Radeon™ serie R7 no son solo ideales para jugar.', 2, 'combo'),
(35, 'PC DE ESCRITORIO INTEL CORE I5 MAS IMPRESORA Y MONITOR', 1200, 1199.5, 'https://i.linio.com/p/ecfa3921664eb2add1453e34d6008b14-product.jpg', 'varios', 'MB ASUS LGA1155 H61M-A VGA/DVI/HDMI\r\nMEM DDR3 8GB 1333 KINGSTON\r\nHDD 1.0 TB Clasificados de Duplex en Clasipar.com. TOSHIBA SATA3 7200\r\nDVD RW LG NEGRO SATA OEM\r\nVGA ZOTAC GT210 SYNERGY 1GB/DDR3/64bit 520/1066\r\nCAJA KIT AOPEN ES45F NEGRO\r\nFUENTE 650 WATS ATX 24 MTEK REAL\r\nMONITOR AOC LED 19\r\nIMPRESORA MULTIFUNCIONAL HP', 1, 'combo'),
(36, 'Mejores Placas Base - Ranking 2018 - Para PC Gamers', 790, 780, 'https://i1.wp.com/www.parapcgamers.com/wp-content/uploads/2015/06/asus_extreme.jpg?fit=455%2C226&ssl=1', 'asus', 'La mayoría de los gamers a la hora de armar su <strong>PC gamer</strong> priorizan invertir su dinero en una placa de video, procesador y memoria, descuidando muchas veces la elección de <strong>una buena motherboard</strong>.<p></p><p>Pero a decir verdad, la <strong>placa base</strong> es un componente muy importante y que por supuesto es aconsejable que tenga casi tan buena calidad como el resto de los otros tres componentes nombrados. Esto es por una simple razón, hoy en día <strong>las placas base de última generación</strong> cumplen un papel fundamental para que la tarjeta gráfica, el cpu y la memoria alcancen su máxima potencia.</p><p>Es por ello que a la hora de armar tu PC gamer debes elegir <strong>una motherboard acorde al resto de los componentes</strong>, y siempre priorizando las marcas líderes del mercado de motherboards, como son ASUS, ASRock, MSI y Gigabyte.</p><p>', 10, 'placamadre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
