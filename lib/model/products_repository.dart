// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.zenlesszonezero,
        id: 1000,
        isFeatured: true,
        name: 'Alice',
        price: 100000000,
        customImagePath: 'assets/Alice.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1001,
        isFeatured: true,
        name: 'Astra Yao',
        price: 200000000,
        customImagePath: 'assets/Astra Yao.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1002,
        isFeatured: true,
        name: 'Bronya',
        price: 300000000,
        customImagePath: 'assets/Bronya.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1003,
        isFeatured: true,
        name: 'Castorice',
        price: 400000000,
        customImagePath: 'assets/Castorice.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1004,
        isFeatured: true,
        name: 'Citali',
        price: 500000000,
        customImagePath: 'assets/Citali.jpg',
      ),
      Product(
        category: Category.honkaiimpact,
        id: 1005,
        isFeatured: true,
        name: 'Elysia',
        price: 600000000,
        customImagePath: 'assets/Elysia.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1006,
        isFeatured: true,
        name: 'Evelyn',
        price: 700000000,
        customImagePath: 'assets/Evelyn.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1007,
        isFeatured: true,
        name: 'FireFly',
        price: 800000000,
        customImagePath: 'assets/FireFly.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1008,
        isFeatured: true,
        name: 'Fu Xuan',
        price: 900000000,
        customImagePath: 'assets/Fu Xuan.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1009,
        isFeatured: true,
        name: 'Kamisato Ayaka',
        price: 10000000000,
        customImagePath: 'assets/Kamisato Ayaka.jpg',
      ),
      Product(
        category: Category.honkaiimpact,
        id: 1010,
        isFeatured: true,
        name: 'Kiana Kaslana',
        price: 1000000000,
        customImagePath: 'assets/Kiana Kaslana.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1011,
        isFeatured: true,
        name: 'Kokomi',
        price: 200000000,
        customImagePath: 'assets/Kokomi.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1012,
        isFeatured: true,
        name: 'Lingsha',
        price: 300000000,
        customImagePath: 'assets/Lingsha.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1013,
        isFeatured: true,
        name: 'Miyabi',
        price: 400000000,
        customImagePath: 'assets/Miyabi.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1014,
        isFeatured: true,
        name: 'Nahida',
        price: 500000000,
        customImagePath: 'assets/Nahida.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1015,
        isFeatured: true,
        name: 'Nilou',
        price: 600000000,
        customImagePath: 'assets/Nilou.jpg',
      ),
      Product(
        category: Category.honkaiimpact,
        id: 1016,
        isFeatured: true,
        name: 'Raiden Mei',
        price: 700000000,
        customImagePath: 'assets/Raiden Mei.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1017,
        isFeatured: true,
        name: 'Robin',
        price: 800000000,
        customImagePath: 'assets/Robin.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1018,
        isFeatured: true,
        name: 'Silver Wolf',
        price: 900000000,
        customImagePath: 'assets/Silver Wolf.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1019,
        isFeatured: true,
        name: 'Yuzuha Classic',
        price: 10000000000,
        customImagePath: 'assets/Yuzuha.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1020,
        isFeatured: true,
        name: 'Belle',
        price: 100000000,
        customImagePath: 'assets/Belle.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1021,
        isFeatured: true,
        name: 'Chiori',
        price: 200000000,
        customImagePath: 'assets/Chiori.jpg',
      ),

      Product(
        category: Category.honkaistarrail,
        id: 1022,
        isFeatured: true,
        name: 'Cipher',
        price: 300000000,
        customImagePath: 'assets/Cipher.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1023,
        isFeatured: true,
        name: 'Escoffier',
        price: 400000000,
        customImagePath: 'assets/Escoffier.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1024,
        isFeatured: true,
        name: 'Furina',
        price: 500000000,
        customImagePath: 'assets/Furina.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1025,
        isFeatured: true,
        name: 'Ganyu',
        price: 600000000,
        customImagePath: 'assets/Ganyu.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1026,
        isFeatured: true,
        name: 'Jean',
        price: 700000000,
        customImagePath: 'assets/Jean.jpg',
      ),

      Product(
        category: Category.genshinimpact,
        id: 1027,
        isFeatured: true,
        name: 'Keqing',
        price: 800000000,
        customImagePath: 'assets/Keqing.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1028,
        isFeatured: true,
        name: 'Stelle',
        price: 900000000,
        customImagePath: 'assets/Stelle.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1029,
        isFeatured: true,
        name: 'Sparkle',
        price: 10000000000,
        customImagePath: 'assets/Sparkle.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1030,
        isFeatured: true,
        name: 'The Herta',
        price: 100000000,
        customImagePath: 'assets/The Herta.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1031,
        isFeatured: true,
        name: 'Mona',
        price: 200000000,
        customImagePath: 'assets/Mona.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1032,
        isFeatured: true,
        name: 'Shenhe',
        price: 300000000,
        customImagePath: 'assets/Shenhe.jpg',
      ),
      Product(
        category: Category.honkaistarrail,
        id: 1033,
        isFeatured: true,
        name: 'Ruan Mei',
        price: 400000000,
        customImagePath: 'assets/Ruan Mei.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1034,
        isFeatured: true,
        name: 'Navia',
        price: 500000000,
        customImagePath: 'assets/Navia.jpg',
      ),
      Product(
        category: Category.genshinimpact,
        id: 1035,
        isFeatured: true,
        name: 'Lumine',
        price: 600000000,
        customImagePath: 'assets/Lumine.jpg',
      ),
      Product(
        category: Category.honkaiimpact,
        id: 1036,
        isFeatured: true,
        name: 'Seele',
        price: 700000000,
        customImagePath: 'assets/Selle.jpg',
      ),
      Product(
        category: Category.honkaiimpact,
        id: 1037,
        isFeatured: true,
        name: 'Theresa',
        price: 800000000,
        customImagePath: 'assets/Theresa.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1038,
        isFeatured: true,
        name: 'Yixuan',
        price: 900000000,
        customImagePath: 'assets/Yixuan.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1039,
        isFeatured: true,
        name: 'Zhu Yuan',
        price: 10000000000,
        customImagePath: 'assets/Zhu Yuan.jpg',
      ),
      Product(
        category: Category.zenlesszonezero,
        id: 1040,
        isFeatured: true,
        name: 'Fu Hua',
        price: 100000000,
        customImagePath: 'assets/Fu Hua.jpg',
      ),

      
    ];
    if (category == Category.hoyoverse) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
          return p.category == category;
      }).toList();
    }
}
  }
