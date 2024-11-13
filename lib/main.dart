import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Card
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Profile Picture
                          const CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/images/Hajid.jpg'),
                          ),
                          const SizedBox(height: 20),
                          // Name
                          Text(
                            'Hajid Ramadhan',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                          ),
                          const SizedBox(height: 12),
                          // Bio
                          Text(
                            'Haloo Namaku Hajid Alauddin Ramadhan NRP 5026221197. Funfact ku adalah aku Mahasiswa yang juga berbisnis di bidang pengadaan dan videografi.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          // Social Media Links (Hiasan)
                          Column(
                            children: [
                              _buildSocialButton(
                                label: 'Instagram: @hajid_ramadhan',
                              ),
                              const SizedBox(height: 10),
                              _buildSocialButton(
                                label: 'Instagram: @skydrive.drone',
                              ),
                              const SizedBox(height: 10),
                              _buildSocialButton(
                                label: 'LINE ID: hajidramadhan2798',
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
      ),
    );
  }

  // Social Media Button (Hiasan tanpa fungsi)
  Widget _buildSocialButton({required String label}) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blueAccent,
        side: const BorderSide(color: Colors.blueAccent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: const Size(250, 40),
      ),
      onPressed: null, // Tidak ada fungsi, hanya hiasan
      child: Text(
        label,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
