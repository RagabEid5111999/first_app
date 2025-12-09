import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

// ---------- Shared styles & helpers ----------
const Color primaryColor = Color(0xFF0E8CA4); // teal-ish

class OTPAlmsar extends StatefulWidget {
  OTPAlmsar({super.key});

  @override
  State<OTPAlmsar> createState() {
    return _LoginAlmsar();
  }
}

class _LoginAlmsar extends State<OTPAlmsar> {
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

                      Text("ccfcdfv"),
                      Text("ccfcdfv"),
                      Text("ccfcdfv"),
                      /*
                      PinCodeTextField(
                        appContext: context,
                        length: 6, // عدد الخانات
                        obscureText: false, // إخفاء الحروف مثل كلمة المرور
                        animationType: AnimationType.fade,

                        keyboardType: TextInputType.number,
                        autoFocus: true, // فتح لوحة المفاتيح تلقائيًا

                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box, // شكل الخانات
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 50,
                          fieldWidth: 45,

                          activeColor: Colors.blue, // عند تفعيل الخانة
                          selectedColor: Colors.orange, // الخانة الحالية
                          inactiveColor: Colors.grey, // الخانات الغير مستخدمة

                          activeFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          inactiveFillColor: Colors.grey.shade200,
                        ),

                        animationDuration: Duration(milliseconds: 300),

                        enableActiveFill: true, // لتفعيل الخلفية للخانة

                        onChanged: (value) {
                          print(value); // كل مرة تتغير قيمة الخانات
                        },

                        onCompleted: (value) {
                          print(
                            "OTP Completed: $value",
                          ); // عند كتابة الكود كاملًا
                        },
                      ),
*/
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
                          'إنشاء حساب',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
