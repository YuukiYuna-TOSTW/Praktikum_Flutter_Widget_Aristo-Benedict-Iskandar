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

enum Category {
  genshinimpact,
  honkaiimpact,
  honkaistarrail,
  zenlesszonezero,
  hoyoverse,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
    this.customImagePath,
  });

  final category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;
  final String? customImagePath;

  String get formattedPrice => "Rp "+price.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => '${match[1]}.');
  
  String get assetName => customImagePath ?? '$id-0.jpg';
  String? get assetPackage => customImagePath != null ? null : 'shrine_images';

  @override
  String toString() => "$name (id=$id)";
}
