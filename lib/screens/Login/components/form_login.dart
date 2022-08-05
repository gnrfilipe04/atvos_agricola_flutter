import 'package:atvos_agricola/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/theme/colors.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  bool passVisible = true;

  final FocusNode _focusNodes = FocusNode();

  _tooglePassVisible() {
    setState(() {
      passVisible = !passVisible;
    });
  }

  _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Este campo é obrigatório';
    } else if (!value.contains('@')) {
      return 'Digite um e-mail válido';
    }
  }

  _validatePass(String value) {
    if (value.isEmpty) {
      return 'Este campo é obrigatório';
    } else if (value.length < 6) {
      return 'Mínimo de 6 dígitos';
    }
  }

  _login() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  _forgotPassword() {
    return (Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () => print('esqueci a senha'),
            child: const Text(
              'Esqueceu a senha?',
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    ));
  }

  @override
  void initState() {
    _focusNodes.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 36),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Theme.of(context).primaryColor,
            validator: (value) => _validateEmail(value!),
            decoration: const InputDecoration(labelText: 'E-mail'),
          ),
          const SizedBox(height: 18),
          TextFormField(
            focusNode: _focusNodes,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Theme.of(context).primaryColor,
            obscureText: passVisible,
            validator: (value) => _validatePass(value!),
            decoration: InputDecoration(
                labelText: 'Senha',
                suffixIcon: !passVisible
                    ? IconButton(
                        onPressed: () => _tooglePassVisible(),
                        icon: Icon(
                          Icons.visibility_outlined,
                          color: _focusNodes.hasFocus
                              ? CustomColors.orange
                              : CustomColors.grey,
                        ),
                      )
                    : IconButton(
                        onPressed: () => _tooglePassVisible(),
                        icon: Icon(
                          Icons.visibility_off_outlined,
                          color: _focusNodes.hasFocus
                              ? CustomColors.orange
                              : CustomColors.grey,
                        ),
                      )),
          ),
          _forgotPassword(),
          const SizedBox(height: 45),
          CustomButton(
              onPress: () => _login(),
              title: 'Entrar',
              bgColor: Theme.of(context).primaryColor),
        ],
      ));
  }
}
