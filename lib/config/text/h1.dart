part of 'text.dart';

class H1 extends StatelessWidget {
  const H1(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.h1,
    );
  }
}
