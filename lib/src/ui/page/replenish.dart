import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/app/utils/my_switch.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/my_naviget_container.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class Replenish extends StatefulWidget {
  const Replenish({super.key});

  @override
  _ReplenishState createState() => _ReplenishState();
}

class _ReplenishState extends State<Replenish> {
  List<bool> isSelectedList =
      List<bool>.generate(manytext.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgwhiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.walletTitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 28,
              color: AppColors.greyColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 360,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 25),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.orange,
                        radius: 19,
                        child: const Icon(
                          Icons.account_balance_wallet_rounded,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             AppText.balanceWallet,
                              style: MyTextStyles.wallet1,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:  AppText.currencySymbol,
                                    style: MyTextStyles.wallet2,
                                  ),
                                  TextSpan(
                                    text:  AppText.currencyCode,
                                    style: MyTextStyles.wallet3,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.card_giftcard_outlined,
                  color: AppColors.greyColor,
                  size: 30,
                ),
                const SizedBox(width: 8), // Space between icon and text
                Text(
                  AppText.promoCodeActivation,
                  style: MyTextStyles.wallet4,
                ),
                const SizedBox(width: 120),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.greyColor,
                  size: 18,
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
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: manytext.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        manytext[index],
                        style: MyTextStyles.wallet5,
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelectedList[index] = !isSelectedList[index];
                          });
                        },
                        child: Icon(
                          isSelectedList[index]
                              ? Icons.circle
                              : Icons.circle_outlined,
                          size: 17,
                          color: AppColors.green,
                        ),
                      ),
                      onTap: () {},
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
      bottomNavigationBar: BottomAppBar(
        height: 180, // Увеличенная высота BottomAppBar
        elevation: 10,
        color: AppColors.whiteColor,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  AppText.autoReplenish,
                  style: MyTextStyles.wallet6,
                ),
                const SizedBox(width: 30),
                const Icon(
                  Icons.help,
                  color: AppColors.greyColor,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 260,
              ),
              child: MySwitch(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            const SizedBox(height: 10),
            const MyNavigetContainer(),
          ],
        ),
      ),
    );
  }
}
