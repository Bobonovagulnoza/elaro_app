import 'package:elaro_app/feature/profile/blocs/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/api/api.dart';
import '../../../../core/interceptor/interceptor.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/di.dart';
import '../../bloc/auth_bloc.dart';
import '../../data/repositories/auth_repository.dart';
import 'otp_body.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phoneNumber});
  final String? phoneNumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<ProfileBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tasdiqlash"),
          centerTitle: true,
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () => context.go(AppRouter.home),
              failure: (f) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(f.message)),
                );
              },
            );
          },
          child: OtpBody(phone: widget.phoneNumber),
        ),


      ),
    );
  }
}
