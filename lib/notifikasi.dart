import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            child: Row(
          children: [
            Text(
              'Notfication',
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
                              print('notip');
                            },
                            child: Container(
                              width: 102,
                              height: 28,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'All Notification',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 91, 102, 113)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('transaski');
                            },
                            child: Container(
                              width: 72,
                              height: 28,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Transaksi',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 91, 102, 113)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('promo');
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
                                  'Promo',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 91, 102, 113)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
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
                          print('tiba');
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
                                                      CrossAxisAlignment.start,
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
                                                          BorderRadius.circular(
                                                              4)),
                                                  child: Text(
                                                    'Berhasil',
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
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
                                                          BorderRadius.circular(
                                                              4)),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
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
                                                      CrossAxisAlignment.start,
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
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('tiba');
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
                                                      CrossAxisAlignment.start,
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
                                                          BorderRadius.circular(
                                                              4)),
                                                  child: Text(
                                                    'Discount',
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
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
                                                          BorderRadius.circular(
                                                              4)),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Rp 100.000',
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
                                                      'Rp 250.000',
                                                      style: GoogleFonts.plusJakartaSans(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  23,
                                                                  25,
                                                                  28),
                                                          decorationThickness:
                                                              2,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255, 23, 25, 28)),
                                                    ),
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
    );
  }
}
