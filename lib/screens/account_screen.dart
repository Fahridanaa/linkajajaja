import 'package:flutter/material.dart';
import '../widgets/account_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 243),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 52.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fahridana Ahmad Rayyansyah',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '+62 812 3456 7890',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                AssetImage('assets/images/profilee.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 18.0,
                              height: 18.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(
                    title: 'Account Type',
                    value: 'FULL SERVICE',
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Account Settings'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'LinkAja Syariah', value: 'Not Active'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Payment Method'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(
                    title: 'Email',
                    value: 'fahridanaaa@gmail.com',
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Security Question', value: 'Set'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'PIN Settings'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Language', value: 'English'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(title: 'Terms of Service'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Privacy Policy'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Help Center'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Tambahkan aksi untuk tombol Keluar di sini
                      print('Keluar tapped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Keluar',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'LinkAja v.4.37.1',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
