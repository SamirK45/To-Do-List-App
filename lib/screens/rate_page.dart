import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class Rate extends StatefulWidget {


  const Rate({Key? key}) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {

  RateMyApp _rateMyApp = RateMyApp(
    preferencesPrefix: 'rateMyApp_',
    minDays: 3,
    minLaunches: 7,
    remindDays: 2,
    remindLaunches: 5,
    // appStoreIdentifier: '',
    // googlePlayIdentifier: '',
  );

  @override
  void initState() {
    super.initState();
    _rateMyApp.init().then((_) {
      // if (_rateMyApp.shouldOpenDialog) {
      _rateMyApp.showStarRateDialog(
        context,
        title: 'Enjoying To-Do-List App?',
        message: 'Please leave a rating!',
        actionsBuilder: (context, stars)  {
          return [
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                if (stars != null) {
                  _rateMyApp.callEvent(RateMyAppEventType.rateButtonPressed).then((_) => Navigator.pop(context));

                  if (stars <= 3) {
                    print('Navigate to Contact Us Screen');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => ContactUsScreen(),
                    //   ),
                    // );
                  } else if (stars <= 5) {
                    print('Leave a Review Dialog');
                    // showDialog(...);
                  }
                } else {
                  Navigator.pop(context);
                }
              },
            ),
          ];
        },
        dialogStyle: DialogStyle(
          titleAlign: TextAlign.center,
          messageAlign: TextAlign.center,
          messagePadding: EdgeInsets.only(bottom: 20.0),
        ),
        starRatingOptions: StarRatingOptions(),
      );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {

    return // The builder should be initialized exactly one time during the app lifecycle.
// So place it where you want but it should respect that condition.

      RateMyAppBuilder(
        builder: (context) => MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Rate my app !'),
            ),
            body: Center
              (child: Text('This is my beautiful app !')),
          ),
        ),
        onInitialized: (context, rateMyApp) {
          // Called when Rate my app has been initialized.
          // See the example project on Github for more info.
        },
      );

  }
}
