import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key,  this.isSelected = false, required this.text});
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isSelected?Color(0xFFFBD13B):Colors.transparent,
                      ),
                      child: Text(text),
                      ),
                  );
  }
}