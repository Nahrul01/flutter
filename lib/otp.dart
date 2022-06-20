// ignore_for_file: deprecated_member_use

import 'package:dicoding/utama.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({
    Key? key,
  }) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(100),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(height: 101),
              const Text(
                'Kode OTP telah terkirim',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Segoe UI,Regular',
                  color: Color(0xFF000000),
                ),
              ),

              const SizedBox(height: 101),
              const Text(
                'Masukan Kode',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Segoe UI,Regular',
                  color: Color(0xFF000000),
                ),
              ),

              //OTP
              const SizedBox(
                height: 75,
              ),
              Pinput(
                // ignore: avoid_print
                defaultPinTheme: defaultPinTheme,
                // ignore: avoid_print
                onCompleted: (pin) => print(pin),
                length: 6,
              ),

              const SizedBox(height: 48),
              const Text(
                'Anda akan menerima sms kode OTP pada nomor yang telah dimasukkan',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Segoe UI,Regular',
                  color: Color(0xFF000000),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),
              const Text(
                '59',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Segoe UI,Regular',
                  color: Color(0xFF000000),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: ButtonTheme(
                  minWidth: 300,
                  height: 50,
                  child: RaisedButton(
                    color: const Color.fromARGB(255, 6, 148, 158),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Utama()));
                    },
                    child: const Text(
                      'Verifikasi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
