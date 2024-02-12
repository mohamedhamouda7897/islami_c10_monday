import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_monday/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetailsScreen";

   SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses=[];


  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    if(verses.isEmpty){
      loadFile(model.index);
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            model.name,
          ),
        ),
        body: Card(
          margin: const EdgeInsets.all(12),
          elevation: 12,
          color: Colors.white.withOpacity(.7),
          shape: OutlineInputBorder(

            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.transparent)
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index){
            return Text(verses[index],textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,);
          },
          itemCount: verses.length,),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura =  await rootBundle.loadString("assets/files/${index+1}.txt");
   List<String> lines= sura.split("\n");

   verses =lines;
   print(lines);
   setState(() {

   });

  }
}
