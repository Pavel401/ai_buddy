import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    required this.title,
    required this.icondata,
    required this.color,
    required this.isMainButton,
    super.key,
  });
  final String title;
  final IconData icondata;
  final Color color;
  final bool isMainButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Implement navigation to chat feature
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.background.withOpacity(0.2),
                child: Icon(
                  icondata,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
              Icon(
                CupertinoIcons.arrow_up_right,
                color: Theme.of(context).colorScheme.background,
                size: 32,
              ),
            ],
          ),
          SizedBox(
            height: isMainButton ? 50 : 8,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: isMainButton ? 32 : 18,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}