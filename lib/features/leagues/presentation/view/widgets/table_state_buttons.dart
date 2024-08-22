import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';

class TableStateButtons extends StatefulWidget {
  const TableStateButtons({
    super.key,
  });

  @override
  State<TableStateButtons> createState() => _TableStateButtonsState();
}

class _TableStateButtonsState extends State<TableStateButtons> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: AnimatedToggleSwitch.size(
            selectedIconScale: 1.1,
            animationCurve: Curves.linear,
            animationDuration: const Duration(milliseconds: 200),
            textDirection: TextDirection.rtl,
            current: value,
            height: 40,
            values: const [
              0,
              1,
              2,
            ],
            iconOpacity: 0.2,
            indicatorSize: const Size.fromWidth(100),
            iconList: const [Text("short"), Text("full"), Text("form")],
            borderWidth: 4.0,
            iconAnimationType: AnimationType.onHover,
            style: ToggleStyle(
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            styleBuilder: (i) => ToggleStyle(
                indicatorColor: ColorManager.primaryColor,
                borderRadius: BorderRadius.circular(30)),
            onChanged: (i) => setState(() => value = i),
          )
              // child: Container(
              //   height: 40,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50),
              //     color: ColorManager.darkGreyColor,
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         AnimatedContainer(
              //           duration: const Duration(milliseconds: 500),
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(50),
              //             color: Colors.black,
              //           ),
              //           child: const Padding(
              //             padding: EdgeInsets.symmetric(
              //                 horizontal: 25, vertical: 3),
              //             child: Text("Short"),
              //           ),
              //         ),
              //         const Text("Full"),
              //         const Text("Form"),
              //       ],
              //     ),
              //   ),
              // ),
              ),
          const Gap(10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: "Overall",
                  borderRadius: BorderRadius.circular(20),
                  iconDisabledColor: Theme.of(context).colorScheme.surface,
                  focusColor: Theme.of(context).colorScheme.surface,
                  dropdownColor: Theme.of(context).colorScheme.surface,
                  iconEnabledColor: Theme.of(context).colorScheme.onSurface,
                  style:  TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.onSurface),
                  padding: const EdgeInsets.all(0),
                  items: const [
                    DropdownMenuItem(
                      value: "Overall",
                      child: Text("Overall"),
                    ),
                    DropdownMenuItem(
                      value: "Home",
                      child: Text("Home"),
                    ),
                    DropdownMenuItem(
                      value: "Away",
                      child: Text("Away"),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    // BlocProvider.of<TableStateCubit>(context).changeTableState(state: value!);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
