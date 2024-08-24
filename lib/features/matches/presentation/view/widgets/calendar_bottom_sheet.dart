import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:go_router/go_router.dart';

class CalendarBottomSheet extends StatelessWidget {
  const CalendarBottomSheet({
    super.key,
    required TabController controller,
  }) : _controller = controller;

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 17,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  "Close",
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            calendarViewMode: CalendarDatePicker2Mode.scroll,
            scrollViewConstraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height / 2),
          ),
          value: [
            DateTime.now(),
          ],
          onValueChanged: (value) {
            context.pop();
            _controller.animateTo(2);
          },
        ),
      ],
    );
  }
}
