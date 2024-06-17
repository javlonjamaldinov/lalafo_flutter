import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/Boo.jpg'),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "j54772264",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Этот текст внизу",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
