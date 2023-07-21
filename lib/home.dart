import 'dart:ffi';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olshop/index.dart';
import 'package:olshop/notifikasi.dart';
import 'package:olshop/pemesanan.dart';
import 'package:olshop/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var search = TextEditingController();
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.favorite_outline,
      Icons.shopping_cart_outlined,
      Icons.person_3_outlined,
    ];
    final page = [
      Scaffold(
        appBar: AppBar(
          title: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Text('Kaafeer',
                          style: GoogleFonts.plusJakartaSans(
                              color: Color.fromARGB(255, 91, 102, 113),
                              fontWeight: FontWeight.w600,
                              fontSize: 24)),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text('Find anything what you want',
                        style: GoogleFonts.plusJakartaSans(
                            color: Color.fromARGB(255, 91, 102, 113),
                            fontWeight: FontWeight.normal,
                            fontSize: 12)),
                  ],
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 91, 102, 113),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifikasi()));
                },
                icon: Icon(Icons.notifications_none_rounded),
                color: Color.fromARGB(255, 241, 242, 244),
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SelectionArea(
              child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 38,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 142, 153, 164)),
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  // height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 173,
                      width: double.infinity,
                      color: Colors.amber,
                    ),
                    // child: Image.network(
                    //     'https://d2kchovjbwl1tk.cloudfront.net/vendors/prod/624905/assets/image/1648891359907-DSCF1307%202.JPG'),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 120,
                  height: 18,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Category',
                        style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color.fromARGB(255, 91, 102, 113)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    // border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jubah',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 91, 102, 102)),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Shop now',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 142, 153, 164)),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    size: 32,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    // border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Koko',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 91, 102, 102)),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Shop now',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 142, 153, 164)),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    size: 32,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 91, 102, 113)),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 91, 102, 113)),
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: SingleChildScrollView(
                    // scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 230,
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    print('arrivals');
                                  },
                                  child: Container(
                                      width: 112,
                                      height: 224,
                                      decoration: BoxDecoration(
                                          // border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 168,
                                            width: 112,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.blue,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Jubah Basic',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 91, 102, 113)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Rp 650.000',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 91, 102, 113)),
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
      Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Container(
                child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Wishlist',
                  style: GoogleFonts.plusJakartaSans(
                      color: Color.fromARGB(255, 45, 51, 57),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SelectionArea(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 38,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'Cari barang',
                          contentPadding: EdgeInsets.only(bottom: 0),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 142, 153, 164)),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    // color: Colors.blueAccent,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemCount: 3,
                      itemBuilder: (ctx, i) {
                        return Container(
                            width: double.infinity,
                            height: 200,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                // color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: 120,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                // Text('data')
                              ],
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Rekomendasi Untuk Anda',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Container(
                        height: 230,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      print('rekom');
                                    },
                                    child: Container(
                                        width: 112,
                                        height: 224,
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 168,
                                              width: 112,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blue,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Jubah Basic',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255,
                                                              91,
                                                              102,
                                                              113)),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Rp 650.000',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                              255,
                                                              91,
                                                              102,
                                                              113)),
                                                ),
                                              ],
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          )),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
              child: Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                'Keranjang',
                style: GoogleFonts.plusJakartaSans(
                    color: Color.fromARGB(255, 45, 51, 57),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SelectionArea(
              child: Column(children: [
            Container(
              height: 40,
              child: SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Container(
                  height: 40,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                print('tiba');
                              },
                              child: Container(
                                width: 92,
                                height: 28,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Tiba Ditujuan',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 91, 102, 113)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('kirim');
                              },
                              child: Container(
                                width: 58,
                                height: 28,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Dikirim',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 91, 102, 113)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('proses');
                              },
                              child: Container(
                                width: 68,
                                height: 28,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Diproses',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 91, 102, 113)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('konfir');
                              },
                              child: Container(
                                width: 148,
                                height: 28,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Menunggu Konfirmasi',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 91, 102, 113)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Pemesanan()));
                          },
                          child: Container(
                              width: double.infinity,
                              height: 108,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        left: 14, right: 14, top: 12),
                                    child: Container(
                                      height: 42,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons
                                                      .shopping_bag_outlined),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Barang',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        23,
                                                                        25,
                                                                        28)),
                                                      ),
                                                      Text(
                                                        '18 Mei 2023',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        91,
                                                                        102,
                                                                        113)),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 62,
                                                    height: 18,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 157, 223, 124),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4)),
                                                    child: Text(
                                                      'Berhasil',
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      55,
                                                                      131,
                                                                      22)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            height: 1,
                                            color: Color.fromARGB(
                                                255, 142, 153, 164),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        left: 14, right: 14, top: 8),
                                    child: Container(
                                      height: 42,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4)),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Modern Koko',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        23,
                                                                        25,
                                                                        28)),
                                                      ),
                                                      Text(
                                                        '1 Barang',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        91,
                                                                        102,
                                                                        113)),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Total Belanja',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        23,
                                                                        25,
                                                                        28)),
                                                      ),
                                                      Text(
                                                        'Rp 150.000',
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        23,
                                                                        25,
                                                                        28)),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ])),
        ),
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
              child: Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                'Profile',
                style: GoogleFonts.plusJakartaSans(
                    color: Color.fromARGB(255, 45, 51, 57),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => IndexScreen()));
                },
                icon: Icon(Icons.logout_rounded),
                color: Color.fromARGB(255, 45, 51, 57),
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SelectionArea(
              child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 42,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Jerome Bell',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 33, 37, 41)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  '(603) 555-0123',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 91, 102, 113)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 160,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Profiled()));
                                  },
                                  child: Container(
                                      height: 24,
                                      width: 88,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 130, 116, 23)),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Edit Profile',
                                            style: GoogleFonts.plusJakartaSans(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 130, 116, 23)),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(Icons.edit,
                                              size: 12,
                                              color: Color.fromARGB(
                                                  255, 130, 116, 23))
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromARGB(255, 198, 204, 210),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Info Profile',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 45, 51, 57)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nama',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 76, 85)),
                          ),
                          Text(
                            'Jerome Bell',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 25, 28)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Username',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 76, 85)),
                          ),
                          Text(
                            'data',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 25, 28)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nomor Telepon',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 76, 85)),
                          ),
                          Text(
                            '(603) 555-0123 ',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 25, 28)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jenis Kelamin',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 76, 85)),
                          ),
                          Text(
                            'Jenis Kelamin',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 25, 28)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tanggal Lahir',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 76, 85)),
                          ),
                          Text(
                            'Tanggal Lahir',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 25, 28)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: page[_bottomNavIndex],
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeColor: Color.fromARGB(255, 23, 25, 28),
          inactiveColor: Color.fromARGB(127, 23, 25, 28),
          iconSize: 24,
          icons: iconList,
          gapLocation: GapLocation.none,
          activeIndex: _bottomNavIndex,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
