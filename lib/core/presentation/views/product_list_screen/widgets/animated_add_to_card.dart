import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedAddToCartImage extends StatefulWidget {
  final String imageUrl;
  final Offset startPosition;
  final Offset endPosition;
  final Duration duration;
  final VoidCallback onEnd;

  const AnimatedAddToCartImage({
    required this.imageUrl,
    required this.startPosition,
    required this.endPosition,
    required this.duration,
    required this.onEnd,
  });

  @override
  _AnimatedAddToCartImageState createState() => _AnimatedAddToCartImageState();
}

class _AnimatedAddToCartImageState extends State<AnimatedAddToCartImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _position;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _position = Tween<Offset>(
      begin: widget.startPosition,
      end: widget.endPosition,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _scale = Tween<double>(
      begin: 1.0,
      end: 0.2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward().whenComplete(widget.onEnd);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          left: _position.value.dx,
          top: _position.value.dy,
          child: Transform.scale(
            scale: _scale.value,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.sp),
              ),
              child: Image.network(
                widget.imageUrl,
                width: 110.sp,
                height: 110.sp,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
