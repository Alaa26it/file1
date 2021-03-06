/*import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
*/
import 'package:flutter/services.dart';
import 'package:homee1/main.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class Add1 extends StatefulWidget {
  @override
  _Add1State createState() => _Add1State();
}

class _Add1State extends State<Add1> {
  List<String> lst = ['Sell', 'Rent'];
  int selectedIndex = 0;

  var names;

  String dropdownvalue = 'Select Your Location';
  String dropdownvalue1 = 'Neighborhood';

  List<String> cities = [
    'Select Your Location',
    'Erbil',
    'Duhok',
    'Halabja Shahid',
    'Kirkuk',
    'Sulaymania',
    'Zakho'
  ];

  List<String> erbil = [
    'Neighborhood',
    'Bakhtyari',
    ' Karezan',
    'Zanyari',
    'Zanyari Towers',
    'Ankawa',
    'Ashti City2',
    'Aram Village',
    'Atlantic City',
    'Cihan City',
    'Dream City',
    'Lalav Sky View',
    'Rona Towers',
    'Empire World',
    'Badawa',
    'Bnaslawa',
    'Rasty',
    'Hewa City',
    'Family Land',
    'Ganjan city',
    'Gird jutyar',
    'Qarabw',
    'Shahan city',
    'Global city',
    'Aynada City',
    'Daratu',
    'Kurdistan city',
    'Naz Naz',
    'MRF Towers',
    'New Eskan',
    'Tayrawa',
    'Khanaqa',
    'Setaqan',
    '5 Hasarok',
    'Azadi',
    'Rzgary',
    'Nishteman',
    'Nawroz',
    'Mosul Road',
    'Kwestan',
    'Kwran Ankawa',
    'Salahadin',
    'Kani',
    'Empire',
    'Aras',
    'Aynda City',
    'Rzgary',
    'Shorsh',
    'Brayaty',
    'Mamostayan 1',
    'Ashty city 1',
    'Roshanbire 1',
    'Runaki',
    'Mass city',
    '94 Badawa',
    'Ozal city',
    'Andazyaran',
    'Kasnazan',
    'Sary Blnd',
    'Zagros',
    'Heran city1',
    'Sarkawtn',
    '92 zanko(Athar)',
    'Havalan',
    '32 Park(Sarbasti)',
    'Shaqlawa',
    'Mantkawa',
    'Biaban city',
    'Wazyiran',
    'Chnar',
    'Mufti',
    'Hamiran',
    'Mnara',
    'Galawezh',
    'Hawkary',
    'Zaiton city',
    'Hawlery Nwe',
    'Zhyan',
    'Gulan',
    'Wavey Avenue',
    'Sherawani',
    'Aynda city1',
    'Simky Khatnawa',
    'Dolarawa',
    '120 Meter Street',
    'Shari Mamostayan',
    'Ari',
    '40 Meter(gulan village 1)',
    'Rami Towers',
    'shyaw city',
    'green land',
    'south industry',
    'safeen 3',
    'kurani nwe',
    'Actonz(New Azadi)',
    'Tajeel Garasoor',
    'Korean Village',
    'italian village 1',
    'Eskan',
    'sana city',
    'plus life',
    'arb kand',
    'qushtapa',
    'lalav airport view',
    'American village',
    'kirkuk road',
    'marina 1',
    'lana city',
    'Talar city',
    'Lawan city',
    'zin city',
    'Nuseran',
    'Majdi Land',
    'Hiran',
    'Spanish village',
    'Mini Slava',
    'Hay shurta',
    'Altun city',
    'sky towers',
    'Life Towers',
    '60 Meter street',
    '159 gulan',
    'vital village',
    'MNW Towers',
    'Star Towers',
    'Global view towers',
    'parosh twin towers',
    'Empire Diamond',
    'Mardin',
    'Eskan towers',
    'italian village 2',
    'Gorasher',
    'Golden tower',
    'Gorasher',
    '100 meter(peshawa qazi)street',
    'park view',
    'timmar',
    'lalav sun towers',
    'Bestana',
    '30 Meter(Barzani namr)street',
    'Capital Tower',
    'English tower',
    'zaza street',
    'ankawa street',
    'hawler city',
    'andaziyaran street',
    'pirzin',
    'brag',
    'Empire pear tower',
    '94 zanko (zanko2)',
    'labanese village',
    'Rena tower',
    '99 zanko(zanko 1)',
    'Pirash',
    'Kurdistan',
    'surchyan street',
    'peshang towers',
    'shadi',
    'sarwaran',
    'Mala afandi st',
    'stadium tower',
    'mamostayani zanko',
    'tawska',
    'Asuda cidy',
    'Erbil one tower',
    'shekh ahmad',
    'gllkand',
    'kalakan',
    'german village',
    'future city',
    'berkoty nwe',
    'mamostayan2',
    'hana city',
    'graw',
    'choman',
    'darwaza',
    'goma gru',
    'mahabad',
    'koraki gchka',
    '121 gulan',
    'shaways',
    'sebadan',
    'langa shop',
    'white towers',
    'MRF quattro towers',
    'slava city',
    'koya road',
    'kempinski towers',
    'kalak',
    'Alban strret',
    'kotri salam',
    'aweny shar',
    'komari',
    'Empire royal city',
    'justice tower',
    'Empire weng',
    'Zraa',
    'Mala omar',
    'Hanara',
    'Florence tower',
    'pak land',
    'Boulevard',
    'kore',
    'Shahidan',
    'Amin Amakan',
    'Ziraea Roundabout',
    'Bafrin city',
    'Ferdaws city',
    'kavar city',
    'Rawanduz',
    'Empire',
    'Roshnbery 2',
    '4 Tower',
    'Zagros tower',
    'Hawary shar',
    'Arab',
    'Remas city',
    'Harsham city',
    'mass village',
    'Peshang pluse city',
    'Zaiton plus city',
    'Arman city',
    'BCD Signature',
    'zaner city',
    'Ara city',
    'New Betawa',
    'sheraton city',
    'kani bzra',
    'Bahrka road',
    'peshawa',
    'Naz city',
    'Gazna city',
    'Central park',
    'Pzishkan street',
    'zanko street',
    'Hawargay zhin',
    'shari andazyarani',
    'zanayan',
    'khalifan',
    '150m street',
    'shyaw city',
    'koraki gawra',
    'Diplomati Safiran',
    'Safeen 3',
    'Kurani nwe',
    'lalav twin towers',
    'Baghlumnara',
    'Gulan city',
    'light city',
    'kamusak',
    'Makhmor Road',
    'Hakmawa',
    'Ziarat village',
    'lawan',
    'dahati nwe',
    '92 Apartments',
    'Harir',
    'Nobel towers',
    'Zyarati malazadan',
    'Shekhalla',
    'Permam road',
    'Sha omar',
    'Zeringran bazar',
    'zerin tower',
    'Lalav nova towers',
    'lalav venus tower',
    'Empire square',
    "koysinjaq",
    'var park',
    'qalati nwe',
    'zeelan city',
    'nice village',
    'hadid and khashab',
    'mass hills'
  ];

