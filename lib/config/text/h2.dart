part of 'text.dart';

class H2 extends StatelessWidget {
  const H2(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.h2,
    );
  }
}
