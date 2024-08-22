import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/transfer_center_view_body.dart';
import 'package:gap/gap.dart';

class TransferCenterView extends StatelessWidget {
  const TransferCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(FontAwesomeIcons.bell),
          Gap(20),
        ],
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.swap_vertical_circle_outlined),
            Text(
              "TRANSFER",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
            Text(
              "CENTER",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
      body: const TransferCenterViewBody(),
    );
  }
}
