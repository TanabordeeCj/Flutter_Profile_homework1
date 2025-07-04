import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
          elevation: 6,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: const AssetImage(
                      'assets/image/profile.jpg',
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Tanabordee Phanpinit",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),

                const SizedBox(height: 8),

                Card(
                  color: Colors.orange[50],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 5,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "นักศึกษาสาขาวิทยาการคอมพิวเตอร์\nคณะศิลปศาสตร์และวิทยาศาสตร์\nมหาวิทยาลัยราชภัฏศรีสะเกษ",
                      style: TextStyle(fontSize: 18, color: Colors.orange[900]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // ตัดส่วนดาวรีวิวออกแล้ว
                const SizedBox(height: 25),

                Card(
                  color: Colors.teal[100],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Column(
                          children: [
                            Icon(Icons.phone, color: Colors.orange, size: 32),
                            SizedBox(height: 8),
                            Text(
                              "Phone",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.email, color: Colors.orange, size: 32),
                            SizedBox(height: 8),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.facebook_outlined,
                              color: Colors.orange,
                              size: 32,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Social",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.teal,
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
      ),
    );
  }
}
