import 'package:flutter/material.dart';

// ---------- Shared styles & helpers ----------
const Color primaryColor = Color(0xFF0E8CA4); // teal-ish

class RegAlmsar extends StatefulWidget {
  RegAlmsar({super.key});

  @override
  State<RegAlmsar> createState() {
    return _LoginAlmsar();
  }
}

class _LoginAlmsar extends State<RegAlmsar> {
  bool passeye = true;
  bool checkvalue = false;

  Widget customContainer({
    required TextInputType inputType,
    required String hintText,
    required IconData icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        cursorHeight: 20,
        keyboardType: inputType,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
          border: InputBorder.none,
          suffixIconColor: const Color.fromARGB(255, 235, 20, 145),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          suffixIcon: Icon(icon, size: 22),

          contentPadding: EdgeInsets.symmetric(vertical: 4), // labelStyle:
        ),
      ),
    );
  }

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
                top: 260,
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
                      customContainer(
                        inputType: TextInputType.text,
                        hintText: "الاسم الكامل",
                        icon: Icons.person_pin,
                      ),
                      customContainer(
                        inputType: TextInputType.emailAddress,
                        hintText: "البريد الإلكتروني",
                        icon: Icons.mail,
                      ),
                      customContainer(
                        inputType: TextInputType.phone,
                        hintText: "رقم الموبايل مع رمز الدولة بدون (+)",
                        icon: Icons.phone_in_talk_rounded,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
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
                            suffixIconColor: const Color.fromARGB(
                              255,
                              235,
                              20,
                              145,
                            ),
                            prefixIconColor: const Color.fromARGB(
                              255,
                              235,
                              20,
                              145,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            suffixIcon: Icon(Icons.lock_sharp, size: 22),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 2,
                            ), // labelStyle:
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الشروط والاحكام",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            " اوافق علي",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Checkbox(
                            value: checkvalue,
                            onChanged: (value) {
                              checkvalue = value!;
                              setState(() {});
                            },
                            checkColor: Colors.black,
                            fillColor: WidgetStatePropertyAll(Colors.white),
                          ),
                        ],
                      ),

                      ElevatedButton(
                        onPressed:
                            () => Navigator.pushNamed(context, 'otpalmsar'),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'إنشاء حساب',
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
                                  () => Navigator.pushNamed(
                                    context,
                                    "loginalmsar",
                                  ),
                              child: const Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "لديك حساب؟",
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
