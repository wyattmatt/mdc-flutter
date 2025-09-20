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
        category: Category.management,
        id: 0,
        isFeatured: true,
        name: 'Dr. Ir. Tony Antonio, M. Eng.',
        price: 'Dosen,  Ketua',
      ),
      Product(
        category: Category.management,
        id: 1,
        isFeatured: true,
        name: 'Melissa Christina, S.T., M.M.',
        price: 'Wakil Ketua Bidang Operasional',
      ),
      Product(
        category: Category.management,
        id: 2,
        isFeatured: false,
        name: 'Dr. E. Elia Ardyan, S.E., MBA.',
        price: 'Dosen, Ketua Prodi Manajemen',
      ),
      Product(
        category: Category.management,
        id: 3,
        isFeatured: true,
        name: 'Dr. Adityawarman M. Kouwagam, S.H., M.Kn.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 4,
        isFeatured: false,
        name: 'Asriah Syam, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 5,
        isFeatured: false,
        name: 'Cindy Yoel Tanesia S.E., MBA.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 6,
        isFeatured: false,
        name: 'Cipta Canggih Perdana, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 7,
        isFeatured: true,
        name: 'Dr. Erwin Parega, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 8,
        isFeatured: true,
        name: 'Fia Fauzia Burhanuddin, B.Bus., M.Ak.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 9,
        isFeatured: true,
        name: 'Gracela Marisa Sanapang, S.P., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.informatics,
        id: 10,
        isFeatured: false,
        name: 'David Sundoro, S.T., M.MT.',
        price: 'Ketua Prodi Informatika',
      ),
      Product(
        category: Category.informatics,
        id: 11,
        isFeatured: false,
        name: 'Ir. Kasmir Syariati, S.Kom., M.T.',
        price: 'Dosen',
      ),
      Product(
        category: Category.informatics,
        id: 12,
        isFeatured: false,
        name: 'Citra Suardi, S.Kom., M.T.',
        price: 'Dosen',
      ),
      Product(
        category: Category.informatics,
        id: 13,
        isFeatured: true,
        name: 'Arnold Nasir, B.Sc.(Hons.), M.Sc.',
        price: 'Dosen',
      ),
      Product(
        category: Category.informatics,
        id: 14,
        isFeatured: true,
        name: 'Reinaldo Lewis Lordianto, S.Kom',
        price: 'Laboran',
      ),
      Product(
        category: Category.informatics,
        id: 15,
        isFeatured: true,
        name: 'Ir. Juan Salao Biantong, S.Kom., M.T',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 16,
        isFeatured: true,
        name: 'Justin Wijaya, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 17,
        isFeatured: false,
        name: 'Maichal, S.E., M.Sc.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 18,
        isFeatured: true,
        name: 'Dr. Carolina Novi Mustikarini, S.E., M.Sc., LP-NLP.',
        price: 'Dosen',
      ),
      Product(
        category: Category.vcd,
        id: 19,
        isFeatured: false,
        name: 'Niken Savitri Anggraeni, S.Sn., M.Ds.',
        price: 'Ketua Prodi VCD',
      ),
      Product(
        category: Category.vcd,
        id: 20,
        isFeatured: false,
        name: 'Ahmad Ade Nugraha, S.Ds., M.Ds.',
        price: 'Dosen',
      ),
      Product(
        category: Category.vcd,
        id: 21,
        isFeatured: false,
        name: 'Andra Rizky Yuwono, S.Ds., M.Ds.',
        price: 'Dosen',
      ),
      Product(
        category: Category.vcd,
        id: 22,
        isFeatured: false,
        name: 'Bilyan Putra Sari, S.Ds., M.Ds.',
        price: 'Dosen',
      ),
      Product(
        category: Category.vcd,
        id: 23,
        isFeatured: false,
        name: 'Rahmat Zulfikar, S.Ds., M.Ds.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 24,
        isFeatured: true,
        name: 'Dr. Monalisa, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 25,
        isFeatured: false,
        name: 'Dr. Muchtar, S.E., M.Si.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 26,
        isFeatured: false,
        name: 'Muh. Syulhasbiullah, S.M., M.I.Kom., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 27,
        isFeatured: true,
        name: 'Dr. Mustika Kusuma Basir S.Psi., M.M., CPS., CHCM.,CODP.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 28,
        isFeatured: true,
        name: 'Dr. Natali Ikawidjaja, M.M., CRP.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 29,
        isFeatured: true,
        name: 'Novalina Gloria Simanungkalit, S.Psi., M.Psi., Psikolog, CLMA®',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 30,
        isFeatured: true,
        name: 'Novieanty Pagiling, S.E., M.Sc.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 31,
        isFeatured: false,
        name: 'Novika Ayu Triany, S.I.Kom., M.I.Kom.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 32,
        isFeatured: false,
        name: 'Powell Gian Hartono, S.M., M.M., RSA®',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 33,
        isFeatured: true,
        name: 'Dr. Salmah Sharon, S.E., M.Si., Ak., CA., CSRS., CSRA.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 34,
        isFeatured: false,
        name: 'Sinar Dharmayana Putra, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 35,
        isFeatured: false,
        name: 'Winarto Poernomo, S.E., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 36,
        isFeatured: false,
        name: 'Yuyun Karystin Meilisa Suade, S.M., M.M.',
        price: 'Dosen',
      ),
      Product(
        category: Category.management,
        id: 37,
        isFeatured: true,
        name: 'Giovanni Marras',
        price: 'Dosen',
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }

  static List<Product> searchProducts(String query) {
    // Get all products first
    final allProducts = loadProducts(Category.all);

    if (query.isEmpty) {
      return allProducts;
    }

    final String searchQuery = query.toLowerCase();
    return allProducts.where((Product product) {
      final String productName = product.name.toLowerCase();
      final String productPosition = product.price.toLowerCase();

      // Search in both name and position
      return productName.contains(searchQuery) ||
          productPosition.contains(searchQuery);
    }).toList();
  }
}
