import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/registration/login.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help & Support'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Settings',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.inventory_rounded),
                title: const Text('Invoice Settings'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.inventory_2_outlined),
                title: const Text('Bills Settings'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.attach_money_rounded),
                title: const Text('Credit Note Settings'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.money_off_csred_rounded),
                title: const Text('Debit Note Setting'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Account Settings'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            // Container(
            //   color: Colors.white,
            //   child: ListTile(
            //     leading:  const Icon(Icons.password),
            //     title: const Text('Change Password'),
            //     onTap: () {
            //       Get.toNamed(Routes.changePassword);
            //     },
            //     trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            //   ),
            // ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.manage_accounts),
                title: const Text('Manage Users'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Other',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.restore),
                title: const Text('Recover Deleted Invoices'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Rate App on Play Store'),
                onTap: () {
                  // Handle Help & Support option
                },
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            const SizedBox(height: 2),
            // Container(
            //   color: Colors.white,
            //   child: ListTile(
            //     leading:  const Icon(Icons.info),
            //     title: const Text('Help Center'),
            //     onTap: () {
            //       Get.toNamed(Routes.help);
            //     },
            //     trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            //   ),
            // ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                onTap: () {},
                trailing: Switch(value: true, onChanged: (value) {}),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
