part of 'text.dart';

class SmallText extends StatelessWidget {
  const SmallText(this.text, {Key? key, this.colour = AppColours.textMedium})
      : super(key: key);

  final Color colour;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.small.copyWith(color: colour),
    );
  }
}
