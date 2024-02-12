import 'package:flutter/material.dart';
import 'package:islami_c10_monday/models/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.title}"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height *.6, //  400
            padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
            alignment: Alignment.center,
            margin: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  model.content[index],
                  textAlign: TextAlign.center,
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
