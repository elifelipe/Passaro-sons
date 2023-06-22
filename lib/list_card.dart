import 'card_screen.dart';

class CardData {
  final String title;
  final String description;
  final String imageUrl;
  final String audioUrl;
  final Future<void> imageLoadingFuture;

  CardData({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.audioUrl,
    required this.imageLoadingFuture,
  });
}

final List<CardData> cardList = [
  CardData(
    title: 'Saíra das palmeiras ',
    description: '( Thraupis palmarum )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN_TRSvXt9ujng547AGK352fexVgxUiRlp0LUglVwJ4ya0wQ91E2GwqGrd86RxPUUeDx0&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/CFRYARSVHN/XC543843-Sanha%C3%A7o%20do%20Coqueiro%202%20xc.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Juruva verde',
    description: '(Rufous-capped motmot)',
    imageUrl: 'https://live.staticflickr.com/6068/6094516587_ee6cb063c1_z.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/CFRYARSVHN/XC807190-recording-20230604-114628-Juruva.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Pica-pau pequeno',
    description: '(Veniliornis passerinus taenionotus)',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIf-gHQukN6MRJ3j5sZSvSnblhA7IIXiFO3A&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC806768-Dryobates-passerinus.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Sabiá de faixa branca',
    description: '( Mimus triurus )',
    imageUrl:
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/1053/3501447_52fce49ea978b17b0802bb3c1b6d1dae.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/ORPKXJRFDZ/XC803801-calhandra.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Andorinha do mar ',
    description: '( Phaetusa simplex )',
    imageUrl:
        'https://inaturalist-open-data.s3.amazonaws.com/photos/54870147/large.jpeg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LBUERSNSGU/XC806662-Phaetusa-simplex.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Tarambola dourada americana ',
    description: '( Pluvialis dominica )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPb4cOC51AAgpdt7I01HjDqNcVk4XxWZI2W33st6BJ94jrslv2XlZE4p2wLoP0kzpbERc&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LBUERSNSGU/XC806658-Pluvialis-dominica.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Pardal de colarinho ruivo',
    description: '( Zonotrichia capensis )',
    imageUrl:
        'https://www.passaro.org/wp-content/uploads/2023/01/reproducao-do-pardal-de-colarinho-ruivo-.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LBUERSNSGU/XC805869-Zonotrichia-capensis-5.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Pica-pau de cara canela',
    description: '( Celeus galeatus )',
    imageUrl:
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/2462/2642033_80fc5db2f59fc523227d4a240254bc57.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LBUERSNSGU/XC805869-Zonotrichia-capensis-5.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Foice de bico preto ',
    description: '( Campylorhamphus falcularius )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpZ5ICOChrcdL5ls73hshmYlKHiyUNKLKtcA&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC804980-Arapa%C3%A7u-1.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Tirano pigmeu coroado amarelado',
    description: '( Euscarthmus meloryphus meloryphus )',
    imageUrl:
        'https://i0.wp.com/birdscolombia.com/wp-content/uploads/2021/03/Euscarthmus-meloryphus-1.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC804929-Barulhento.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Carriça doméstica ',
    description: '( Troglodytes aedon musculus )',
    imageUrl:
        'https://www.passaro.org/wp-content/uploads/2018/11/Corru%C3%ADra.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC804926-Garricha.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Trilho de peito de ardósia',
    description: '(Aramides saracura)',
    imageUrl:
        'https://img.freepik.com/fotos-premium/trilho-de-peito-de-ardosia-gallirallus-striatus_700371-1054.jpg?w=1380',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/FFNYJFDJXV/XC603276-201114-052746_MN_Slaty-breastedWood-rail.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Apanhador de insetos tropicais ',
    description: '( Polioptila plumbea atricapilla )',
    imageUrl:
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/0653/3560540_daaeed1594853c5d75defeda48706d77.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC804362-Grava%C3%A7%C3%A3o-1.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'joão de cabeça cinza ',
    description: '( Cranioleuca semicinerea )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMOPor5xKcWpCOoTFdiME9whya3D1w7V0AzZE6JQjQP0GArO-RRTZ6MhgoB2XbJVQfwAs&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/PVWSUUVNDA/XC804362-Grava%C3%A7%C3%A3o-1.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Andorinha do campo ',
    description: '(Progne tapera)',
    imageUrl:
        'https://4.bp.blogspot.com/-rK6w_DnsqXw/UF4pk61WnDI/AAAAAAAAAZE/KXK_dhiqT-I/w1200-h630-p-k-no-nu/DSCF3401.JPG',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LXKLWEDKEM/XC804033-24-05-2023-7e16-Andorinha-do-campo-LAGEADO.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Manga de garganta preta ',
    description: '( Anthracothorax nigricollis )',
    imageUrl:
        'https://cdn.create.vista.com/api/media/small/319627364/stock-photo-hummingbird-hovering-drinking-nectar-beautiful',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/KRQYNRSSDF/XC316477-Anthracothorax%20nigricollis%20%28Matoury%2C%20Paramana%20120116%29%20O.Claessens_20160112%20093244.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Papa moscas de margem enferrujada ',
    description: '( Myiozetetes cayanensis )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT68ZhZBlLGubAqRY0RYdyM06PW6q9avEmBb4njCyvywn_wp0H3XGbjE8buSRxac2e4ps&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/JPBSNBUUEF/XC544560-Rusty-margined%20Flycatcher%2C%20call%2C%20200411-039.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Saíra de cabeça cinzenta ',
    description: '( Eucometis penicillata )',
    imageUrl:
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/5091/1905454_b33df179fea9a880c15aafd4b1c655fd.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/JPBSNBUUEF/XC593933-Grey-headed%20Tanager%2C%20Varzea%2C%20Piranha%2C%20201005-041.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Saíra de cabeça laranja ',
    description: '( Thlypopsis sordida )',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/SA%C3%8D-CAN%C3%81RIO_%28_Thlypopsis_sordida%29.jpg/1280px-SA%C3%8D-CAN%C3%81RIO_%28_Thlypopsis_sordida%29.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/JPBSNBUUEF/XC336681-Orange-headed%20Tanager%2C%2028.09.%2C%20song%2C%20Cipo.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Pombo Picazuro ',
    description: '( Patagioenas picazuro )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRtxMiao2gFPXiADWs2jjaj-HkGPnkT5f7Ew&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LWQBBYMIQQ/XC735996-e220703_Picazuro%20Pigeon07h36.MP3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Chopi Blackbird',
    description: ' ( Gnorimopsar chopi )',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgK-FATwam0MrumcCFC_ZrsHdSRJoyaJuYnw&usqp=CAU',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/LXKLWEDKEM/XC803729-25-05-2023-10e12-Passaro-preto-CATURAI.mp3',
    imageLoadingFuture: Future.value(),
  ),
  CardData(
    title: 'Saíra-das-palmeiras ',
    description: '( Thraupis palmarum )',
    imageUrl:
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/0502/2050364_220e5e909814e7945581349d209ef4b8.jpg',
    audioUrl:
        'https://xeno-canto.org/sounds/uploaded/JPBSNBUUEF/XC576037-Palm%20Tanager%2C%20call%2C%20Juntas%2C%20Tolima%2C%20200713-003.mp3',
    imageLoadingFuture: Future.value(),
  ),
  // Adicione mais cartões conforme necessário
];
