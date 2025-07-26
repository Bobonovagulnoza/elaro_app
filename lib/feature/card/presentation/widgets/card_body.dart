import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/constants/app_styles.dart';
import 'package:elaro_app/core/utils/utils.dart';
import 'package:elaro_app/core/widgets/empty_widget.dart';
import 'package:elaro_app/core/widgets/translator.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/card/presentation/blocs/card/bloc/card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardBody extends StatefulWidget {
  const CardBody({super.key});

  @override
  State<CardBody> createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CardBloc, CardState>(
          builder: (context, state) {
            return state.when(
              loading:
                  () => const Center(
                    child: CircularProgressIndicator(color: AppColor.primary),
                  ),
              success: (data) => _buildSuccessWidget(data),
              failure:
                  () => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 64,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "error_occurred".tr(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CardBloc>().add(
                              const CardEvent.fetchData(),
                            );
                          },
                          child: Text("retry".tr()),
                        ),
                      ],
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSuccessWidget(List<CardModel> data) {
    if (data.isEmpty) {
      return const EmptyWidget();
    }

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: data.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final item = data[index];
              return _buildCartItem(item);
            },
          ),
        ),
        _buildCartSummary(data),
      ],
    );
  }

  Widget _buildCartItem(CardModel item) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColor.homeCategoryItem,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: item.image,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primary,
                        strokeWidth: 2,
                      ),
                    ),
                errorWidget:
                    (context, url, error) => const Icon(
                      Icons.image_not_supported_outlined,
                      color: Colors.grey,
                    ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Translator(
                  uz: item.titleUz,
                  ru: item.titleRu,
                  crl: item.titleCrl,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    if (item.discountedPrice != null) ...[
                      Text(
                        "${Utils.cashFormat(item.price)} ${"sum".tr()}",
                        style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: AppColor.lightGray50,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "${Utils.cashFormat(item.discountedPrice.toString())} ${"sum".tr()}",
                        style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                    ] else
                      Text(
                        "${Utils.cashFormat(item.price)} ${"sum".tr()}",
                        style: AppStyle.w600s15h20DarkBluePrimary,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (item.quantity > 1) {
                              context.read<CardBloc>().add(
                                CardEvent.updateQuantity(
                                  item.productId,
                                  item.quantity - 1,
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color:
                                  item.quantity > 1
                                      ? AppColor.primary
                                      : Colors.grey[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.remove,
                              color:
                                  item.quantity > 1
                                      ? Colors.white
                                      : Colors.grey[600],
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            item.quantity.toString(),
                            style: AppStyle.w600s15h20DarkBluePrimary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (item.quantity < item.productCount) {
                              context.read<CardBloc>().add(
                                CardEvent.updateQuantity(
                                  item.productId,
                                  item.quantity + 1,
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color:
                                  item.quantity < item.productCount
                                      ? AppColor.primary
                                      : Colors.grey[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.add,
                              color:
                                  item.quantity < item.productCount
                                      ? Colors.white
                                      : Colors.grey[600],
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        _showDeleteConfirmation(item);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartSummary(List<CardModel> data) {
    final total = data.fold<double>(
      0.0,
      (sum, item) =>
          sum +
          (item.discountedPrice ?? double.parse(item.price)) * item.quantity,
    );
    final totalItems = data.fold<int>(0, (sum, item) => sum + item.quantity);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "total".tr(),
                style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                "${Utils.cashFormat(total.toString())} ${"sum".tr()}",
                style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
                  fontSize: 18,
                  color: AppColor.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _proceedToCheckout(data);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "checkout".tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              _showClearCartConfirmation();
            },
            child: Text(
              "clear_cart".tr(),
              style: const TextStyle(color: Colors.red, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(CardModel item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("confirm_delete".tr()),
          content: Text("delete_item_confirmation".tr()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("cancel".tr()),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<CardBloc>().add(
                  CardEvent.removeProduct(item.productId),
                );
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: Text("delete".tr()),
            ),
          ],
        );
      },
    );
  }

  void _showClearCartConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("clear_cart".tr()),
          content: Text("clear_cart_confirmation".tr()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("cancel".tr()),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // context.read<CardBloc>().add(const CardEvent.clearCart());
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: Text("clear".tr()),
            ),
          ],
        );
      },
    );
  }

  void _proceedToCheckout(List<CardModel> data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("proceeding_to_checkout".tr()),
        backgroundColor: AppColor.primary,
      ),
    );
  }
}
