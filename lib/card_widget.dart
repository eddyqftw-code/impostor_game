import 'package:flutter/material.dart';
import 'dart:math';

class CardWidget extends StatefulWidget {
  final String frontText;
  final String backText;
  final Color frontColor;
  final Color backColor;

  const CardWidget({
    super.key,
    required this.frontText,
    required this.backText,
    this.frontColor = Colors.deepPurple,
    this.backColor = Colors.red,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  void flipCard() {
    setState(() => _showFront = !_showFront);
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flipCard,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double angle = _controller.value * pi;
          if (!_showFront) angle += pi;
          return Transform(
            transform: Matrix4.rotationY(angle),
            alignment: Alignment.center,
            child: Container(
              width: 260,
              height: 160,
              decoration: BoxDecoration(
                color: _showFront ? widget.frontColor : widget.backColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                _showFront ? widget.frontText : widget.backText,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
