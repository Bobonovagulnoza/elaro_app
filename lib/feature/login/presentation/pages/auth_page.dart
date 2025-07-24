import 'package:elaro_app/core/utils/di.dart';
import 'package:elaro_app/feature/login/presentation/pages/widgets/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/constants/app_icons.dart';
import '../../bloc/auth_bloc.dart';
import '../../useacase/costim.dart';
import 'auth_body.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => const LoadingWidget(),
              );
            },
            register: (phone) {
              Navigator.pop(context);
              context.push(AppRouter.register, extra: phone);
            },
            goToOtp: (phone) {
              Navigator.pop(context);
              context.push(AppRouter.otp, extra: phone);
            },
            success: () {
              Navigator.pop(context);
              context.go(AppRouter.home);
            },
            failure: (failure) {
              Navigator.pop(context);
              CustomToast.showToast(
                context,
                AppIcons.error,
                failure.message,
                AppColor.white,
                AppColor.red,
              );
            },
          );
        },
        child: const _AuthScaffold(),
      ),
    );
  }
}

class _AuthScaffold extends StatelessWidget {
  const _AuthScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Xush kelibsiz!",
          style: TextStyle(color: AppColor.black),
        ),
        backgroundColor: AppColor.lightGray200,
        centerTitle: true,
        leading: context.canPop()
            ? IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            CupertinoIcons.xmark,
            color: AppColor.black,
            size: 16,
          ),
        )
            : const SizedBox(),
      ),
      body: const AuthBody(),
    );
  }
}

