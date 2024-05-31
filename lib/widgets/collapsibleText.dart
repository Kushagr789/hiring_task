import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hiring_task/res/Colors.dart';



class CollapsibleText extends StatefulWidget {
  final String text;
  final int maxLines;

  CollapsibleText({required this.text, this.maxLines = 2});

  @override
  _CollapsibleTextState createState() => _CollapsibleTextState();
}

class _CollapsibleTextState extends State<CollapsibleText> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final text = widget.text;
        final maxLines = widget.maxLines;

        // Create a TextPainter to determine the size and position of the text
        final textPainter = TextPainter(
          text: TextSpan(text: text, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
          maxLines: maxLines,
          textDirection: TextDirection.ltr,
        );

        textPainter.layout(maxWidth: constraints.maxWidth);

        if (!textPainter.didExceedMaxLines || _isExpanded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
              ),
              GestureDetector(
                onTap: _toggleExpand,
                child: Text(
                  'Read less',
                  style: TextStyle(color: AppColors.ligthRed),
                ),
              ),
            ],
          );
        }

        // Get the last fully visible line
        final position = textPainter.getPositionForOffset(Offset(
            textPainter.size.width - 1,
            textPainter.height - textPainter.preferredLineHeight));
        final endOffset = textPainter.getOffsetBefore(position.offset);

        // Shorten the text and append the "Read more" link
        final truncatedText = text.substring(0, endOffset) + '... ';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: truncatedText,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Read more',
                    style: TextStyle(color: AppColors.ligthRed),
                    recognizer: TapGestureRecognizer()..onTap = _toggleExpand,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
