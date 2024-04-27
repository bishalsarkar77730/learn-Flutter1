import 'package:flutter/material.dart';
import '../../Utils/image_path.dart';
import 'login_Screen.dart';

class SignuploginScreen extends StatelessWidget {
  const SignuploginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.logo),

            const SizedBox(height: 20.0),

            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10.0),

            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: const Text(
                'Please select an option',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10.0),

            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  backgroundColor: const Color(0xFF5D8AD3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Sign-up for User'),
              ),
            ),

            const SizedBox(height: 10.0),

            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  backgroundColor: const Color(0xFF5D8AD3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Sign-up for Buisness'),
              ),
            ),

            const SizedBox(height: 10.0),

            SizedBox(
              width: 0.9 * MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  backgroundColor: const Color(0xFF5D8AD3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Log-in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