  List<String> duhok = [
    'Neighborhood',
    'Malain',
    'Baroshke',
    'Masika',
    'Hitet',
    'Malta',
    'Sika Asri',
    'Nizarke',
    'Masike2',
    'Etit',
    'Shindokha',
    'Malta Eslam',
    'Avro city',
    'Pel city',
    'Zakho road',
    'Qsara',
    'Barbuhar',
    'Amink',
    'Gre base',
    'Etute',
    'Afrike',
    'Besre',
    'Zrka',
    'zaweta',
    'industry',
    'domiz',
    'qadish',
    'Misurik',
    'Malta',
    'Dabin tower',
    'Shakhke',
    'Tenahi',
    'Emink',
    'Danielle Mitterrand road',
    'kayar city',
    'kayar city2',
    'prime view',
    'kevla',
    'lalav view towers',
    'arya city',
    'duhok tower',
    'shele',
    'duhok tower2',
    'marbella',
    'hay askari',
    'nawro city',
    'french village',
    'hay shurta'
  ];
  List<String> halabja = [
    'Kani qulka',
    'Byara',
    'Tawella',
    'City center',
    'Goran city'
  ];
  List<String> kirkuk = [
    'Neighborhood',
    'Almas',
    'Alwasti',
    'Hruba',
    'Esra mafqudin',
    'Flka ekhwan',
    'failq',
    'Al qadisyah',
    'qadisyah2',
    'Domez',
    'Adan',
    'Baghdad road',
    'shoraw',
    'gharnata',
    'Al nasr',
    'Saqlzi',
    'Salahdin street',
    'floria city',
    'Tisin',
    'Al khadra',
    'Al Askari',
    'Al asra al mafqudin',
    'University street',
    'modern city',
    'al qazaat',
    'Noor city',
    'Panja ali',
    'Al wahda',
    'saha tayaran',
    'hisabat strret',
    'hussianya jaafar sadeeq',
    'saha al Ehtifalat',
    'badr',
    'Galozi',
    'AL Zawra',
    'Abdulrahman street',
    'dur al sakak',
    'jamiha kirkuk',
    'jardaghlw',
    'Arafa',
    'Al hurya',
    'Rzgary',
    'darwaza',
    'baklr',
    'al nedaa',
    'kobani',
    'sekanyan',
    'Khadara',
    'hamzali',
    'kornish',
    'gharnata',
    'quds street',
    '1 Ahdar',
    'Al dhabat',
    'dollar',
    'baghad road',
    'muthalath',
    'mhafza street',
    'car showrooms',
    'Al muaridh',
    'Shareka tariq',
    'kirkuk city 2',
    'wadih ahdar',
    'azadi',
    'sharh jmhury',
    'teba',
    'ronaky',
    'qasab khana',
    'al jmhoria',
    'quds',
    'al mualmen',
    'mualmin',
    'arafa',
    'qadisya 1',
    'muhalaj kirkuk',
    'sulaymania street',
    'al bahth',
    'shoraw2',
    'al sayada',
    'quria',
    'wahd huzairan',
    'madinti',
    'rahimawa',
    'runaki',
    'muhafaza'
  ];
  List<String> suli = [
    'Neighborhood',
    'Sitak',
    'Kareza Wshk',
    'Sarkarez',
    'Twy malik',
    'Farmanbaran',
    'Sharawany',
    'Hawary Shar',
    'Khabat',
    'Kalakn',
    'Kaziwa 1',
    'Kani Spika',
    'Sabunkaran',
    'Heron city',
    'Rzgary',
    'Bakhtyari Taza',
    'Qrga',
    'Chwar Bakh',
    'Mardin',
    'Aro City',
    'Sarchnar',
    'Shary Spy',
    'Aqary',
    'Chwar Chra',
    'Bakrajo',
    'Ahmadi Khani',
    'Kani Sard',
    'Khewata',
    'Raparin',
    'Ibrahim Pasha',
    'Ibrahim Ahmed',
    'Azadi',
    'Bakhtyari',
    'Qaiwan Towers',
    'Darwaza City 2',
    'Hawary Zanko',
    'Shary Daik',
    'Tavga',
    'Shari Pzishkan',
    'Awal',
    '157 Doktorakan',
    'Awbara',
    'Shekh Muhyedin',
    'Kosay Cham',
    'Barzayakani Sulaymani',
    'Rieaya',
    'Kurd City',
    'Zerinok',
    'Hezarmerd',
    'Diya City',
    'Family Mall',
    'Baharan',
    'Bakhan',
    'Darwaza City 3',
    'Nawroz City',
    'Kwestan',
    'Naghada',
    'Bekas',
    'Grdi Sarchnar',
    'Mergapan',
    'Kani Goran',
    'Bakhakany Raparin',
    'kani pera',
    'Ablakh',
    'Goizha City 3',
    'Down Town',
    'Haji Karim',
    'Kani Ba',
    'Kani Askan',
    'German village 3',
    'Faruk Medical City',
    'Shari Jwan Tower',
    'Hawarabarza',
    'Shahidan',
    'Kobani City',
    'Malik Mahmood Street',
    'Arbat',
    'Garden City',
    'Shekh Waisawa',
    'Twa Spi',
    'Goizha City 2',
    'Aburinasan City',
    'Dilan City',
    'Mala Dawd',
    'Empire Tower',
    'Shorsh Street',
    '60 Meter Street',
    'Ali Kamal',
    'Sarchya',
    'Azizawa',
    'Gully Shar',
    'Firaunakan',
    'Badina',
    'Kani Kurda',
    'Zanko',
    'Zargatay Taza',
    'Katw',
    'Bazagir'
        'Shekhan',
    'Goizha',
    'Darwaza City 1',
    '30 meter street',
    'Talary Daik',
    'Shary Roshnbiran',
    'Gozakan',
    'Qaiwan Heights'
        'Hawary Taza',
    'Pak City',
    'Majid Bag',
    'Momostayan',
    'Damrkan',
    'Rozhhalat',
    'Shnyar City',
    'Zargata',
    'Khanaqa',
    'Eskan',
    'Malkandi',
    'Baranan',
    'Kani',
    'green city',
    'Hanjiraka',
    'German Village 1',
    'chwarta',
    'Qularaisi',
    'Ashti',
    'Orzi',
    'Mamostayan',
    'dara swtawaka',
    'ashaba spy',
    'shary khawnakan',
    'Hajiawa',
    'Shari Awin',
    'Setwan',
    'Qlyasan',
    'Sharbazher',
    'Kanigoma',
    'Badinan',
    'Gurgayar',
    'Bazaar',
    'Srwsht',
    'ZHALA',
    'Kanakawa',
    'Daroga',
    'Reaaya',
    'Tawella',
    'Bahashti Shar',
    'Sadaka Street',
    'Shorshi Nwe',
    'Kaniaw',
    'Kalar',
    'Roj City',
    'Hawari Farmanbarani Zanko',
    'Kani Goma',
    'Warte'
        'Suli View'
        'Zanko Complex',
    'Darwaza city 2 & 3',
    'Nawroz',
    'Rozh City',
    'Saholaka',
    'Shari Mamostayan',
    'Dwkan',
    'Industrial Zone',
    'Andazyaran',
    'Shahidani Azadi',
    'Bardakar',
    'Shari Zaiton',
    'Hwana',
    'Qalawa',
    'Grdi Joga',
    'Piri Shawkell',
    'Goizhay Nwe',
    'Azmar',
    'Mamayara',
    'Sahry Nmwnayi',
    'Shary Nmwnayi',
    'Talary Zagros',
    'Grda Brawaka',
    'Eslah',
    'Grand Boulevard',
    'Karkuk Road',
    'Next To Sulaymaniyah Court'
  ];

