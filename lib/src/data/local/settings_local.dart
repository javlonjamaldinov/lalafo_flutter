import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/components/my_back_buttom.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart'; // Предположим, что здесь находится ваш список settingstext
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class SettingsLocal extends StatelessWidget {
  const SettingsLocal({
    super.key,
  });

  // Список текстов для отображения

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const MyBackButton(),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height * 0.05,
                        left: 90,
                      ),
                      child:  Text(
                        AppText.settings,
                        style:  MyTextStyles.settings,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(),
                  itemCount: settingstext.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        settingstext[index],
                        style: const TextStyle(
                          color: AppColors.blakColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: AppColors.greyColor,
                      ),
                      onTap: () {
                       
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
