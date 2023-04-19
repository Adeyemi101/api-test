part of 'text.dart';

class ButtonText extends StatelessWidget {
  const ButtonText(this.text, {Key? key, this.colour = AppColours.white})
      : super(key: key);

  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.buttonText.copyWith(color: colour),
    );
  }
}