  List<String> zaxo = ['Neighborhood', 'New Zakho'];

  List<String> cityName = [];

  var selects;

  List<String> homee1 = ['Residential', 'Plot', 'Commercial'];
  int selectedIndex1 = 0;

  List<String> widgets = [
    "Apartment",
    "House",
    "Lower Portion",
    "Upper Portion",
    "Villa",
    "Farmhouse"
  ];
  int selectedIndex2 = 0;

  /* List<String> widget3 = [
    "Residential Plot",
    "Commercial Plot",
    "Agricultural Land",
    "Industrial Land",
    "Other",
  
  ];
  int selectedIndex3 = 0;
  */

  List<String> bedroom = ['1', '2', '3', '4', '5'];
  int selectedIndexbed = 0;

  List<String> bath = ['1', '2', '3', '4', '5'];
  int selectedIndexbath = 0;

  List<String> kitchens = ['1', '2', '3', '4', '5'];
  int selectedIndexkit = 0;

  List<String> rooms = ['1', '2', '3', '4', '5'];
  int selectedIndexroom = 0;

  List<String> rooms2 = ['1', '2', '3', '4', '5'];
  int selectedIndexroom2 = 0;

  List<String> rooms3 = ['1', '2', '3', '4', '5'];
  int selectedIndexroom3 = 0;

