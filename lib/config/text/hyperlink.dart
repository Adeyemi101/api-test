part of 'text.dart';

class Hyperlink extends StatelessWidget {
  const Hyperlink(this.text,
      {Key? key, this.colour = AppColours.primary, this.onTap})
      : super(key: key);

  final String text;
  final Color colour;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: text,
      style: AppTextStyles.buttonText.copyWith(color: colour),
      mouseCursor: SystemMouseCursors.click,
      recognizer: TapGestureRecognizer()..onTap = onTap,
    ));
  }
}
