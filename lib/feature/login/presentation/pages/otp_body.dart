import 'package:elaro_app/feature/login/presentation/pages/widgets/pinput_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../profile/blocs/profile_bloc.dart';
import '../../../../core/constants/app_icons.dart';
import '../../bloc/auth_bloc.dart';
import '../../useacase/costim.dart';

class OtpBody extends StatefulWidget {
  const OtpBody({super.key, required this.phone});

  final String? phone;

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> with CodeAutoFill {
  TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String old = "";

  @override
  void initState() {
    _inputCode();
    listenForCode();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          goToOtp: (goToOtp) {
            context.read<ProfileBloc>().add(const ProfileEvent.fetchData());
          },
          register: (register) {
          },
          failure: (failure) {
            CustomToast.showToast(
              context,
              AppIcons.error,
              failure.message,
              AppColor.white,
              AppColor.red,
            );
          },
          success: () {
            context.goNamed('home');
          },

        );
      },

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Text(
              "Biz +998 ${widget.phone} raqamiga tasdiqlash kodini yubordik.",
              textAlign: TextAlign.center,
              style: AppStyle.w500s17h20DarkBlue500,
            ),
            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: PinPutWidget(controller: controller),
            ),
            const SizedBox(height: 24),
            Countdown(
              seconds: 300,
              build: (BuildContext context, double time) {
                final int minutes = time ~/ 60;
                final String seconds = "${(time % 60).round()}".padLeft(2, '0');
                return ZoomTapAnimation(
                  onTap: () => context.pop(),
                  child: Text(
                    "Kodni qayta yuborish $minutes:$seconds",
                    textAlign: TextAlign.center,
                    style: AppStyle.w500s17h20DarkBlue500.copyWith(
                      color: time == 0 ? AppColor.blue : AppColor.lightGray500,
                    ),
                  ),
                );
              },
              interval: const Duration(seconds: 1),
              onFinished: () {
                print('Timer is done!');
              },
            ),
            const Spacer(),
            const SizedBox(height: 24),
            ZoomTapAnimation(
              onTap: () => context.pop(),
              child: Text(
                "Kodni qayta yuborish",
                textAlign: TextAlign.center,
                style: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.blue),
              ),
            ),
            const SizedBox(height: 12),
            ZoomTapAnimation(
              onTap: () => context.pop(),
              child: Text(
                "Telefon raqamni o'zgartirish",
                textAlign: TextAlign.center,
                style: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.blue),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void _inputCode() {
    controller.addListener(() {
      if (controller.text.length == 6 &&
          (_formKey.currentState?.validate() ?? false)) {
        if (controller.text != old) {
          context.read<AuthBloc>().add(
            AuthEvent.otpVerify(
              number: widget.phone ?? "",
              otpCode: controller.text,
            ),
          );



          old = controller.text;
        }
      }
    });
  }

  @override
  void codeUpdated() {
    controller.text = code!;
    setState(() {});
    _inputCode();
  }
}
