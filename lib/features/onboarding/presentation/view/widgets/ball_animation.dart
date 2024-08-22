import 'package:flutter/material.dart';

class BallAnimation extends StatefulWidget {
  const BallAnimation({super.key});

  @override
  State<BallAnimation> createState() => _BallAnimationState();
}

class _BallAnimationState extends State<BallAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _positionAnimation = TweenSequence<Offset>(
      [
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: const Offset(-2.5, 1.0),
            end: const Offset(1.0, 0),
          ),
          weight: 2,
        ),
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: const Offset(1.0, 0),
            end: const Offset(-2.5, -2.0),
          ),
          weight: 2,
        ),
      ],
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 2 * 3.1416,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: _positionAnimation.value *
                MediaQuery.of(context).size.width /
                2,
            child: Transform.rotate(
              angle: _rotationAnimation.value,
              child: child,
            ),
          );
        },
        child: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            'assets/images/ball-png.png',
          ),
        ),
      ),
    );
  }
}
