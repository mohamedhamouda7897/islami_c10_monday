import 'package:flutter/material.dart';
import 'package:islami_c10_monday/my_theme.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.primaryColor),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "Arabic",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.primaryColor),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "Light",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
        ],
      ),
    );
  }
}
