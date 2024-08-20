import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_body.dart';
import 'package:gap/gap.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: ColorManager.darkGreyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: const {
                    0: FixedColumnWidth(130),
                    5: FixedColumnWidth(50),
                  },
                  children: [
                    _tableHeader(),
                    _tableDivider(),
                    _testTableRow(gd: 22),
                    _testTableRow(gd: -10),
                    _testTableRow(gd: 30),
                    _testTableRow(gd: 36),
                    _testTableRow(gd: 65),
                    _testTableRow(gd: -2),
                    _testTableRow(gd: 3),
                    _testTableRow(gd: -12),
                    _testTableRow(gd: 77),
                  ],
                )
              ],
            ),
          )),
    );
  }

  TableRow _testTableRow({required int gd}) {
    return TableRow(
      children: [
        Row(
          children: [
            SizedBox(
              width: 130,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 3,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(3),
                          bottomRight: Radius.circular(3)),
                    ),
                  ),
                  const Gap(5),
                  const Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Gap(5),
                  SizedBox(
                      height: 15,
                      child: Image.asset(
                        "assets/images/ahly.png",
                      )),
                  const Gap(5),
                  const Expanded(
                    child: Text(
                      "Al Ahly Club",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Center(child: Text("56")),
        const Center(child: Text("83")),
        const Center(child: Text("4")),
        const Center(child: Text("38")),
        const Center(child: Text("74-26")),
        Center(
            child: Text(
          gd.toString(),
          style: TextStyle(color: gd > 0 ? Colors.white : Colors.red),
        )),
        const Center(child: Text("35")),
      ],
    );
  }

  TableRow _tableHeader() {
    return const TableRow(children: [
      Padding(
        padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
        child: Text("#"),
      ),
      TableColumnTitle(
        title: 'PL',
      ),
      TableColumnTitle(
        title: 'W',
      ),
      TableColumnTitle(
        title: 'D',
      ),
      TableColumnTitle(
        title: 'L',
      ),
      TableColumnTitle(
        title: '+/-',
      ),
      TableColumnTitle(
        title: 'GD',
      ),
      TableColumnTitle(
        title: 'PTS',
      ),
    ]);
  }

  TableRow _tableDivider() {
    return const TableRow(
      children: [
        Divider(
          thickness: 0.2,
          indent: 10,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
        ),
        Divider(
          thickness: 0.2,
          endIndent: 10,
        ),
      ],
    );
  }
}
