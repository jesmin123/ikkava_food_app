import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
class Agreement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(AGREEMENT),
      backgroundColor: APP_DRAWER_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: LINE_HEIGHT,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Terms and Conditions for ikkawa",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT,),
                    Text(" Introduction",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text("  These Website Standard Terms and Conditions written on this webpage shall manage your use of our website, Webiste Name accessible at Website.com.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),

                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text("These Terms will be applied fully and affect to your use of this Website. By using this Website, you agreed to accept all terms and conditions written in here. You must not use this Website if you disagree with any of these Website Standard Terms and Conditions",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" Minors or people below 18 years old are not allowed to use this Website.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" Intellectual Property Rights",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text(" Other than the content you own, under these Terms, Company Name and/or its licensors own all the intellectual property rights and materials contained in this Website.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" You are granted limited license only for purposes of viewing the material contained on this Website.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" Restrictions",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text(" You are specifically restricted from all of the following:",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text(" You are specifically restricted from all of the following:",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" publishing any Website material in any other media;\nselling, sublicensing and/or otherwise commercializing any Website material;\npublicly performing and/or showing any Website material;using this Website in any way that is or may be damaging to this Website;using this Website in any way that impacts user access to this Website;\n",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                      Text("using this Website contrary to applicable laws and regulations, or in any way may cause harm to the Website, or to any person or business entity;\n,engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website;\n",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                      Text("using this Website to engage in any advertising or marketing.\nCertain areas of this Website are restricted from being access by you and Company Name may further restrict access by you to any areas of this Website, at any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" Your Content",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text(" In these Website Standard Terms and Conditions, “Your Content” shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    Text(" In Your Content must be your own and must not be invading any third-party's rights. Company Name reserves the right to remove any of Your Content from this Website at any time without notice.",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" No warranties",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    Text(" This Website is provided “as is,” with all faults, and Company Name express no representations or warranties, of any kind related to this",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),textAlign: TextAlign.left,),
                    SizedBox(height: LINE_HEIGHT*0.5,),SizedBox(height: LINE_HEIGHT*0.5,),
                    SizedBox(height: LINE_HEIGHT*0.5,),
                    SizedBox(height: LINE_HEIGHT*0.5,),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}