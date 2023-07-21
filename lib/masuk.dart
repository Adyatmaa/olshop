import 'package:flutter/material.dart';
import 'package:olshop/daftar.dart';
import 'package:olshop/home.dart';

class Masuk extends StatefulWidget {
  const Masuk({super.key});

  @override
  State<Masuk> createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SelectionArea(
            child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  'Masuk',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 23, 25, 28)),
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
                  'Tujuan mode Anda menanti! Masuk untuk menjelajahi dan berbelanja pakaian islami.',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color.fromARGB(255, 45, 51, 57)),
                ))
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18)),
                      hintText: "Email"),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18)),
                      hintText: "Password"),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 45, 51, 57)),
                      ),
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                            color: Color.fromARGB(255, 231, 229, 214)),
                      )),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(child: Text('Belum punya akun? ')),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Daftar()));
                        },
                        child: Text(
                          'Daftar disini',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
