part of 'text.dart';

class H5 extends StatelessWidget {
  const H5(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.h5,
    );
  }
}
