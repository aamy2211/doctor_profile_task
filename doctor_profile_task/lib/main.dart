import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: DoctorProfile(),
      debugShowCheckedModeBanner: false,
    ));

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B5ED7),
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
        title: const Text("Doctor Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column( // شلنا الـ ScrollView عشان نثبت العناصر
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // الهيدر
              Row(
                children: [
                  CircleAvatar(
                    radius: screenWidth * 0.11, // صغرنا الحجم شوية عشان يوفر مساحة
                    backgroundImage: const AssetImage('assets/doctor.png'),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Dr. Ahmed Gaafar",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2B5ED7))),
                        const Text("Eye Special", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 18),
                            Text(" 3", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            _iconBox(Icons.phone),
                            const SizedBox(width: 10),
                            _iconBox(Icons.videocam),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 1), // مسافة مرنة بتتحكم في الفراغ
              
              const Text("About", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const Text(
                "Professor of Eye Special - Former Head of Department of Eye Special, Cairo University",
                style: TextStyle(color: Colors.black54, fontSize: 14, height: 1.3),
              ),
              
              const Spacer(flex: 1),

              _infoCard([
                _tile(Icons.local_hospital, "Cleopatra Hospital"),
                _tile(Icons.access_time, "10 - 19"),
                _tile(Icons.location_on, "2 Gamaa Street, Giza"),
              ]),

              const Divider(height: 25, thickness: 1),

              const Text("Contact Info", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              _infoCard([
                _tile(Icons.email, "dr@6.com"),
                _tile(Icons.phone_android, "01032564823"),
                _tile(Icons.phone_android, "01125466125"),
              ]),

              const Spacer(flex: 2), // م

              _btn("Chat With Dr. Ahmed Gaafar", const Color(0xFF53B156), Icons.chat_bubble_outline),
              const SizedBox(height: 8),
              _btn("Book an Appointment", const Color(0xFF2B5ED7), null),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconBox(IconData icon) => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: const Color(0xFFE8F0FE), borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, color: const Color(0xFF2B5ED7), size: 20),
      );

  Widget _infoCard(List<Widget> children) => Container(
        width: double.infinity,
        decoration: BoxDecoration(color: const Color(0xFFE8F0FE).withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
        child: Column(children: children),
      );

  Widget _tile(IconData icon, String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2), // 
        child: ListTile(
          visualDensity: VisualDensity.compact, //
          leading: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(color: const Color(0xFF2B5ED7), borderRadius: BorderRadius.circular(6)),
            child: Icon(icon, color: Colors.white, size: 18),
          ),
          title: Text(text, style: const TextStyle(fontSize: 14)),
        ),
      );

  Widget _btn(String text, Color color, IconData? icon) => SizedBox(
        width: double.infinity,
        height: 50, // 
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) Icon(icon, color: Colors.white, size: 20),
              if (icon != null) const SizedBox(width: 8),
              Text(text, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      );
}