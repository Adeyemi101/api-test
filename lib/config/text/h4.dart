part of 'text.dart';

class H4 extends StatelessWidget {
  const H4(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.h4,
    );
  }
}
