import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lalafo_flutter/src/ui/categories/bloc/price_bloc.dart';
import 'package:lalafo_flutter/src/ui/categories/bloc/price_event.dart';
import 'package:lalafo_flutter/src/ui/categories/bloc/price_state.dart';
import 'package:lalafo_flutter/src/ui/details/numericInput_row.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class MyPrice extends StatelessWidget {
  const MyPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CurrencySelectionRow(),
        SizedBox(height: 20),
        NumericInputRow(),
      ],
    );
  }
}

class CurrencySelectionRow extends StatelessWidget {
  const CurrencySelectionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (_) => PriceBloc(),
      child: BlocBuilder<PriceBloc, PriceState>(
        builder: (context, state) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text(
                  AppText.price,
                  style: MyTextStyles.mycategories,
                ),
              ),
              SizedBox(width: screenWidth * 0.42),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    context.read<PriceBloc>().add(SelectKgs());
                  },
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: state.isKgsSelected
                            ? AppColors.green
                            : AppColors.lolgreyColor,
                      ),
                      color: AppColors.whitegrColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        AppText.kgs,
                        style: MyTextStyles.wallet3,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    context.read<PriceBloc>().add(SelectUsd());
                  },
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: !state.isKgsSelected
                            ? AppColors.green
                            : AppColors.lolgreyColor,
                      ),
                      color: AppColors.whitegrColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        AppText.usd,
                        style: MyTextStyles.wallet3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
