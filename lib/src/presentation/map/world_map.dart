import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/a_%20country.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class WorldMap extends StatefulWidget {
  const WorldMap({super.key});

  @override
  State<WorldMap> createState() => _WorldMapState();
}

class _WorldMapState extends State<WorldMap> {
  String searchText = '';

  void updateSearch(String text) {
    setState(() {
      searchText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredList = mapTextList
        .where((item) => item.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135),
        child: AppBar(
          centerTitle: true,
          toolbarHeight: 71,
          backgroundColor: AppColors.bgwhiteColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 25,
              color: AppColors.lolgreyColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 40, left: 65, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextField(
                        onChanged: updateSearch,
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
                          hintStyle: MyTextStyles.searshstl,
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ACountry(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: AppColors.green),
                  const SizedBox(width: 10),
                  Text(AppText.wholeCountry, style: MyTextStyles.country),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColors.lolgreyColor),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: filteredList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(filteredList[index],
                            style: MyTextStyles.wallet5),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(color: AppColors.dvgreyColor),
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
