import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/settings_local.dart';
import 'package:lalafo_flutter/src/ui/details/my_content.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Boo.jpg'),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "j54772264",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.blakColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "редактировать профиль",
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.blakColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 45),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.whiteColor,
                    child: Icon(Icons.edit),
                    // onTap: () {
                    //   // Navigation logic for edit profile
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => EditProfilePage(),
                    //     ),
                    //   );
                    // },
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for settings
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingsLocal(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.whiteColor,
                      child: Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Container(
                height: 220,
                width: 340,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/Poster.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
           MyContent(),
          ],
        ),
      ),
    );
  }
}
