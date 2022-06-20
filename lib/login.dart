import 'package:dicoding/otp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 148, 158),
      body: SingleChildScrollView(
        child: SizedBox(height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 100.0),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo.png',
                  width: 300,
                  height: 300,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 300,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: const Text(
                        'Masuk dengan Nomor HP',
                        style: TextStyle(
                          fontFamily: 'Segoe UI:regular',
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 8, 6, 6),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 55,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD4D4D4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                              ),
                            ),
                            child: const Text(
                              '+62',
                              style: TextStyle(
                                fontFamily: 'Segoe UI:regular',
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            width: 300,
                            height: 55,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xFFDFDFDF),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nomor HP',
                                hintStyle: TextStyle(
                                  fontFamily: 'Calibri:regular',
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: const Text(
                        '6 digit OTP akan dikirim ke nomor HP Anda Untuk verifikasi',
                        style: TextStyle(
                          fontFamily: 'Segoe UI:regular',
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Color(0xFF000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 6, 148, 158),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Otp()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 8,
                          ),
                          child: Text(
                            'Login',
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
            ],
          ),
        ),
      ),
    );
  }
}
