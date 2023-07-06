import 'package:flutter/material.dart';
import 'package:threads_clone/screens/change_account_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/threadsdotnet.png'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 20,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    side: const BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      width: 2,
                    ),
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromRGBO(217, 217, 217, 1),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Instagram ile Giriş Yap',
                            style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1),
                            ),
                          ),
                          Text(
                            'baranozdemir1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/instagram-logo.png',
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ChangeAccountScreen(),
                  ),
                ),
                child: const Text(
                  'Hesap değiştir',
                  style: TextStyle(
                    color: Color.fromRGBO(153, 153, 153, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ],
      ),
    );
  }
}
