import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class ACountry extends StatefulWidget {
  const ACountry({super.key});

  @override
  _ACountryState createState() => _ACountryState();
}

class _ACountryState extends State<ACountry> {
  bool isCitiesSelected = true;

  void toggleSelection() {
    setState(() {
      isCitiesSelected = !isCitiesSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: toggleSelection,
        child: Container(
          width: 360,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.green),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        isCitiesSelected ? AppColors.green : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      AppText.cities,
                      style: TextStyle(
                        color:
                            isCitiesSelected ? Colors.white : AppColors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        isCitiesSelected ? Colors.transparent : AppColors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      AppText.map,
                      style: TextStyle(
                        color:
                            isCitiesSelected ? AppColors.green : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
