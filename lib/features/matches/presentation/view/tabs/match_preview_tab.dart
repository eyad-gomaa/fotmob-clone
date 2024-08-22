import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:gap/gap.dart';

class MatchPreviewTab extends StatefulWidget {
  const MatchPreviewTab({super.key});

  @override
  State<MatchPreviewTab> createState() => _MatchPreviewTabState();
}

class _MatchPreviewTabState extends State<MatchPreviewTab> {
  bool showText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          Container(
            decoration: defaultContainerDecoration(context),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Who will win?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "Total votes: 756",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showText = !showText;
                        setState(() {});
                      },
                      child: AnimatedPrecentageButton(showText: showText),
                    ),
                    GestureDetector(
                      onTap: () {
                        showText = !showText;
                        setState(() {});
                      },
                      child: AnimatedPrecentageButton(showText: showText),
                    ),
                    GestureDetector(
                      onTap: () {
                        showText = !showText;
                        setState(() {});
                      },
                      child: AnimatedPrecentageButton(showText: showText),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(10),
          Container(
            decoration: defaultContainerDecoration(context),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Insights"),
                const Divider(
                  thickness: 0.1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png")),
                    const Gap(15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceBright,
                              borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Lorem ipsum dolor sit amet., consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedPrecentageButton extends StatefulWidget {
  const AnimatedPrecentageButton({
    super.key,
    required this.showText,
  });

  final bool showText;

  @override
  State<AnimatedPrecentageButton> createState() =>
      _AnimatedPrecentageButtonState();
}

class _AnimatedPrecentageButtonState extends State<AnimatedPrecentageButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      constraints: const BoxConstraints(
        minWidth: 90,
      ),
      decoration: BoxDecoration(
          border: widget.showText
              ? Border.all(color: Colors.transparent)
              : Border.all(color: Theme.of(context).colorScheme.onSurface),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25, child: Image.asset("assets/images/ahly.png")),
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              child: _showText(showText: widget.showText, text: "23%"))
        ],
      ),
    );
  }
}

Widget _showText({required bool showText, required String text}) {
  if (showText) {
    return Text(text);
  } else {
    return const SizedBox.shrink();
  }
}
