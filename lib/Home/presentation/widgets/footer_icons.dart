import 'package:boj_ministries/core/presentation/widgets/pbm_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterIcons extends StatelessWidget {
  const FooterIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          PBMIconButton(
            icon: FontAwesomeIcons.youtube,
            size: 20,
          ),
          PBMIconButton(
            icon: FontAwesomeIcons.twitter,
            size: 20,
          ),
          PBMIconButton(
            icon: FontAwesomeIcons.facebook,
            size: 20,
          ),
          PBMIconButton(
            icon: FontAwesomeIcons.instagram,
            size: 20,
          ),
        ],
      ),
    );
  }
}
