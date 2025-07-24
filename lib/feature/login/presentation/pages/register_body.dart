import 'package:elaro_app/feature/login/presentation/pages/widgets/app_textfiled.dart';
import 'package:elaro_app/feature/login/presentation/pages/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/utils.dart';
import '../../bloc/auth_bloc.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key, this.phone});

  final String? phone;

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.phone != null) {
      phoneController.text = widget.phone ?? "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Telefon raqam",
              style: AppStyle.w600s15h20DarkBluePrimary,
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2, color: AppColor.primary))),
              child: AppTextfiled(
                controller: phoneController,
                keyboard: TextInputType.number,
                prefix: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("+998", style: AppStyle.w600s15h20DarkBluePrimary),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(9)
                ],
                hintText: "",
                textStyle: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.lightGray200),
                validator: (text) => Utils.validator(text, 9),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2, color: AppColor.primary))),
              child: AppTextfiled(
                controller: nameController,
                keyboard: TextInputType.name,
                inputFormatters: const [],
                hintText: "Ism",
                textStyle: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.lightGray200),
                validator: (text) => Utils.validator(text, 2),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2, color: AppColor.primary))),
              child: AppTextfiled(
                controller: surnameController,
                keyboard: TextInputType.name,
                inputFormatters: const [],
                hintText: "Familiya",
                textStyle: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.lightGray200),
                validator: (text) => Utils.validator(text, 2),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton(onPressed: (){
                  if (_formKey.currentState?.validate() ?? false) {
                    context.read<AuthBloc>().add(
                      AuthEvent.register(
                        number: phoneController.text,
                        name: nameController.text,
                        surname: surnameController.text,
                        password: "",
                      ),
                    );


                  }
            }, child:  Text("Ro'yxatdan o'tish") ,)
            // ButtonWidget(
            //   textColor: AppColor.white,
            //
            //   onTap: () {

            //   },
            // )
          ],
        ),
      ),
    );
  }
}


