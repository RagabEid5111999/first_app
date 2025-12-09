import 'package:flutter/material.dart';

// ---------- Shared styles & helpers ----------
const Color primaryColor = Color(0xFF0E8CA4); // teal-ish

class LoginAlmsar extends StatefulWidget {
  LoginAlmsar({super.key});

  @override
  State<LoginAlmsar> createState() {
    return _LoginAlmsar();
  }
}

class _LoginAlmsar extends State<LoginAlmsar> {
  bool passeye = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: primaryColor)]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 79, 77, 55),
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: '',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    Container(
                      height: 675,
                      width: 600,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('lib/images/splash2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                top: 270,
                left: 0,
                right: 0,
                child: Container(
                  height: 210,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 8),
                      const Text(
                        'أهلاً بك نحن سعداء بعودتك',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "من فضلك قوم بتسجيل الدخول",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          cursorHeight: 20,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: "رقم الهاتف",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            suffixIconColor: primaryColor,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            suffixIcon: Icon(
                              Icons.photo_camera_front_outlined,
                              size: 22,
                            ),

                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4,
                            ), // labelStyle:
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          obscureText: passeye,
                          cursorHeight: 20,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              onPressed: () {
                                passeye ? passeye = false : passeye = true;
                                setState(() {});
                              },
                              icon:
                                  passeye
                                      ? Icon(Icons.remove_red_eye)
                                      : Icon(Icons.remove_red_eye_outlined),
                            ),
                            hintText: "كلمة المرور",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            suffixIconColor: primaryColor,
                            prefixIconColor: primaryColor,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            suffixIcon: Icon(Icons.lock_sharp, size: 22),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4,
                            ), // labelStyle:
                          ),
                        ),
                      ),
                      // const SizedBox(height: 8),
                      Container(
                        margin: EdgeInsets.only(right: 230, top: 8, bottom: 8),
                        child: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showMaterialBanner(
                              MaterialBanner(
                                content: Text("Please Try Again"),
                                leading: Icon(Icons.rocket),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).hideCurrentMaterialBanner();
                                    },
                                    child: Text("Done"),
                                  ),
                                ],
                              ),
                            );
                            // SnackBar(content: Text("Please Try Again"));
                            setState(() {});
                          },
                          child: const Text(
                            "هل نسيت كلمة المرور؟",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                        style: ElevatedButton.styleFrom(
                          // padding: EdgeInsets.symmetric(horizontal: 100),
                          // maximumSize: Size.fromWidth(210),
                          fixedSize: Size.fromWidth(260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed:
                                  () =>
                                      Navigator.pushNamed(context, "regalmsar"),
                              child: const Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "ليس لديك حساب؟",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
