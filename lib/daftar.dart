import 'package:flutter/material.dart';
import 'package:olshop/masuk.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  var tlpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Masuk()));
            },
            child: Text(
              'Login',
              style: TextStyle(color: Color.fromARGB(255, 68, 76, 85)),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
          ),
          SizedBox(
            width: 24,
          ),
        ],
      ),
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
                    'Daftar',
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
                    'Selamat datang di dunia gaya kami! Daftar untuk menemukan pengalaman berbelanja yang mantap.',
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
                    height: 18,
                  ),
                  TextFormField(
                    // controller: pwController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        hintText: "Ulangi Password"),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: tlpController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        hintText: "Nomor Telepon"),
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
                              MaterialPageRoute(builder: (context) => Masuk()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 130, 116, 23)),
                        ),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                              color: Color.fromARGB(255, 231, 229, 214)),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
