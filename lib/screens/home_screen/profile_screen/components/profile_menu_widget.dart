import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;
  final Color boxColor;
  final Color iconColor;

  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.boxColor,
    required this.iconColor,
    this.endIcon = true,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        //padding: EdgeInsets.all(5),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(100),
          color: boxColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          //Icons.notifications_none_outlined,
          color: iconColor,
          size: 30,
        ),
      ),
      title: Text(
        title,
        //"Notifications",
        style: Theme.of(context).textTheme.headline6?.apply(color: textColor),
        // style: TextStyle(
        //   fontWeight: FontWeight.w500,
        //   fontSize: 20,
        // ),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}
