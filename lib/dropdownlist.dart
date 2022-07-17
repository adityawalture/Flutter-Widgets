import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'Apple';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Page'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            color: HexColor('#beebed'),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              dropdownColor: Colors.grey[300],
              isExpanded: true,
              value: selectedvalue,
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_downward_sharp),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedvalue = newValue!;
                });
              },
              items: <String>[
                'Orange',
                'Banana',
                'Mango',
                'Grapes',
                'Cherry',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
