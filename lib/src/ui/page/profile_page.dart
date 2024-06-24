import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/settings_local.dart';
import 'package:lalafo_flutter/src/ui/details/my_content.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.05, left: screenSize.width * 0.06),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Boo.jpg'),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.only(top: screenSize.height * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         AppText.edit,
                           style: MyTextStyles.profile(screenSize),
                        ),
                        SizedBox(height: screenSize.height * 0.002),
                        Text(
                        AppText.profile,
                         style: MyTextStyles.eprofile(screenSize), 
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.13),
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
            SizedBox(height: screenSize.height * 0.05),
            Center(
              child: Container(
                height: screenSize.height * 0.22,
                width: screenSize.width * 0.85,
                padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.03),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenSize.width * 0.044),
                  child: Image.asset(
                    "assets/images/Poster.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            MyContent(),
          ],
        ),
      ),
    );
  }
}
