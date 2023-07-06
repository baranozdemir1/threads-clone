import 'package:flutter/material.dart';

class ChangeAccountScreen extends StatelessWidget {
  const ChangeAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Row(
            children: [
              SizedBox(width: 3),
              Icon(Icons.arrow_back_ios_new_rounded),
              SizedBox(width: 0),
              Text('Geri'),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Column(
            children: [
              Text(
                'Hesap değiştir',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 50,
                  ),
                  child: Text(
                    'Aradığın hesabı burada görmüyorsan önce Instagram\'a giriş yapman gerekir.',
                    style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 25,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:
                                index == 0 ? Radius.circular(25) : Radius.zero,
                            topRight:
                                index == 0 ? Radius.circular(25) : Radius.zero,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        disabledBackgroundColor: Colors.transparent,
                        foregroundColor: Color.fromRGBO(150, 150, 150, 1),
                        surfaceTintColor: Colors.transparent,
                        padding: const EdgeInsets.all(0),
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Color.fromRGBO(219, 219, 219, 1),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/images/profile-img.jpg',
                                    ),
                                    radius: 24,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'baranozdemir1',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Baran Özdemir',
                                      style: TextStyle(
                                        color: Color.fromRGBO(158, 158, 158, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const Divider(
                      height: 0,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                    itemCount: 5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 165),
          Text(
            'Başka bir Instagram hesabına giriş yap',
            style: TextStyle(
              color: Color.fromRGBO(165, 165, 165, 1),
            ),
          ),
        ],
      ),
    );
  }
}
