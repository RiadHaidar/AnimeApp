import 'package:flutter/material.dart';

/// A reusable widget for displaying subscription plan options
///
/// This widget creates a card with plan details including title, price,
/// and additional features. It allows customization of colors, text content,
/// and styles.
class PlanCard extends StatelessWidget {
  /// The title of the subscription plan (e.g., "Monthly", "Yearly")
  final String planTitle;
  
  /// The price of the subscription (e.g., "$5 USD")
  final String priceText;
  
  /// The period text (e.g., "/Month", "/Year")
  final String periodText;
  
  /// Additional feature text (e.g., "Includes Family Sharing")
  final String featureText;
  
  /// Background color of the card
  final Color? backgroundColor;
  
  /// Color of the selection icon
  final Color? iconColor;

  /// Background color of the selection icon
  final Color? iconBackgroundColor;
  
  /// Style for the plan title text
  final TextStyle? planTitleStyle;
  
  /// Style for the price text
  final TextStyle? priceTextStyle;
  
  /// Style for the period text
  final TextStyle? periodTextStyle;
  
  /// Style for the feature text
  final TextStyle? featureTextStyle;
  
  /// Callback function when the card is selected
  final VoidCallback? onPressed;
  
  /// Path to the image asset
  final String imagePath;
  
  /// Whether the plan is currently selected
  final bool isSelected;

  const PlanCard({
    Key? key,
    required this.planTitle,
    required this.priceText,
    required this.periodText,
    required this.featureText,
    this.backgroundColor,
    this.iconColor,
    this.iconBackgroundColor ,
    this.planTitleStyle,
    this.priceTextStyle,
    this.periodTextStyle,
    this.featureTextStyle,
    this.onPressed,
    this.imagePath = 'assets/images/files_folders.png',
    this.isSelected = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default text styles if not provided
    final defaultPlanTitleStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    );
    
    final defaultPriceTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
    
    final defaultPeriodTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: const Color(0xffA49AD8),
    );
    
    final defaultFeatureTextStyle = TextStyle(
      color: const Color(0xffA49AD8),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 5
      ),
      width: 342,
      height: 102,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            offset: Offset(-1, -1), // Shadow position
            blurRadius: 4, // Blur radius
            spreadRadius: -2, // Spread radius
            color: const Color(0x3F000000).withValues(alpha:0.25), // Shadow color
          ),

        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planTitle,
                style: planTitleStyle ?? defaultPlanTitleStyle,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: priceText,
                      style: priceTextStyle ?? defaultPriceTextStyle,
                    ),
                    TextSpan(
                      text: periodText,
                      style: periodTextStyle ?? defaultPeriodTextStyle,
                    ),
                  ],
                ),
              ),
              Text(
                featureText,
                style: featureTextStyle ?? defaultFeatureTextStyle,
              ),
            ],
          ),
          IconButton(
            onPressed: onPressed,
            icon: Container(
              padding: const EdgeInsets.all(3),
              decoration: ShapeDecoration(
                color: iconBackgroundColor ?? const Color(0xff5436F8),
                shape: const CircleBorder(
                  side: BorderSide(width: 2, color: Color(0xff18153F)
                ),)
              ),
              child: isSelected 
                ? Icon(
                    Icons.check,
                    size: 18,
                    color: iconColor ?? const Color(0xff18153F),
                  )
                : SizedBox(
                    width: 18,
                    height: 18,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}