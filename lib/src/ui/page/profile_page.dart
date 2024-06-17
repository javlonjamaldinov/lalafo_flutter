import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/settings_local.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

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
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Boo.jpg'),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
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
                  SizedBox(width: 45),
                  CircleAvatar(
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
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for settings
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SettingsLocal(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.whiteColor,
                      child: Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}