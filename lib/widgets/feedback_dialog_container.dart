import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FeedbackDialogContainer extends StatefulWidget {
  const FeedbackDialogContainer({Key? key}) : super(key: key);

  @override
  _FeedbackDialogContainerState createState() =>
      _FeedbackDialogContainerState();
}

class _FeedbackDialogContainerState extends State<FeedbackDialogContainer> {
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(.04 * width)),
      child: SizedBox(
        height: .48 * height,
        width: .9 * width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0.61 * width, top: 0.03 * height),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.grey.withOpacity(0.3),
                customBorder: const CircleBorder(),
                child: Container(
                  alignment: Alignment.center,
                  height: 0.035 * height,
                  child: SvgPicture.asset(
                    'assets/cancel_icon.svg',
                    height: 0.015 * height,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.025 * height, left: 0.22 * width),
              height: 0.15 * height,
              width: 0.35 * width,
              child: Image.asset('assets/feedbackheart.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.025 * height, left: 0.1 * width),
              child: Text(
                'PlEASE RATE US',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 0.015 * height,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 0.05 * width, vertical: 0.015 * height),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 0.02 * width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '😞',
                          style: TextStyle(fontSize: 0.015 * height),
                        ),
                        SizedBox(
                          width: 0.55 * width,
                        ),
                        Text(
                          '😍',
                          style: TextStyle(fontSize: 0.024 * height),
                        )
                      ],
                    ),
                  ),
                  SfSliderTheme(
                    data: SfSliderThemeData(
                      overlayRadius: 10,
                      thumbRadius: 8,
                      activeLabelStyle: TextStyle(
                          fontSize: 0.011 * height, color: Colors.black),
                      inactiveLabelStyle: TextStyle(
                          fontSize: 0.011 * height, color: Colors.black),
                    ),
                    child: SfSlider(
                      min: 1.0,
                      max: 10.0,
                      value: _value,
                      interval: 1,
                      showTicks: true,
                      showLabels: true,
                      onChanged: (dynamic value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      stepSize: 1,
                      activeColor: const Color(0xFFEC5569),
                      inactiveColor: const Color(0xFF9F9F9F),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 0.05 * height,
                  width: 0.3 * width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: const Color(0xFF682FC6).withOpacity(0.2),
                            offset: const Offset(0, 4),
                            blurRadius: 24)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 0.035 * height,
                          width: 0.05 * width,
                          child: SvgPicture.asset('assets/ExtraFeedback.svg')),
                      SizedBox(
                        width: 0.025 * width,
                      ),
                      const Text(
                        'Extra Feedback',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 0.05 * height,
                  width: 0.3 * width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEC5569),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: const Color(0xFF682FC6).withOpacity(0.2),
                            offset: const Offset(0, 4),
                            blurRadius: 24)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 0.035 * height,
                          width: 0.06 * width,
                          child: Image.asset('assets/play-store 1.png')),
                      SizedBox(
                        width: 0.015 * width,
                      ),
                      const Text(
                        'Rate On Play Store',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
