import 'package:apurva_portfolio_new/home/hometab.dart';
import 'package:flutter/material.dart';


class ScreenTypeBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  const ScreenTypeBuilder(
      {Key key,

        this.mobile, this.tab, this.desktop,
      }) : super(key: key);

  static bool isMobile(BuildContext context)
  {
    return MediaQuery.of(context).size.width<800;
  }
  static bool isTab(BuildContext context)
  {
    return MediaQuery.of(context).size.width>=800 &&MediaQuery.of(context).size.width<=1200;
  }
  static bool isDesktop(BuildContext context)
  {
    return MediaQuery.of(context).size.width>1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints)
    {
      if(constraints.maxWidth<800)
        {
          return mobile;
        }
      else if(constraints.maxWidth<=1200 && constraints.maxWidth>=800)
        {
          return tab;
        }
      else
        {
          return desktop;
        }
    }
    );
  }
}
























// import 'package:responsive_builder/src/sizing_information.dart';
// import 'package:responsive_builder/src/widget_builders.dart';
//
// import 'device_screen_type.dart';
//
// typedef WidgetBuilder = Widget Function(BuildContext);
//
// /// Provides a builder function for different screen types
// ///
// /// Each builder will get built based on the current device width.
// /// [breakpoints] define your own custom device resolutions
// /// [watch] will be built and shown when width is less than 300
// /// [mobile] will be built when width greater than 300
// /// [tablet] will be built when width is greater than 600
// /// [desktop] will be built if width is greater than 950
//
//
// class ScreenTypeLayout extends StatelessWidget {
//   final ScreenBreakpoints breakpoints;
//
//   // final WidgetBuilder watch;
//   final WidgetBuilder mobile;
//   final WidgetBuilder tablet;
//   final WidgetBuilder desktop;
//
//   ScreenTypeLayout(
//       {Key key,
//         this.breakpoints,
//         // required Widget watch,
//         required Widget mobile,
//         required Widget tablet,
//         required Widget desktop})
//       // : this.watch = _builderOrNull(watch),
//         this.mobile = _builderOrNull(mobile),
//         this.tablet = _builderOrNull(tablet),
//         this.desktop = _builderOrNull(desktop),
//         super(key: key);
//
//   const ScreenTypeLayout.builder(
//       {required Key key,
//         this.breakpoints,
//         // required this.watch,
//         required this.mobile,
//         required this.tablet,
//         required this.desktop})
//       : super(key: key);
//
//   static WidgetBuilder _builderOrNull(Widget widget) {
//     return widget == null ? null : ((_) => widget);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       breakpoints: breakpoints,
//       builder: (context, sizingInformation) {
//         // If we're at desktop size
//         if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
//           // If we have supplied the desktop layout then display that
//           if (desktop != null) return desktop(context);
//           // If no desktop layout is supplied we want to check if we have the size below it and display that
//           if (tablet != null) return tablet(context);
//         }
//
//         if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
//           if (tablet != null) return tablet(context);
//         }
//
//         if (sizingInformation.deviceScreenType == DeviceScreenType.watch &&
//             watch != null) {
//           return watch(context);
//         }
//
//         // If none of the layouts above are supplied or we're on the mobile layout then we show the mobile layout
//         return mobile(context);
//       },
//     );
//   }
// }
//
// class ScreenTypeValueBuilder<T> {
//   T getValueForType({
//     required BuildContext context,
//     required T mobile,
//     required T tablet,
//     required T desktop,
//     // required T watch,
//   }) {
//     var deviceScreenType = getDeviceType(MediaQuery.of(context));
//     // If we're at desktop size
//     if (deviceScreenType == DeviceScreenType.desktop) {
//       // If we have supplied the desktop layout then display that
//       if (desktop != null) return desktop;
//       // If no desktop layout is supplied we want to check if we have the size below it and display that
//       if (tablet != null) return tablet;
//     }
//
//     if (deviceScreenType == DeviceScreenType.tablet) {
//       if (tablet != null) return tablet;
//     }
//
//     // if (deviceScreenType == DeviceScreenType.watch && watch != null) {
//     //   return watch;
//     // }
//
//     // If none of the layouts above are supplied or we're on the mobile layout then we show the mobile layout
//     return mobile;
//   }
//
//
