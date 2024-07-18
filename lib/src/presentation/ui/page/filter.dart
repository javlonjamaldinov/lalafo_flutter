import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/categories/my_categories.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/my_naviget_container.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/my_price.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<bool> isSelectedList =
      List<bool>.generate(sorting.length, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgwhiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.filter,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 35,
            color: AppColors.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              AppText.clear,
              style: MyTextStyles.searshText,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.whiteColor),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            hintText: "Поиск...",
                            hintStyle:
                                const TextStyle(color: AppColors.lolgreyColor),
                            prefixIcon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 11),
                    // Удален GestureDetector и его дочерние элементы
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                AppText.mycategory,
                style: MyTextStyles.mycategories,
              ),
            ),
            const MyCategories(),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                AppText.sort,
                style: MyTextStyles.mycategories,
              ),
            ),
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
                  itemCount: sorting.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        sorting[index],
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
            const MyPrice(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        elevation: 10,
        color: AppColors.whiteColor,
        child: Column(
          children: [
            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  AppText.replenish,
                  style: MyTextStyles.content,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
