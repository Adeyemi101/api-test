part of 'text.dart';

class H3 extends StatelessWidget {
  const H3(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.h3,
    );
  }
}
