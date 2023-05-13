class producetmodel{
int? id;
String? name;
String? image;
bool? favourite;
double? price;
int Quantity=0;

producetmodel({
  this.image,
  this.name,
  this.id,
  this.price,
  this.favourite,
  //this.Quantity

});

}
List<producetmodel>producetlist=[
  producetmodel(id: 1,name: 'Tornado 32ES1500E Smart LED TV 32 Inch HD',price: 2500,favourite: false,
    image: 'asset/tv1.jpg',
  ),
  producetmodel(id: 1,name: 'Toshiba 55U5965EA - 55-inch 4K Smart Frameless D-LED TV',price: 11100,favourite: false,
  image: 'asset/ttv1.jpg',
  ),
  producetmodel(id: 2,name: 'Skyline 3222A - 32-inch HD LED TV',price: 2550,favourite: false,
      image:  'asset/tv2.jpg',
  ),
  producetmodel(id: 3,name: 'Samsung UA32T5300 - 32-inch HD Smart TV With Built In Receiver Wall Mount + MX3 Air Mouse Remote',price: 3300,favourite: false,
      image: 'asset/tv3.jpg',
  ),producetmodel(id: 3,name: 'Contex 32 Inches CON32T10SHA1A LED HD Smart TV, Black',price: 2700,favourite: false,
    image: 'asset/tv4.jpg',),

  producetmodel(id: 3,name: 'Samsung UA43AU7000 – 43-inch UHD 4K Built In Receiver Smart TV',price: 7700,favourite: false,
    image: 'asset/ttv2.jpg'),
  producetmodel(id: 3,name: 'Toshiba 55U5965EA - 55-inch 4K Smart Frameless D-LED TV',price: 8650,favourite: false,
    image: 'asset/ttv3.jpg'),
  producetmodel(id: 3,name: 'Samsung 50 Inch TV Crystal Processor 4K LED UA50BU8000UXEG, New Edition - Black',price: 9800,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/58/856862/1.jpg?2445'),
  producetmodel(id: 3,name: 'Tornado Tv 43 Inch Hd With Built-In Receiver, 43ER9300E',price: 5000,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/62/713662/1.jpg?8825')

];
List<producetmodel>mobilelist=[
  producetmodel(id: 1,name: 'OPPO A77 6.56 Inches, Dual SIM, 128GB, 4GB RAM, 4G LTE,Starry Black',price: 6700,favourite: false,
    image: 'asset/mobile1.jpg',
  ),
  producetmodel(id: 2,name: 'OPPO A96, 6.59“ 50MP+2MP Rear Camera, 16MP Front Camera, RAM 8GB + ROM 256GB - Starry Black',price: 5000,favourite: false,
    image:  'asset/mobile2.jpg',
  ),
  producetmodel(id: 3,name: 'Apple IPhone 11 With FaceTime - 128GB - Black',price: 25000,favourite: false,
    image: 'asset/iphone.jpg',

  ),
  producetmodel(id: 4,name: 'Apple iPhone 11 with FaceTime - 128GB - White',price: 25900,favourite: false,
    image: 'asset/iphone2.jpg',
),
  producetmodel(id: 5,name: 'Samsung A13 - 6.6-inch 4GB/64GB Dual Sim 4G Mobile Phone - Blue',price: 14500,favourite: false,
    image: 'asset/sam.jpg',

  ),
  producetmodel(id: 6,name: 'Samsung Galaxy A32 - 6.4-inch 128GB/6GB Dual SIM Mobile Phone - Awesome Blue',price: 8900,favourite: false,
    image: 'asset/sam2.jpg',),

  producetmodel(id: 7,name: 'Apple IPhone 13 Single SIM With FaceTime - 128GB - Blue',price: 22000,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/95/775822/1.jpg?9570'),


  producetmodel(id: 7,name: 'OPPO Reno 6 - 6.4-inch 128GB/8GB Dual SIM 4G Mobile Phone - Stellar Black',price: 92500,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/49/013132/1.jpg?7504'),

  producetmodel(id: 7,name: 'XIAOMI Redmi Note 11 - 6.7-inch 128GB/6GB Dual SIM 4G Mobile Phone – Graphite Gray',price: 7700,favourite: false,
      image: ' https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/99/124742/1.jpg?0417'),

  producetmodel(id: 7,name: 'Samsung Galaxy Z Fold3 - 7.8-inch 256GB/12GB Dual SIM 5G Mobile Phone - Phantom Green',price: 29000,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/34/470342/1.jpg?3139 ')
];
List<producetmodel>pslist=[
  producetmodel(id: 1,name: 'Sony Interactive Entertainment DualShock 4 Wireless Controller For PS4 - Black',price: 550,favourite: false,
    image: 'https://spng.pngfind.com/pngs/s/139-1397956_playstation-4-bundle-render-play-station-4-hd.png',
  ),
  producetmodel(id: 2,name: 'Sony DualShock 4 Wireless Controller For PlayStation 4 - white -',price: 475,favourite: false,
    image:  'https://raw.githubusercontent.com/abuanwar072/E-commerce-Complete-Flutter-UI/master/assets/images/ps4_console_white_1.png',
  ),
  producetmodel(id: 3,name: 'Sony PlayStation 5 Console',price: 29000,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/95/935332/1.jpg?0287',

  ),
  producetmodel(id: 4,name: 'Activision Call Of Duty Vanguard Arabic PS5',price: 890,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/88/965642/1.jpg?9186',
  ),
  producetmodel(id: 5,name: 'EA Sports FIFA 22 - PlayStation 4 - English',price: 1200,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/08/590762/1.jpg?0974',
  ),
  producetmodel(id: 5,name: 'Microsoft Xbox Series X-S Controller - SHOCK BLUE',price: 2300,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/56/180722/1.jpg?7604',
  ),
  producetmodel(id: 5,name: 'TRITTON Kunai Stereo Gaming Headset With Removable Mic - Black',price: 275,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/15/722012/1.jpg?9664',
  ),
  producetmodel(id: 5,name: '4 In 1 D9 Eats Chicken Toist The Jedi Survival Stimulation Battlefield Mobile Handle Grip Gamepads',price: 149.00,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/70/309132/1.jpg?7065',
  ),

];
List<producetmodel>laptoplist=[
  producetmodel(id: 1,name: 'HP 13m-bd1033dx Envy X360 Convertible Laptop - Intel Core I7-1195G7 - 8GB RAM - 512 SSD - 13-inch FHD - Intel Iris X GPU - Windows - Silver',price: 18500,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/22/540052/1.jpg?1493',
  ),
  producetmodel(id: 2,name: 'DELL Vostro 3515 Laptop - AMD RYZEN 5 - 3450U - 8GB RAM - 512 GB SSD - AMD VGA 8 Graphics - 15.6 Inch FHD - Ubuntu - Black',price: 8000,favourite: false,
    image:  'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/46/313442/1.jpg?2984',
  ),
  producetmodel(id: 3,name: 'Lenovo Laptop IdeaPad 3 82H801V8ED Intel Core I3-1115G4, 4GB Ram, 1TB, UHD Graphics, 15.6 Inch FHD, Win 11 - Sand',price: 6700,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/36/847172/1.jpg?5769',

  ),
  producetmodel(id: 4,name: 'Lenovo IdeaPad 3 Core I7 1165G7 - 8G Ram - HDD 1TB - VGA Nvidia 2G MX450 - 15.6 FHD - BLUE - DOS',price: 19700,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/80/255072/1.jpg?5389',
  ),
  producetmodel(id: 5,name: 'Microsoft Surface Pro 7+ Plus Tablet - Intel Core I5 - 8gb Ram - 256gb Ssd - 12.3-Inch Fhd+ - Intel Gpu - Windows 10 - Platinum',price: 12600,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/91/237062/1.jpg?9654',

  ),
  producetmodel(id: 6,name: 'Huawei MateBook D 15 Laptop – Intel Core i5-1135G7 - 8GB RAM - 512GB SSD - 15.6-inch FHD – Intel Iris Xe Graphics - Windows 11 - Space Gray – English/Arabic Keyboard',price: 9800,favourite: false,
    image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/91/835252/1.jpg?6417',),

  producetmodel(id: 7,name: 'DELL Vostro 3500 - Intel Core I7 - 16GB RAM - 1TB HDD - 512GB SSD - 15.6-inch FHD - 2GB GPU - Windows 11 Pro - Black',price: 17200,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/58/538332/1.jpg?3244'),


  producetmodel(id: 7,name: 'HP 255 G7 Laptop - AMD Ryzen 3 3200U- 4GB RAM - 1TB HDD - 15.6-inch HD - AMD Radeon GPU - DOS - Dark Asteroid Silver',price: 14500,favourite: false,
      image: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/12/113322/1.jpg?3305')

];
//https://raw.githubusercontent.com/abuanwar072/E-commerce-Complete-Flutter-UI/master/assets/images/ps4_console_white_1.png
//https://raw.githubusercontent.com/abuanwar072/E-commerce-Complete-Flutter-UI/master/assets/images/wireless%20headset.png