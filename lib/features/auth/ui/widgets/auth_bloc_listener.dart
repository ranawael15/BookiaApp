import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../gen/codegen_loader.g.dart';
import '../../cubit/auth_cubit.dart';


class AuthBlocListener extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  const AuthBlocListener({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return   BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoadingState) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            ),
          );
        }else if(state is AuthErrorState){
          Navigator.pop(context);
          showDialog(context: context, builder: (context)=> AlertDialog(
            title: Text("Error"),
            content: Text("Something wrong plase try again"),
          ));
        }else if(state is AuthSuccessState){
          Navigator.pushNamedAndRemoveUntil(context, Routes.bottomNavBar, (route) => false);
        }
      },
      child: AppButton(
        onTap: () {
          context.read<AuthCubit>().login(
            email: email.text,
            password: password.text,
          );
        },
        text: LocaleKeys.login.tr(),
      ),
    );
  }
}
