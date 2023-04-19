part of 'text.dart';

class P extends StatelessWidget {
  P(this.text, {Key? key, TextStyle? style}) : super(key: key) {
    this.style = style ?? AppTextStyles.p;
  }

  P.primary(this.text, {Key? key, TextStyle? style})
      : super(key: key) {
    this.style = style ?? AppTextStyles.pPrimary;
  }

  P.secondary(this.text, {Key? key, TextStyle? style})
      : super(key: key) {
    this.style = style ?? AppTextStyles.pSecondary;
  }

  P.error(this.text, {Key? key,TextStyle? style})
      : super(key: key) {
    this.style = style ?? AppTextStyles.pError;
  }

  P.grey(this.text, {Key? key,TextStyle? style}) : super(key: key) {
    this.style = style ?? AppTextStyles.pGrey;
  }

  P.login(this.text, {Key? key,TextStyle? style})
      : super(key: key) {
    this.style = style ?? AppTextStyles.pLogin;
  }

  P.white(this.text, {Key? key,TextStyle? style})
      : super(key: key) {
    this.style = style ?? AppTextStyles.pWhite;
  }

  final String? text;
  late final TextStyle style;

  @override
  Widget build(BuildContext context) {
 
      return Text(
        text ?? '',
        style: style,
      );
    
  }
}
