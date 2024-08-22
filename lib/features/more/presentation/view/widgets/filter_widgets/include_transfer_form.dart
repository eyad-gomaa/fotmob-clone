import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IncludeTransferForm extends StatefulWidget {
  const IncludeTransferForm({super.key});

  @override
  State<IncludeTransferForm> createState() => _IncludeTransferFormState();
}
class _IncludeTransferFormState extends State<IncludeTransferForm> {
  String _transferTime = "6";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        const Text(
          "Include transfers from",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        RadioListTile(
          contentPadding: const EdgeInsets.all(0),
          value: '3',
          groupValue: _transferTime,
          onChanged: (value) {
            setState(() {
              _transferTime = value!;
            });
          },
          title: const Text('3 Months Ago'),
        ),
        const Divider(
          height: 0,
          thickness: 0.2,
        ),
        RadioListTile(
          contentPadding: const EdgeInsets.all(0),
          value: '6',
          groupValue: _transferTime,
          onChanged: (value) {
            setState(() {
              _transferTime = value!;
            });
          },
          title: const Text('6 Months Ago'),
        ),
        const Divider(
          height: 0,
          thickness: 0.2,
        ),
        RadioListTile(
          contentPadding: const EdgeInsets.all(0),
          value: '12',
          groupValue: _transferTime,
          onChanged: (value) {
            setState(() {
              _transferTime = value!;
            });
          },
          title: const Text('12 Months Ago'),
        ),
        const Divider(
          height: 0,
          thickness: 0.2,
        ),
        RadioListTile(
          contentPadding: const EdgeInsets.all(0),
          value: '1 year',
          groupValue: _transferTime,
          onChanged: (value) {
            setState(() {
              _transferTime = value!;
            });
          },
          title: const Text('1 years Ago'),
        ),
        const Divider(
          height: 0,
          thickness: 0.2,
        ),
      ],
    );
  }
}