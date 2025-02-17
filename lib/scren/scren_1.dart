import 'package:flutter/material.dart';

class Scren1 extends StatefulWidget {
  Scren1({super.key});

  @override
  State<Scren1> createState() => _Scren1State();
}

class _Scren1State extends State<Scren1> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text(" حسابي", style: TextStyle(fontSize: 24))),
    Center(child: Text(" الإشعارات", style: TextStyle(fontSize: 24))),
    Center(child: Text(" المواعيد", style: TextStyle(fontSize: 24))),
    Center(child: Text(" الرئيسية", style: TextStyle(fontSize: 24))),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.chevron_right)],
            ),
            Text(
              'الملف الشخصي',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xff059FB3),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Image.asset(
              'images/image.png',
              width: 124,
              height: 124,
            ),
            Text(
              'يارا الحلبي',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            Center(
              child: Row(
                children: [
                  Icon(Icons.chevron_left),
                  SizedBox(
                    width: 180,
                  ),
                  Text('تعديل المعلومات'),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/img.png',
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                children: [
                  Icon(Icons.chevron_left),
                  SizedBox(
                    width: 253,
                  ),
                  Text('اللغة'),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/img1.png',
                    width: 20,
                    height: 20,
                  )
                  // Icon(Icons.language),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                  ),
                  SizedBox(
                    width: 223,
                  ),
                  Text('الاعدادات '),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/img2.png',
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 346,
              height: 57,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red, width: 2),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.chevron_left, color: Colors.red),
                  SizedBox(width: 150),
                  Text("تسجيل الخروج",
                      style: TextStyle(fontSize: 16, color: Colors.red)),
                  SizedBox(width: 8),
                  Icon(Icons.exit_to_app, color: Colors.red),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/img6.png',
                width: 20,
                height: 20,
              ),
              label: "حسابي",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/img5.png',
                width: 20,
                height: 20,
              ),
              label: "الإشعارات",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/img3.png',
                width: 20,
                height: 20,
              ),
              // icon: Icon(Icons.calendar_today),
              label: "المواعيد",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/img4.png',
                width: 20,
                height: 20,
              ),
              label: "الرئيسية",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
