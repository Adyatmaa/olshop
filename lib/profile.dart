import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profiled extends StatefulWidget {
  const Profiled({super.key});

  @override
  State<Profiled> createState() => _ProfiledState();
}

class _ProfiledState extends State<Profiled> {
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
              'Edit Profile',
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
              Row(),
              SizedBox(
                height: 12,
              ),
              CircleAvatar(
                radius: 48,
              ),
              SizedBox(
                height: 8,
              ),
              Text('Ubah foto profil',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 25, 28))),
              SizedBox(
                height: 42,
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
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                        Container(
                          height: 38,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Nama Lengkap',
                              contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 153, 164)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Username',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                        Container(
                          height: 38,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Input Username',
                              contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 153, 164)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'No. Telepon',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                        Container(
                          height: 38,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Input No. Telepon',
                              contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 153, 164)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jenis Kelamin',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                        Container(
                          height: 38,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Input Jenis Kelamin',
                              contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 153, 164)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal Lahir',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 45, 51, 57)),
                        ),
                        Container(
                          height: 38,
                          width: 200,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Input Tanggal Lahir',
                              contentPadding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 153, 164)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 28,
                          width: 82,
                          child: ElevatedButton(
                            onPressed: () {
                              print('batal');
                            },
                            child: Text(
                              'Batal',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 251, 249, 233)),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 160, 143, 28),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 28,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              print('simpan');
                            },
                            child: Text(
                              'Simpan',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 251, 249, 233)),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 59, 140, 24),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
