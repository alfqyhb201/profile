import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage(
      {Key? key, required this.primeColor, required this.secondColor})
      : super(key: key);

  final Color primeColor;
  final Color secondColor;

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  late Color _primeColor;
  late Color _secondColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _primeColor = widget.primeColor;
    _secondColor = widget.secondColor;
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset.fromDirection(10.0),
      end: const Offset(0.0, 10.0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 300.0,
        height: 300.0,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150.0),
          gradient: LinearGradient(colors: [
            _primeColor,
            _secondColor,
            // secondaryColor2,
          ]),
          boxShadow: [
            BoxShadow(
              color: _primeColor,
              offset: const Offset(0.0, 2.0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: _secondColor,
              offset: const Offset(5.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Center(
          child: Image.asset('asset/profile.png'),
        ),
      ),
      builder: (context, child) {
        return Transform.translate(
          offset: _animation.value,
          child: child,
        );
      },
    );
  }
}
