import 'package:easy_localization/easy_localization.dart';
import 'package:elaro_app/feature/login/presentation/pages/widgets/app_textfiled.dart';
import 'package:elaro_app/feature/login/presentation/pages/widgets/button_widget.dart';
import 'package:elaro_app/feature/login/presentation/pages/widgets/text_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/utils.dart';
import '../../bloc/auth_bloc.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();
  final ValueNotifier<bool> isEnabled = ValueNotifier(false);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus();
    });
    super.initState();
  }


  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              AppTextfiled(
                focusNode: focusNode,
                controller: phoneController,
                borderInput: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                ),
                keyboard: TextInputType.number,
                prefix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
                  child: Text("+998",style: AppStyle.w600s15h20DarkBluePrimary),
                ),
                inputFormatters: [
                  TextMask(pallet: "(##) ###-##-##"),
                  LengthLimitingTextInputFormatter(14),
                ],
                hintText: "",
                textStyle: AppStyle.w600s15h20DarkBluePrimary,
                validator: (text) => Utils.validator(text, 9),
                onChanged: (_){
                  isEnabled.value = phoneController.text.length == 14;
                },
              ),

              const SizedBox(height: 24),
              ValueListenableBuilder(
                valueListenable: isEnabled,
                builder: (context, value, _) {
                  return FilledButton(
                  onPressed: (){
        if((_formKey.currentState?.validate() ?? false) && isEnabled.value){
        context.read<AuthBloc>().add(AuthEvent.checkRegister(phoneController.text.replaceAll(" ", "").replaceAll("(", "").replaceAll(")", "").replaceAll("-", "")));
        }
      }, child: Text("login".tr()));
                  //   ButtonWidget(
                  //   btnColor: isEnabled.value ? AppColor.primary : AppColor.lightGray500,
                  //   text: "login".tr(),
                  //   textColor: AppColor.white,
                  //
                  // );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
