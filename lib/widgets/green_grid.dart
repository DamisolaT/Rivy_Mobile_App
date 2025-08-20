

import 'package:flutter/material.dart';

class GreenGridWidget extends StatelessWidget {
  const GreenGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF2D5A4A), 
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF00E676), // Bright green
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF00E676), // Bright green
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF00E676), // Bright green
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF00E676), // Bright green
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}



