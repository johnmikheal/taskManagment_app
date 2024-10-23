import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTab extends StatefulWidget {
   SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? selectedTheme = 'Light' ;
  String? selectedLanguage = 'English' ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.labelSmall),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 16),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Theme.of(context).dividerColor,width: 2)
            ),
            child: Row(//wrap text مع ال row // علشان احط drop down
              children: [
                Text(selectedTheme?? '',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor)),
                Spacer(),// علشان يبقي ال drop في اخر ال width
                DropdownButton<String>(
                  style: GoogleFonts.poppins(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400 ,),
                  items: <String>['Light','Dark'].map((String value) {
                    selectedTheme = value;
                    return DropdownMenuItem<String>(
                      value: selectedTheme,// بتحدد ال selected
                      child: Text(selectedTheme?? ''), //بترسم ال selected
                    );
                  }).toList(),
                  onChanged: (newTheme) { //click item
                    selectedTheme = newTheme ;
                    setState(() {

                    });
                  },
                )
              ],

            ),
          ),


          SizedBox(height: 12,),


          Text('Language', style: Theme.of(context).textTheme.labelSmall),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 16),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).dividerColor,width: 2)
            ),
            child: Row(//wrap text مع ال row // علشان احط drop down
              children: [
                Text(selectedLanguage?? '',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor)),
                Spacer(),// علشان يبقي ال drop في اخر ال width
                DropdownButton<String>(
                  style: GoogleFonts.poppins(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400 ,),
                  items: <String>['English','Arabic'].map((String value) {
                    selectedLanguage = value;
                    return DropdownMenuItem<String>(
                      value: selectedLanguage,// بتحدد ال selected
                      child: Text(selectedLanguage?? ''), //بترسم ال selected
                    );
                  }).toList(),
                  onChanged: (newLanguage) { //click item
                    selectedLanguage = newLanguage ;
                    setState(() {

                    });
                  },
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
