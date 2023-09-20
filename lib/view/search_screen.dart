import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/toga_list.dart';
import 'detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key, required this.listToga}) : super(key: key);
  final List<TogaDraft> listToga;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<TogaDraft> listDataFilter = [];
  final TextEditingController searchController = TextEditingController(text: '');
  String searchQuery = "";

  @override
  void initState() {
    setState(() {
      listDataFilter = widget.listToga;
    });
    super.initState();
  }

  void updateSearchQuery(String newQuery) {
    List<TogaDraft> filteredList = [];
    filteredList.addAll(widget.listToga);

    searchQuery = newQuery;
    if (searchQuery.isNotEmpty) {
      filteredList = filteredList
          .where((item) => item.nama.toString().toLowerCase().contains(newQuery.toLowerCase()))
          .toList();
    }else{
      listDataFilter.clear();
      listDataFilter.addAll(widget.listToga);
    }
    setState(() {
      searchQuery = newQuery;
      listDataFilter = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff55CB95),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_outlined,
                    size: 24, color: Color(0xff55CB95)),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: (query){
                      updateSearchQuery(query);
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cari Tanaman Obat'),
                  ),
                ),
                Icon(Icons.keyboard_option_key_outlined,
                    size: 24, color: Color(0xff55CB95)),
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
      ),
      body : SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Daftar Toga',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: size.height,
                child: ListView.builder(
                    itemCount: listDataFilter.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailScreen(id: index)));
                          },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Image.network(
                                  listDataFilter[index].imageUrl,
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
                                      listDataFilter[index].nama,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listDataFilter[index].namaLatin,
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
      ),
    );
  }
}
