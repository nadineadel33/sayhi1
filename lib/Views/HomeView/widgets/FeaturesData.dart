import 'package:flutter/material.dart';

/// **First Column of Feature Cards**
class FeaturesDataFirstColumn extends StatelessWidget {
  const FeaturesDataFirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeatureCard(
          title: 'Accurate Image Analysis',
          subTitle:
          'Uses advanced AI to analyze images with high accuracy and extract the appropriate code.',
          image: 'assets/icons/accuracy.png',
        ),
        FeatureCard(
          title: 'Data Security',
          subTitle:
          'Protects user data and images, ensuring they are not used for unauthorized purposes.',
          image: 'assets/icons/cloud.png',
        ),
      ],
    );
  }
}

/// **Second Column of Feature Cards**
class FeaturesDataSecondColumn extends StatelessWidget {
  const FeaturesDataSecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeatureCard(
          title: 'Instant Code Generation',
          subTitle:
          'Speed in processing images and generating code in a few seconds.',
          image: 'assets/icons/code.png',
        ),
        FeatureCard(
          title: 'Save and Share Codes',
          subTitle:
          'Easily save and share extracted codes via email or social media.',
          image: 'assets/icons/save.png',
        ),
      ],
    );
  }
}

/// **Re-usable Feature Card with Animation**
class FeatureCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String image;

  const FeatureCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  @override
  _FeatureCardState createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [
            BoxShadow(
              color: Colors.blue.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ]
              : [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.image, width: 40),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.subTitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
