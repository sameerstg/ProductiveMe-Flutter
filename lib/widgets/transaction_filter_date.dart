import 'package:flutter/material.dart';

class TransactionFilter extends StatefulWidget {
  const TransactionFilter({super.key});

  @override
  State<TransactionFilter> createState() => _TransactionFilterState();
}

class _TransactionFilterState extends State<TransactionFilter> {
  String dropdownValue = 'Monthly';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.arrow_back_ios_sharp),
            SizedBox(width: 10),
            Text("8/July/2002", textAlign: TextAlign.center),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.arrow_forward_ios_sharp),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Row(
          children: [
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(9),
                underline: Container(
                  height: 0,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Monthly', 'Yearly', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ],
        )
      ],
    );
  }
}
