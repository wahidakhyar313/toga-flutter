import 'package:flutter/material.dart';
import 'package:toga_flutter/models/toga_list.dart';

class DetailScreen extends StatelessWidget {
  final int id;

  const DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<TogaDraft> _togaList = TogaDraft.getTogaItems();

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: size.height,
              width: double.infinity,
              child: FittedBox(
                child: Image.network(_togaList[id].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () => print("tambah menu"),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * .7,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                    stops: const [0, 1],
                    colors: [Colors.white, Colors.white.withOpacity(.03)]),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            width: size.width * .89,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          _togaList[id].nama,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.add_location_alt_outlined,
                            color: Color(0xff55CB95),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black87.withOpacity(.5),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: _togaList[id].namaLatin,
                                    style: TextStyle(
                                      color: Colors.black87.withOpacity(.5),
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Kandungan : " + _togaList[id].kandungan,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Color(0xff686771),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Khasiat : " + _togaList[id].manfaat,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Color(0xff686771),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: FavoriteButton(),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Color(0xff55CB95),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Center(
                            child: Text(
                              'Lihat Cara Meramu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff55CB95),
                            border: Border.all(
                              color: Color(0xff55CB95),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
