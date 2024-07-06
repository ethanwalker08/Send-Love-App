import 'package:flutter/material.dart';
import 'package:send_love/send_love_icons_icons.dart';

class LoveButton extends StatefulWidget {
  const LoveButton({super.key});

  @override
  State<LoveButton> createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: IconButton.filled(
        style: IconButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.secondary),
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('You sent love',textAlign: TextAlign.center,),
            showCloseIcon: true,
          );
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        icon: const Icon(SendLoveIcons.hand_holding_heart),iconSize: 40,
      ),
    );
  }
}
