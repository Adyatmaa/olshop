import 'dart:io';

import 'package:flutter/material.dart';
import 'package:olshop/daftar.dart';
import 'package:olshop/masuk.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/750x/79/8c/3c/798c3c4612b07594bd4433e4fc195829.jpg'))),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 124,
              ),
              Row(
                children: [
                  Flexible(
                      child: Text(
                    "Temukan gaya Muslim terkini.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color.fromARGB(255, 23, 25, 28)),
                  )),
                  SizedBox(
                    width: 48,
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Flexible(
                      child: Text(
                    "Jelajahi koleksi terpilih kami yang menampilkan tren terbaru dalam fashion islami.",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Color.fromARGB(255, 32, 37, 43)),
                  )),
                  SizedBox(
                    width: 32,
                  )
                ],
              ),
              SizedBox(
                height: 180,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Daftar()));
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: Color.fromARGB(255, 231, 229, 214),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 130, 116, 23)),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 8,
              // ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Masuk()));
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Color.fromARGB(255, 231, 229, 214)),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 45, 51, 57))),
                ),
              ),
            ],
          ),
        ),
        // Image.network("src"),
      ),
    );
  }
}
