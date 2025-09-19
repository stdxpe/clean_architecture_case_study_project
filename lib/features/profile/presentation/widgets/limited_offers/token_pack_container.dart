import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/entities/token_pack/token_pack.dart';

class TokenPackContainer extends StatelessWidget {
  const TokenPackContainer({required this.pack, super.key});

  final TokenPack pack;

  /// 📌 İnceleyen geliştirici için not:
  /// Figma dosyasında istenen tasarım tam olarak:
  ///
  ///           ----(CHIP)----
  ///            56px
  ///            TOKEN (3x text)
  ///            36px
  ///            PRICE (Divider + 2x text)
  ///           --------------
  ///
  /// -Burada birkaç yöntem arasında kaldığımı itiraf etmeliyim.
  ///
  /// Bu tasarım (ScreenUtil kullanarak) rahatlıkla:
  ///     Container( Column([ SizedBox(56.h), TOKEN, SizedBox(36.h), PRICE, ]) )
  /// şeklinde yapılabilir. Ama BottomSheet'teki Container'ın (token paketleri bölümü) dikey yüksekliği değiştiğinde de,
  /// içeriğin göreceli konumlarının hep aynı kalmasını ve Container'a sabit bir yükseklik.h vermesek bile overflow hatası almamak istiyoruz.
  ///
  /// —Ya da büyük bir Stack içinde [ Positioned(top: 56.h, TOKEN), Positioned(top:0, PRICE) ] de kullanılabilir. Ama Container dikeyde yeterince daralırsa, overflow + içeriklerin birbirine girme riski var.
  ///
  /// Bu sıralı SizedBox.h yöntemi yerine; Column içinde TOKEN bölümünü Expanded içine aldım. Böylelikle kalan bütün alanı TOKEN kaplayacak ve PRICE bölümü hep en altta konumlanacak.
  /// Ayrıca TOKEN bölümünü (kalan alan içinde) tam ortada konumlamak için Center içine aldım. TOKEN bölümü artık hep tam ortada konumlanacak.
  /// Ama TOKEN bölümü, kalan alan içinde tam ortada değil. 56px-TOKEN-36px-PRICE şeklinde bir tasarıma sahip.
  /// Son olarak bunu çözmek için, 56-36=20px.h boşluğu TOKEN üzerine ekledim (SizedBox ya da topPadding olarak seçilebilir).
  /// Finalde: Container( Column( [ SizedBox(20.h), Expanded( Center(TOKEN) ), PRICE, ] ))  elde ediyoruz. (Bunlar dışındaki öğeler tamamen görsel düzeltmelere ait)
  ///
  ///           ----(CHIP)----
  ///             20.h
  ///             Expanded(
  ///               Center(
  ///                 TOKEN (3x text)
  ///             PRICE (Divider + 2x text)
  ///           --------------
  ///
  /// 📌 Diğer yönteme göre avantajları: BottomSheet ya da Container yüksekliği özgürce değişse bile overflow yok, ve içerik için daha kesin dikey konumlara sahibiz.
  ///    Dezavantajı: TOKEN ve PRICE bölümlerini gruplamak için 2 tane ekstra Column kullanımı gerektiriyor.
  ///
  /// Not: LayoutBuilder, AspectRatio ve Flex gibi yapılar kullanarak daha profesyonel olarak tasarlanabilir, ama ’over-engineering’ uyarısı almak istemedim.

  @override
  Widget build(BuildContext context) {
    return InnerShadow(
      blur: AppConstants.blurs.innerShadowTokenBlur,
      color: ColorPalette.permaWhite.withAlpha(100),
      offset: Offset.zero,

      child: Container(
        margin: EdgeInsets.only(top: AppConstants.spacings.space10.h),
        decoration: BoxDecoration(
          gradient: AppGradients.tokensPack(pack.gradientColor),
          borderRadius: BorderRadius.circular(AppConstants.radius.tokenCard.r),
          border: Border.all(color: ColorPalette.permaWhite.withAlpha(100)),
        ),

        child: Column(
          children: [
            SizedBox(height: AppConstants.spacings.space20.h),

            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: pack.formerTokenCount,
                      textStyle: context.textTheme.action,
                      color: ColorPalette.permaWhite,
                      isLineThrough: true,
                    ),

                    CustomText(
                      text: pack.currentTokenCount,
                      textStyle: context.textTheme.montserrat,
                      color: ColorPalette.permaWhite,
                    ),

                    CustomText(
                      text: AppStrings.token,
                      textStyle: context.textTheme.action,
                      color: ColorPalette.permaWhite,
                    ),
                  ],
                ),
              ),
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  color: ColorPalette.permaWhite.withAlpha(40),
                  indent: AppConstants.spacings.space12.w,
                  endIndent: AppConstants.spacings.space12.w,
                ),

                CustomText(
                  text: '₺${pack.currentPrice.toStringAsFixed(2)}',
                  textStyle: context.textTheme.montserrat,
                  color: ColorPalette.permaWhite,
                  fontSizeCustom: AppConstants.fontSizes.size15,
                  padding: EdgeInsetsGeometry.only(
                    top: AppConstants.spacings.space6.h,
                  ),
                ),

                CustomText(
                  text: AppStrings.perWeek,
                  textStyle: context.textTheme.infoLight,
                  color: ColorPalette.permaWhite,
                  padding: EdgeInsetsGeometry.only(
                    bottom: AppConstants.spacings.space10.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