  List<String> servant = ['1', '2', '3', '4', '5'];
  int selectedIndexserv = 0;

  bool parking = false;
  bool balacon = false;
  bool sauna = false;
  bool swim = false;
  bool electric = false;
  bool centralair = false;
  bool centralheat = false;
  bool windows = false;
  bool storage = false;
  bool tv = false;
  bool cctv = false;
  bool security = false;
  bool waste = false;
  bool gym = false;
  bool sewerage = false;
  bool kitchen = false;
  bool recep = false;
  bool hr24 = false;
  bool net = false;
  bool playground = false;
  bool greenarea = false;
  bool market = false;
  bool shop = false;
  bool elevator = false;
  bool school = false;
  bool air = false;
  bool mosque = false;
  bool media = false;
  bool gas = false;
  bool rest = false;
  bool salon = false;
  bool sport = false;
  bool cafe = false;
  bool mainten = false;
  bool clean = false;
  bool pets = false;
  bool fire = false;
  bool office = false;
  bool fireplace = false;
  bool near = false;
  bool dressroom = false;
  bool nurse = false;
  bool hospital = false;
  bool bakery = false;
  bool garden = false;
  bool library = false;
  bool cinama = false;
  bool barber = false;
  bool station = false;
  bool water = false;
  bool curtain = false;
  bool airduct = false;
  bool solar = false;
  bool carwash = false;
  bool smarthome = false;
  bool mall = false;
  bool earthquake = false;
  bool automotive = false;
  bool laundry = false;
  bool jacuzzi = false;
  bool pharmacy = false;
  bool gas2 = false;
  bool wallpaper = false;
  bool police = false;
  bool thermal = false;
  bool compass = false;
  bool water2 = false;
  bool watertank = false;
  bool events = false;
  bool centerfire = false;
  bool hot = false;
  bool vacuum = false;
  bool garret = false;
  bool basement = false;
  //////////////////////////////////////

  String? propertyType;
  String? selectedProperty;
  int _selected = 0;
/////////////////////////////////////

