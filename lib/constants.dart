import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xffC0392B);

const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://www.facebook.com/",
  "https://www.instagram.com/",
  "https://twitter.com/",
  "https://www.linkedin.com/in/apurva-anand-01b33b227/",
  "https://github.com/apurva39",
  // "https://medium.com/"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

launch(String url) {
}

canLaunch(String url) {
}

// Community
final kCommunityLogo = [
  'assets/android.jpeg',
  'assets/flutterIsl.png',
  'assets/mysql.png',
  'assets/wordpress.png'
];

final kCommunityLinks = [
  "https://rju.edu.np/",
  "https://www.facebook.com/enfo404",
  "https://dsc.community.dev/u/mvyb4m/",
  "https://www.facebook.com/enfo404"
];

// Tools & Tech
final kTools = ["Flutter", "Dart", "C++", "C", "DSA" ];

final kTools1 = ["Python", "MqSQL", "CSS", "HTML", "Wordpress"];

// services
final kServicesIcons = [
  "services/app.png",
  "services/ui.png",
  "services/rapid.png",
  "services/blog.png",
  "services/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
  "Technical Blog Writing",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "For now, I can only develop Android Apps using Flutter, that's because I don't own a Dell Laptop right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
  "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
  "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
  "I have been writing technical blogs on Medium/bolgger for over a year now. So, I can get you technical blogs with awesome header images, interesting topics.\nCheck out my Medium profile @sarojyadav88505",
  "Working as open source contributor on GitHub with 20+ stars and numerous forks on various projects liked and shared by other developers.\nCheck out my GitHub Profile @sarojyadav88505",
];

final kServicesLinks = [
  "https://www.fiverr.com/sarojyadav335?up_rollout=true",
  "https://www.fiverr.com/sarojyadav335?up_rollout=true",
  "https://www.fiverr.com/sarojyadav335?up_rollout=true",
  "https://google2googlee.blogspot.com/",
  "https://github.com/sarojyadav88505"
];

// projects
final kProjectsBanner = [
  "assets/projects/calculator.png",
  "assets/projects/coffee.png",
  "assets/projects/calculator.png",
  "assets/projects/netflix.png",
  // "assets/projects/medkitB.png",
  // "assets/projects/birthday.png",
  // "assets/projects/hereiamB.png",
  // "assets/projects/covidB.png",
];

final kProjectsIcons = [
  "assets/projects/calculator.png",
  "assets/projects/coffee.png",
  "assets/projects/calculator.png",
  "assets/projects/netflix.png",


];

final kProjectsTitles = [
  "Let's Coffee UI App",
  "Arithematic Calculator App",
  "Static Netflix Clone page",
  "SigIn SignUp Authontication App",

];

final kProjectsDescriptions = [
  ".,Let's Coffee UI App.",
  "Arithematic Calculator App,.",
  "Static Netflix Clone page.",
  "SigIn SignUp Authontication App.",
];

final kProjectsLinks = [
  "https://github.com/sarojyadav88505/who_i_am",
  "https://github.com/sarojyadav88505/birthday_app",
  "https://github.com/sarojyadav88505/corona_app",
  "https://github.com/sarojyadav88505/TikTok-UI",

];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Chandigarh, India",
  "+91 8340776554",
  "apurvaanand101@gmail.com"
];
