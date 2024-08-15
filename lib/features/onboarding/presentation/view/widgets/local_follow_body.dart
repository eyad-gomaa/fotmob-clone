import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';

class LocalFollowBody extends StatelessWidget {
  const LocalFollowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => FollowListItem(
                following: index % 2 == 0 ? false : true,
              )),
    );
  }
}

class FollowListItem extends StatelessWidget {
  const FollowListItem({super.key, required this.following});
  final bool following;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.ac_unit_rounded),
                  Gap(10),
                  Text("Real Madrid"),
                ],
              ),
              isFollowing(isFollowing: following)
            ],
          ),
        ),
      ),
    );
  }

  Widget isFollowing({bool isFollowing = true}) {
    if (!isFollowing) {
      return const FollowButton();
    } else {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white)),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
          child: Row(
            children: [
              Text("Following"),
              Gap(10),
              Icon(
                FontAwesomeIcons.userPlus,
                size: 11,
              )
            ],
          ),
        ),
      );
    }
  }
}

class FollowButton extends StatelessWidget {
  const FollowButton({
    super.key,
    this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(color: ColorManager.darkPrimaryColor),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