  Widget _icon(int index, {String? text, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkResponse(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                  color: _selected == index ? Colors.blue : Colors.grey)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: _selected == index ? Colors.blue : Colors.grey,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(text!,
                  style: TextStyle(
                      color: _selected == index ? Colors.blue : Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        onTap: () => setState(
          () {
            _selected = index;
            selectedProperty = text;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Add Property',
            style: TextStyle(color: Colors.grey),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Home1();
                }));
              },
              icon: Icon(
                Icons.west_sharp,
                color: Colors.blue[800],
              )),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      onPrimary: Colors.indigo[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "ADD PROPERTY",
                    style: TextStyle(fontSize: 18),
                  ))),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10),
                      child: customRadio(lst[0], 0)),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: customRadio(lst[1], 1)),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Project Title",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[500]),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "Type",
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade200, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade400, width: 2)),
              )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                top: 10,
              ),
              child: Text(
                "Locations",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[500]),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200, width: 2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value - Select
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: cities.map((String city) {
                      debugPrint('City Name |||| ' + city);
                      return DropdownMenuItem(
                        value: city,
                        child: Text(city),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                        if (newValue == 'Erbil') {
                          // cityName > 0
                          if (cityName.isNotEmpty) {
                            dropdownvalue1 = 'Select';
                            cityName.clear();
                            //
                            for (var i = 0; i < erbil.length; i++) {
                              cityName.add(erbil[i]);
                            }
                          } else {
                            for (var i = 0; i < erbil.length; i++) {
                              cityName.add(erbil[i]);
                            }
                          }
                        } else if (newValue == 'Duhok') {
                          if (cityName.isNotEmpty) {
                            dropdownvalue1 = 'Select';
                            cityName.clear();
                            for (var i = 0; i < erbil.length; i++) {
                              cityName.add(duhok[i]);
                            }
                          } else {
                            for (var i = 0; i < duhok.length; i++) {
                              cityName.add(duhok[i]);
                            }
                          }
                        } else if (newValue == 'Select') {
                          cityName.clear();
                        }
                      });
                    },
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue1,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: cityName.map((String location) {
                      return DropdownMenuItem(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                        debugPrint('Selected Value ::::: ' + dropdownvalue1);
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              height: 70,
              child: TextFormField(
                  decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade200, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade400, width: 2)),
              )),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.blue[400],
                      ),
                      Text("  Property Type"),
                    ],
                  ),
                ),
                CustomRadioButton(
                  padding: 0,
                  width: MediaQuery.of(context).size.width * 0.3,
                  elevation: 0,
                  absoluteZeroSpacing: false,
                  spacing: 3,
                  margin: EdgeInsets.zero,
                  unSelectedColor: Colors.transparent,
                  selectedBorderColor: Colors.blue,
                  unSelectedBorderColor: Colors.grey,
                  autoWidth: false,
                  enableShape: true,
                  radius: 3,
                  height: 55,
                  buttonLables: const [
                    'Residential',
                    'Plot',
                    'Commercial',
                  ],
                  buttonValues: const [
                    "1",
                    "2",
                    "3",
                  ],
                  buttonTextStyle: const ButtonTextStyle(
                      selectedColor: Colors.blue,
                      unSelectedColor: Colors.black,
                      textStyle:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  radioButtonValue: (value) {
                    setState(() {
                      propertyType = value.toString();
                    });
                  },
                  selectedColor: Colors.transparent,
                ),
                propertyType == null || propertyType == '1'
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _icon(0,
                                text: "Appartment", icon: Icons.location_city),
                            _icon(1,
                                text: "House", icon: Icons.storefront_sharp),
                            _icon(2,
                                text: "Lover Portion",
                                icon: Icons.house_siding_sharp),
                            _icon(3,
                                text: "Upper Portion",
                                icon: Icons.home_work_outlined),
                            _icon(4, text: "Villa", icon: Icons.villa_outlined),
                            _icon(5,
                                text: "Farmhouse",
                                icon: Icons.holiday_village_outlined)
                          ],
                        ),
                      )
                    : Container(),
                propertyType == '2'
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _icon(0,
                                text: "Residential Plot",
                                icon: Icons.real_estate_agent_outlined),
                            _icon(1,
                                text: "Commercial Plot",
                                icon: Icons.location_city_rounded),
                            _icon(2,
                                text: "Agricultrual Land",
                                icon: Icons.agriculture_outlined),
                            _icon(3,
                                text: "Industiral Land", icon: Icons.ac_unit),
                            _icon(4, text: "Other", icon: Icons.more_horiz),
                          ],
                        ),
                      )
                    : Container(),
                propertyType == '3'
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _icon(0,
                                text: "Office",
                                icon: Icons.maps_home_work_outlined),
                            _icon(1,
                                text: "Shop", icon: Icons.storefront_sharp),
                            _icon(2,
                                text: "Warehouse",
                                icon: Icons.house_siding_rounded),
                            _icon(3,
                                text: "Building", icon: Icons.location_city),
                            _icon(4, text: "Other", icon: Icons.more_horiz),
                          ],
                        ),
                      )
                    : Container(),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.blue[400],
                      ),
                      Text("  Property Type"),
                    ],
                  ),
                ),
                Container(
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                            Border.all(color: Colors.blue.shade200, width: 2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("Select"),
                        items: [
                          "Furnished",
                          "UnFurnished",
                        ]
                            .map((e) => DropdownMenuItem(
                                  child: Text("$e"),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (String? val) {
                          setState(() {
                            selects = val!;
                          });
                        },
                        value: selects,
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.monetization_on_sharp,
                        color: Colors.blue[400],
                      ),
                      Text(" Price"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 5),
                  height: 70,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        "Description",
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  height: 70,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        "Area m2",
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10, bottom: 60),
                  height: 70,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Bedrooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Baths",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Kitchens",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Drawing Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Dining Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Laundry Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Servant Quarters",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 30, left: 20),
                child: Text("Add Main Features",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ))),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: parking,
                        onChanged: (bool? val) {
                          setState(() {
                            parking = val!;
                          });
                        }),
                    Text("Parking Spaces"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: balacon,
                        onChanged: (bool? val) {
                          setState(() {
                            balacon = val!;
                          });
                        }),
                    Text("Balcony"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: sauna,
                        onChanged: (bool? val) {
                          setState(() {
                            sauna = val!;
                          });
                        }),
                    Text("Sauna"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: swim,
                        onChanged: (bool? val) {
                          setState(() {
                            swim = val!;
                          });
                        }),
                    Text("Swimming Pool"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: electric,
                        onChanged: (bool? val) {
                          setState(() {
                            electric = val!;
                          });
                        }),
                    Text("Electricity"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: centralair,
                        onChanged: (bool? val) {
                          setState(() {
                            centralair = val!;
                          });
                        }),
                    Text("Central Air-Conditioner"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: centralheat,
                        onChanged: (bool? val) {
                          setState(() {
                            centralheat = val!;
                          });
                        }),
                    Text("Central Heating"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: windows,
                        onChanged: (bool? val) {
                          setState(() {
                            windows = val!;
                          });
                        }),
                    Text("Double Glazed Windows"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: storage,
                        onChanged: (bool? val) {
                          setState(() {
                            storage = val!;
                          });
                        }),
                    Text("Storage Areas"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: tv,
                        onChanged: (bool? val) {
                          setState(() {
                            tv = val!;
                          });
                        }),
                    Text("Satellite/Cable TV"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: cctv,
                        onChanged: (bool? val) {
                          setState(() {
                            cctv = val!;
                          });
                        }),
                    Text("CCTV Security"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: security,
                        onChanged: (bool? val) {
                          setState(() {
                            security = val!;
                          });
                        }),
                    Text("Security Staff"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: waste,
                        onChanged: (bool? val) {
                          setState(() {
                            waste = val!;
                          });
                        }),
                    Text("Waste Disposal"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: gym,
                        onChanged: (bool? val) {
                          setState(() {
                            gym = val!;
                          });
                        }),
                    Text("Gym"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: sewerage,
                        onChanged: (bool? val) {
                          setState(() {
                            sewerage = val!;
                          });
                        }),
                    Text("Sewerage System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: kitchen,
                        onChanged: (bool? val) {
                          setState(() {
                            kitchen = val!;
                          });
                        }),
                    Text("Furnished Kitchen"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: recep,
                        onChanged: (bool? val) {
                          setState(() {
                            recep = val!;
                          });
                        }),
                    Text("Reception"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: hr24,
                        onChanged: (bool? val) {
                          setState(() {
                            hr24 = val!;
                          });
                        }),
                    Text("24hr Electricity"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: net,
                        onChanged: (bool? val) {
                          setState(() {
                            net = val!;
                          });
                        }),
                    Text("Internet"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: playground,
                        onChanged: (bool? val) {
                          setState(() {
                            playground = val!;
                          });
                        }),
                    Text("Playground"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: greenarea,
                        onChanged: (bool? val) {
                          setState(() {
                            greenarea = val!;
                          });
                        }),
                    Text("Green Area"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: market,
                        onChanged: (bool? val) {
                          setState(() {
                            market = val!;
                          });
                        }),
                    Text("Market"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: shop,
                        onChanged: (bool? val) {
                          setState(() {
                            shop = val!;
                          });
                        }),
                    Text("Shop"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: elevator,
                        onChanged: (bool? val) {
                          setState(() {
                            elevator = val!;
                          });
                        }),
                    Text("Elevator"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: school,
                        onChanged: (bool? val) {
                          setState(() {
                            school = val!;
                          });
                        }),
                    Text("School"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: air,
                        onChanged: (bool? val) {
                          setState(() {
                            air = val!;
                          });
                        }),
                    Text("Air Conditioners Installed"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: mosque,
                        onChanged: (bool? val) {
                          setState(() {
                            mosque = val!;
                          });
                        }),
                    Text("Mosque"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: media,
                        onChanged: (bool? val) {
                          setState(() {
                            media = val!;
                          });
                        }),
                    Text("Medical Center"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: gas,
                        onChanged: (bool? val) {
                          setState(() {
                            gas = val!;
                          });
                        }),
                    Text("Central Gas"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: rest,
                        onChanged: (bool? val) {
                          setState(() {
                            rest = val!;
                          });
                        }),
                    Text("Restaurant"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: salon,
                        onChanged: (bool? val) {
                          setState(() {
                            salon = val!;
                          });
                        }),
                    Text("Women salon"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: sport,
                        onChanged: (bool? val) {
                          setState(() {
                            sport = val!;
                          });
                        }),
                    Text("Sport Center"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: cafe,
                        onChanged: (bool? val) {
                          setState(() {
                            cafe = val!;
                          });
                        }),
                    Text("Cafeteria"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: mainten,
                        onChanged: (bool? val) {
                          setState(() {
                            mainten = val!;
                          });
                        }),
                    Text("Maintenance"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: clean,
                        onChanged: (bool? val) {
                          setState(() {
                            clean = val!;
                          });
                        }),
                    Text("Cleaning"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: pets,
                        onChanged: (bool? val) {
                          setState(() {
                            pets = val!;
                          });
                        }),
                    Text("Pets Allowed"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: fire,
                        onChanged: (bool? val) {
                          setState(() {
                            fire = val!;
                          });
                        }),
                    Text("Fire Fighting System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: office,
                        onChanged: (bool? val) {
                          setState(() {
                            office = val!;
                          });
                        }),
                    Text("Office"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: fireplace,
                        onChanged: (bool? val) {
                          setState(() {
                            fireplace = val!;
                          });
                        }),
                    Text("Fireplace"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: near,
                        onChanged: (bool? val) {
                          setState(() {
                            near = val!;
                          });
                        }),
                    Text("Near Main Road"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: dressroom,
                        onChanged: (bool? val) {
                          setState(() {
                            dressroom = val!;
                          });
                        }),
                    Text("Dressing Room"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: nurse,
                        onChanged: (bool? val) {
                          setState(() {
                            nurse = val!;
                          });
                        }),
                    Text("Nursery"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: hospital,
                        onChanged: (bool? val) {
                          setState(() {
                            hospital = val!;
                          });
                        }),
                    Text("Hospital"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: bakery,
                        onChanged: (bool? val) {
                          setState(() {
                            bakery = val!;
                          });
                        }),
                    Text("Bakery"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: garden,
                        onChanged: (bool? val) {
                          setState(() {
                            garden = val!;
                          });
                        }),
                    Text("Kindergarden"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: library,
                        onChanged: (bool? val) {
                          setState(() {
                            library = val!;
                          });
                        }),
                    Text("Library"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: cinama,
                        onChanged: (bool? val) {
                          setState(() {
                            cinama = val!;
                          });
                        }),
                    Text("Cinema Hall"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: barber,
                        onChanged: (bool? val) {
                          setState(() {
                            barber = val!;
                          });
                        }),
                    Text("Barber"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: station,
                        onChanged: (bool? val) {
                          setState(() {
                            station = val!;
                          });
                        }),
                    Text("Stationary"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: water,
                        onChanged: (bool? val) {
                          setState(() {
                            water = val!;
                          });
                        }),
                    Text("Water Well"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: curtain,
                        onChanged: (bool? val) {
                          setState(() {
                            curtain = val!;
                          });
                        }),
                    Text("Curtain"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: airduct,
                        onChanged: (bool? val) {
                          setState(() {
                            airduct = val!;
                          });
                        }),
                    Text("Air Duct"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: solar,
                        onChanged: (bool? val) {
                          setState(() {
                            solar = val!;
                          });
                        }),
                    Text("Solar Power System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: carwash,
                        onChanged: (bool? val) {
                          setState(() {
                            carwash = val!;
                          });
                        }),
                    Text("Car Washing"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: smarthome,
                        onChanged: (bool? val) {
                          setState(() {
                            smarthome = val!;
                          });
                        }),
                    Text("Smart Home"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: mall,
                        onChanged: (bool? val) {
                          setState(() {
                            mall = val!;
                          });
                        }),
                    Text("Mall"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: earthquake,
                        onChanged: (bool? val) {
                          setState(() {
                            earthquake = val!;
                          });
                        }),
                    Text("Earthquake Resistant System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: automotive,
                        onChanged: (bool? val) {
                          setState(() {
                            automotive = val!;
                          });
                        }),
                    Text("Automotive Service"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: laundry,
                        onChanged: (bool? val) {
                          setState(() {
                            laundry = val!;
                          });
                        }),
                    Text("Laundry & Dry Cleaner"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: jacuzzi,
                        onChanged: (bool? val) {
                          setState(() {
                            jacuzzi = val!;
                          });
                        }),
                    Text("Jacuzzi"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: pharmacy,
                        onChanged: (bool? val) {
                          setState(() {
                            pharmacy = val!;
                          });
                        }),
                    Text("Pharmacy"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: gas2,
                        onChanged: (bool? val) {
                          setState(() {
                            gas2 = val!;
                          });
                        }),
                    Text("Gas Station"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: wallpaper,
                        onChanged: (bool? val) {
                          setState(() {
                            wallpaper = val!;
                          });
                        }),
                    Text("Wallpaper"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: police,
                        onChanged: (bool? val) {
                          setState(() {
                            police = val!;
                          });
                        }),
                    Text("Police Station"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: thermal,
                        onChanged: (bool? val) {
                          setState(() {
                            thermal = val!;
                          });
                        }),
                    Text("Thermal insulation"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: compass,
                        onChanged: (bool? val) {
                          setState(() {
                            compass = val!;
                          });
                        }),
                    Text("Compass Card"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: water2,
                        onChanged: (bool? val) {
                          setState(() {
                            water2 = val!;
                          });
                        }),
                    Text("Water Sprinkler System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: watertank,
                        onChanged: (bool? val) {
                          setState(() {
                            watertank = val!;
                          });
                        }),
                    Text("Water Tank"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: events,
                        onChanged: (bool? val) {
                          setState(() {
                            events = val!;
                          });
                        }),
                    Text("Events hall"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: centerfire,
                        onChanged: (bool? val) {
                          setState(() {
                            centerfire = val!;
                          });
                        }),
                    Text("Central Fire Fighting System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: hot,
                        onChanged: (bool? val) {
                          setState(() {
                            hot = val!;
                          });
                        }),
                    Text("Hot Water System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: vacuum,
                        onChanged: (bool? val) {
                          setState(() {
                            vacuum = val!;
                          });
                        }),
                    Text("Central Vacuum System"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: garret,
                        onChanged: (bool? val) {
                          setState(() {
                            garret = val!;
                          });
                        }),
                    Text("Garret Room"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.indigo,
                        value: basement,
                        onChanged: (bool? val) {
                          setState(() {
                            basement = val!;
                          });
                        }),
                    Text("Basement"),
                  ],
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30),
              width: 60,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Upload property Pictures")),
            ),
          ],
        ));
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget customRadio(String txt, int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: Size(160, 40),
          backgroundColor:
              selectedIndex == index ? Colors.blue[300] : Colors.grey[100]),
      onPressed: () => changeIndex(index),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndex == index ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////////////

  void changeIndex1(int index1) {
    setState(() {
      selectedIndex1 = index1;
    });
  }

  Widget customRadio1(String txt, int index1) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.blue, width: 4, style: BorderStyle.solid)),
          // minimumSize: Size(40, 40),
          fixedSize: Size(110, 30),
          backgroundColor:
              selectedIndex1 == index1 ? Colors.blue[200] : Colors.white),
      onPressed: () => changeIndex1(index1),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndex1 == index1 ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////
  void changeIndex2(int index2) {
    setState(() {
      selectedIndex2 = index2;
    });
  }

  Widget customRadio2(String txt, int index2, IconData txt1) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                    color: Colors.blue, width: 4, style: BorderStyle.solid)),
            fixedSize: Size(155, 30),
            backgroundColor:
                selectedIndex2 == index2 ? Colors.blue[200] : Colors.white),
        onPressed: () => changeIndex2(index2),
        icon: Icon(txt1),
        label: Text(
          txt,
          style: TextStyle(
              color: selectedIndex2 == index2 ? Colors.grey[200] : Colors.grey),
        ));
  }

