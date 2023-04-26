import 'package:flutter/widgets.dart';

import '../weidgetes/custom_text_field.dart';

class obertichistory extends StatelessWidget {
  obertichistory(
      {required this.FallTermPregancy,
      required this.Pretermpregancy,
      required this.Abortion,
      required this.LiveBabies});

  TextEditingController FallTermPregancy, Pretermpregancy, Abortion, LiveBabies;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Fall Term Pregancy',
          hinttext: 'Fall Term Pregancy',
          controller: FallTermPregancy,
          // onchanged: (dynamic FallTermPregancyvalue) {
          //   FallTermPregancy = FallTermPregancyvalue;
          // },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Preterm Pregancy',
          hinttext: 'Preterm Pregancy',
          controller: Pretermpregancy,
          // onchanged: (dynamic Pretermpregancyvalue) {
          //   Pretermpregancy = Pretermpregancyvalue;
          // },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Abortion',
          hinttext: 'Abortion',
          controller: Abortion,
          // onchanged: (dynamic Abortionvalue) {
          //   Abortion = Abortionvalue;
          // },
        ),
        SizedBox(
          height: 15,
        ),
        customtextformfield(
          valuevaldiation: (value) {
            if (value!.isEmpty) {
              return 'field required';
            }
          },
          fieldtype: TextInputType.number,
          labeltext: 'Live Babies',
          hinttext: 'Live Babies',
          controller: LiveBabies,
          // onchanged: (dynamic LiveBabiesvalue) {
          //   LiveBabies = LiveBabiesvalue;
          // },
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
