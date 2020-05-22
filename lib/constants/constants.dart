import 'package:flutter/material.dart';

import '../models/section.dart';
import '../models/product.dart';


const SECTIONS = const [
  Section(
    id: 's1', 
    name: 'T-Shirts', 
    imageUrl: 'https://dhb3yazwboecu.cloudfront.net/1045/Camisetas-Lacoste-Basica-Blanco-white-t-shirt_l.jpg',
    ),
  Section(
    id: 's2', 
    name: 'Pants', 
    imageUrl: 'https://www.iciw.com/bilder/artiklar/ICIW-535.jpg',
    ),
  Section(
    id: 's3', 
    name: 'Shoes', 
    imageUrl: 'https://image.skechers.com/img/productimages/xlarge/232040_WNV.jpg'
    ),
  Section(
    id: 's4', 
    name: 'Socks', 
    imageUrl: 'https://cdn.yoox.biz/46/46585335ea_13_n_f.jpg'
    ),
];


const PRODUCTS = const [
  Product(
    id: 'p1',
    section: 's1',
    description: 'White Lacoste T-Shirt',
    imageUrl: 'https://dhb3yazwboecu.cloudfront.net/1045/Camisetas-Lacoste-Basica-Blanco-white-t-shirt_l.jpg',
    price: 39.20,
  ),
  Product(
    id: 'p2',
    section: 's1',
    description: 'Black Emporio Armani T-Shirt',
    imageUrl: 'https://dhb3yazwboecu.cloudfront.net/1045/Camisetas-Emporio-Armani-Hombre-Negro-TF3-t-shirt-black_l.jpg',
    price: 81.95,
  ),
  Product(
    id: 'p3',
    section: 's1',
    description: 'Floral Embroidered T-Shirt',
    imageUrl: 'https://cortefiel.com/dw/image/v2/AAYL_PRD/on/demandware.static/-/Sites-gc-ctf-master-catalog/default/dw573cc11b/images/hi-res/P_916629799FM.jpg?sw=2000&sh=2000&sm=fit',
    price: 7.99,
  ),
  Product(
    id: 'p4',
    section: 's1',
    description: 'Basic V-Neck T-Shirt',
    imageUrl: 'https://www.scotch-soda.com/dw/image/v2/AANA_PRD/on/demandware.static/-/Sites-scotch-master-catalog-SS20/default/dw8fd9b478/images/xlarge-20130487-MDL-CRP.png?sw=1125&strip=false&bgcolor=eeecea',
    price: 49.95,
  ),
  Product(
    id: 'p5',
    section: 's2',
    description: 'Cargo Pants Black Men',
    imageUrl: 'https://www.iciw.com/bilder/artiklar/ICIW-535.jpg',
    price: 59.99,
  ),
  Product(
    id: 'p6',
    section: 's2',
    description: 'Camo Pants Black Men',
    imageUrl: 'https://www.iciw.com/bilder/artiklar/10139-2901.jpg',
    price: 59.99,
  ),
  Product(
    id: 'p7',
    section: 's2',
    description: 'Paper Bag Pant',
    imageUrl: 'https://www.surfstitch.com/on/demandware.static/-/Sites-ss-master-catalog/default/dw4e29c173/images/PAL1124CNL/CORNSTALK-WOMENS-CLOTHING-RUSTY-PANTS-PAL1124CNL_1.JPG',
    price: 69.99,
  ),
  Product(
    id: 'p8',
    section: 's2',
    description: 'Egress Pants',
    imageUrl: 'https://ii.titlenine.com/fcgi-bin/iipsrv.fcgi?FIF=/images/titlenine/source/215232/215232_02.tif&wid=1000&cvt=jpeg',
    price: 89.00,
  ),
  Product(
    id: 'p9',
    section: 's3',
    description: 'Skechers Arch Fit',
    imageUrl: 'https://image.skechers.com/img/productimages/xlarge/232040_WNV.jpg',
    price: 85.00,
  ),
  Product(
    id: 'p10',
    section: 's3',
    description: 'adidas SUPERSTAR',
    imageUrl: 'https://www.bstn.com/media/118415/w/1000/h/1000/n/adidas-superstar-eg4958-1.jpg',
    price: 84.90,
  ),
  Product(
    id: 'p11',
    section: 's3',
    description: 'Air Zoom Structure 22',
    imageUrl: 'https://vader-prod.s3.amazonaws.com/1560630537-screen-shot-2019-06-15-at-4-26-42-pm-1560630511.png',
    price: 111.59,
  ),
  Product(
    id: 'p12',
    section: 's3',
    description: 'Cloud X Running Shoe',
    imageUrl: 'https://n.nordstrommedia.com/id/sr3/c135132b-8445-4da3-b737-c0d464dfdd98.jpeg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838',
    price: 89.99,
  ),
  Product(
    id: 'p13',
    section: 's4',
    description: 'VLTN SOCKS',
    imageUrl: 'https://cdn.yoox.biz/46/46585335ea_13_n_f.jpg',
    price: 11.00,
  ),
  Product(
    id: 'p14',
    section: 's4',
    description: 'Burlington Marylebone Women\'s Socks',
    imageUrl: 'https://www.comptoir-irlandais.com/14578-large_default/burlington-marylebone-women-s-socks.jpg',
    price: 14.95,
  ),
  Product(
    id: 'p15',
    section: 's4',
    description: 'White Unisex Crew Socks',
    imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/81SjtQrGidL._AC_UL1500_.jpg',
    price: 12.00,
  ),
  Product(
    id: 'p16',
    section: 's4',
    description: 'Women\'s Cushioned Ankle Socks',
    imageUrl: 'https://target.scene7.com/is/image/Target/GUEST_12a12c4a-5706-414d-bc28-1314b59040e5?wid=488&hei=488&fmt=pjpeg',
    price: 10.99,
  ),
];