//////////////////////// bedrooms////////////////////////////////////////////////

  void changeIndexbed(int indexbed) {
    setState(() {
      selectedIndexbed = indexbed;
    });
  }

  Widget customRadiobed(String txt, int indexbed) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbed == indexbed
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbed(indexbed),
      child: Text(
        txt,
        style: TextStyle(
            color:
                selectedIndexbed == indexbed ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  //////////////////////// baths ////////////////////////////////////////////////

  void changeIndexbath(int indexbath) {
    setState(() {
      selectedIndexbath = indexbath;
    });
  }

  Widget customRadiobath(String txt, int indexbath) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbath == indexbath
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbath(indexbath),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexbath == indexbath
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// kitchens ////////////////////////////////////////////////

  void changeIndexkit(int indexkit) {
    setState(() {
      selectedIndexkit = indexkit;
    });
  }

  Widget customRadiokit(String txt, int indexkit) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexkit == indexkit
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexkit(indexkit),
      child: Text(
        txt,
        style: TextStyle(
            color:
                selectedIndexkit == indexkit ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms ////////////////////////////////////////////////

  void changeIndexroom(int indexroom) {
    setState(() {
      selectedIndexroom = indexroom;
    });
  }

  Widget customRadioroom(String txt, int indexroom) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom == indexroom
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom(indexroom),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom == indexroom
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms2 ////////////////////////////////////////////////

  void changeIndexroom2(int indexroom2) {
    setState(() {
      selectedIndexroom2 = indexroom2;
    });
  }

  Widget customRadioroom2(String txt, int indexroom2) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom2 == indexroom2
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom2(indexroom2),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom2 == indexroom2
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms3 ////////////////////////////////////////////////

  void changeIndexroom3(int indexroom3) {
    setState(() {
      selectedIndexroom3 = indexroom3;
    });
  }

  Widget customRadioroom3(String txt, int indexroom3) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom3 == indexroom3
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom3(indexroom3),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom3 == indexroom3
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// servant ////////////////////////////////////////////////

  void changeIndexserv(int indexserv) {
    setState(() {
      selectedIndexserv = indexserv;
    });
  }

  Widget customRadioserv(String txt, int indexserv) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexserv == indexserv
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexserv(indexserv),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexserv == indexserv
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }
}
