import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class MediaUtils {
  static Map<IconData, String> getMediaIcons() {
    return {
      SocialMediaIcons.linkedin: 'www.linkedin.com/in/manoj-diddi/',
      SocialMediaIcons.github_circled: 'www.github.com/manojvarmadiddi',
      SocialMediaIcons.facebook: '',
      SocialMediaIcons.instagram: '',
      Icons.mail: 'manojvarmadiddi@gmail.com',
      Icons.picture_as_pdf_outlined: ''
    };
  }

  static Map<IconData, String> getMediaIconNames() {
    return {
      SocialMediaIcons.linkedin: 'LinkedIn',
      SocialMediaIcons.github_circled: 'Guthub',
      SocialMediaIcons.facebook: 'Facebook',
      SocialMediaIcons.instagram: 'Instagram',
      Icons.mail: 'Mail',
      Icons.picture_as_pdf_outlined: 'Resume',
    };
  }
/*
  static profilesList() {
    List list = ['LinkedIn', 'Guthub', 'Facebook', 'Instagram', 'Mail'];
  }

  static generateMap() {
    var data = getMediaIcons();
    var newMap = data.map(
      (key, value) => MapEntry(
        key,
        profilesList()[key],
      ),
    );
  }

  */
}
