import 'package:flutter/material.dart';
import 'package:toga_flutter/view/detail_screen.dart';
import 'package:toga_flutter/models/toga_list.dart';
import 'package:toga_flutter/view/search_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/menu.png",
                width: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 2,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Selamat Datang,',
                      style: const TextStyle(color: Color(0xff55CB95), fontSize: 13, height: 1.3),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' akhyar313',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff55CB95), fontSize: 13, height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff55CB95),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/user5.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return TogaList();
            } else if (constraints.maxWidth <= 1200) {
              return const TogaGrid(gridCount: 4);
            } else {
              return const TogaGrid(gridCount: 6);
            }
          },
        ),
      );
    });
  }
}

class TogaGrid extends StatelessWidget {
  final int gridCount;

  const TogaGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TogaDraft> _togaList = TogaDraft.getTogaItems();

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: _togaList.map((toga) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(id: toga.urutan)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      toga.imageUrl,
                      fit: BoxFit.fill,
                      height: 60.0,
                      width: 80.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      toga.nama,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      toga.namaLatin,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     RichText(
      //       text: TextSpan(
      //           text: 'Tanaman Obat',
      //           style: const TextStyle(color: Color(0xff55CB95), fontSize: 32, height: 1.3),
      //           children: <TextSpan>[
      //             TextSpan(text: ' Keluarga', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black.withOpacity(.8)))
      //           ]),
      //     ),
      //     const SizedBox(
      //       height: 24,
      //     ),
      //     InkWell(
      //       child: Container(
      //         margin: const EdgeInsets.symmetric(vertical: 20),
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 15.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Icon(Icons.search_outlined, size: 24, color: Color(0xff55CB95)),
      //               SizedBox(
      //                 width: 5,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   margin: const EdgeInsets.symmetric(vertical: 10),
      //                   child: Text(
      //                     'Cari Tanaman Obat',
      //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Color(0xff5b5757)),
      //                   ),
      //                 ),
      //               ),
      //               Icon(Icons.keyboard_option_key_outlined, size: 24, color: Color(0xff55CB95)),
      //             ],
      //           ),
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.black.withOpacity(.1),
      //           borderRadius: const BorderRadius.all(
      //             Radius.circular(12),
      //           ),
      //         ),
      //       ),
      //       onTap: () {
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(listToga: _togaList)));
      //       },
      //     ),
      //     const SizedBox(
      //       height: 24,
      //     ),
      //     GridView.count(
      //       crossAxisCount: gridCount,
      //       crossAxisSpacing: 16,
      //       mainAxisSpacing: 16,
      //       children: _togaList.map((toga) {
      //         return InkWell(
      //           onTap: () {
      //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(id: toga.urutan)));
      //           },
      //           child: Card(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.stretch,
      //               children: [
      //                 Expanded(
      //                   child: Image.network(
      //                     toga.imageUrl,
      //                     fit: BoxFit.fill,
      //                     height: 60.0,
      //                     width: 80.0,
      //                   ),
      //                 ),
      //                 const SizedBox(height: 8),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8.0),
      //                   child: Text(
      //                     toga.nama,
      //                     style: const TextStyle(
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
      //                   child: Text(
      //                     toga.namaLatin,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       }).toList(),
      //     ),
      //   ],
      // ),
    );
  }
}

class TogaList extends StatelessWidget {
  TogaList({Key? key}) : super(key: key);

  List<TogaDraft> _togaList = TogaDraft.getTogaItems();
  List<TogaDraft> _favoritList = TogaDraft.getFavoritItems();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Tanaman Obat',
                  style: const TextStyle(color: Color(0xff55CB95), fontSize: 32, height: 1.3),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Keluarga', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black.withOpacity(.8)))
                  ]),
            ),
            InkWell(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search_outlined, size: 24, color: Color(0xff55CB95)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Cari Tanaman Obat',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Color(0xff5b5757)),
                          ),
                        ),
                      ),
                      Icon(Icons.keyboard_option_key_outlined, size: 24, color: Color(0xff55CB95)),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(listToga: _togaList)));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Tanaman Obat Favorit',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: size.height * .30,
              child: ListView.builder(
                  itemCount: _favoritList.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(id: index),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(24),
                                ),
                                child: Image.network(_favoritList[index].imageUrl)),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, .5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    )),
                                child: Text(
                                  _favoritList[index].nama.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daftar Toga',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff55CB95)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(listToga: _togaList)));
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              height: size.height * .4,
              child: ListView.builder(
                  itemCount: _togaList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final TogaDraft toga = _togaList[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(id: index)));
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: Image.network(
                                toga.imageUrl,
                                fit: BoxFit.fill,
                                height: 60.0,
                                width: 80.0,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    toga.nama,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        toga.namaLatin,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          color: Color(0xff686771),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
