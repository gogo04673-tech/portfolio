import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TestimonialSkeleton extends StatelessWidget {
  const TestimonialSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withValues(alpha: .08),
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Bone.text(width: 500),
          SizedBox(height: 8),
          Bone.text(width: 500),
          SizedBox(height: 8),
          Bone.text(width: 500),
          SizedBox(height: 8),
          Bone.text(width: 250),
          SizedBox(height: 24),
          Row(
            children: [
              Bone.circle(size: 40),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bone.text(width: 100),
                  SizedBox(height: 8),
                  Bone.text(width: 120),
                ],
              ),

              Spacer(),
              Bone.icon(size: 40),
            ],
          ),
        ],
      ),
    );
  }
}
