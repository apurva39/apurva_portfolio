
import 'package:apurva_portfolio_new/about/aboutMobile.dart';
import 'package:apurva_portfolio_new/portfolio/portfolio.dart';
import 'package:apurva_portfolio_new/services/services.dart';
import 'package:apurva_portfolio_new/widgets/arrowOnTop.dart';
import 'package:apurva_portfolio_new/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'about/about.dart';
import 'animations/entranceFader.dart';
import 'constants.dart';
import 'contact/contact.dart';
import 'home/home.dart';
import 'navBar/navBarLogo.dart';
// import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  // launchURL(String url) async
  // {
  //   if(await canLaunch(url))
  //     {
  //       await launch(url, forceWebView : true);
  //     }
  //   else
  //     {
  //       throw 'Could not launch $url';
  //     }
  // }
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController=ScrollController(initialScrollOffset: 25.0);

  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName=[
    "Home",
    "About",
    "Projects",
    "Services",
    "Contact"
  ];

  final List<IconData> _sectionsIcons=[
    // CupertinoIcons.home,
    // CupertinoIcons.,
    // CupertinoIcons.s,
    // CupertinoIcons.home,
    // CupertinoIcons.phone,
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.phone,


  ];
  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Portfolio();
    } else if (i == 3) {
      return Services();
    }
     else if (i == 4) {
      return Contact();
    }
    // else if (i == 5) {
    //   return SizedBox(
    //     height: 40.0,
    //   );
    // }
    else if (i == 6)
    {
      return ArrowOnTop(
        onPressed: () => _scroll(0),
      );
    }
    else if (i == 7) {
      return Footer();
    }
    else {
      return Container();
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _appBarTabDesktop()
          : AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: kPrimaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }
  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
      offset: Offset(0, -20),
      delay: Duration(seconds: 3),
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          hoverColor: kPrimaryColor,
          onPressed: () => _scroll(index),
          child: Text(
            childText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
          hoverColor: kPrimaryColor,
          onPressed: () => _scroll(index),
          child: ListTile(
            leading: Icon(
              icon,
              color: kPrimaryColor,
            ),
            title: Text(childText),
          )),
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? EntranceFader(
          duration: Duration(seconds: 1),
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          child: NavBarLogo())
          : EntranceFader(
             offset: Offset(0, -20),
             duration: Duration(seconds: 1),
        delay: Duration(seconds: 3),
            child: NavBarLogo(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
      ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              // onPressed: () {
              //   setState(() {
              //     // return AboutMobile();
              //   });
              //   // var url = 'http://www.africau.edu/images/default/sample.pdf';
              //   // launch(url);
              //   // html.window.open(
              //   //     'https://drive.google.com/file/d/1DmV1XpXdcrMtOunWSNzm0-2pdrcFTEDT/view?usp=sharing',
              //   //     "pdf");
              // },
              onPressed: () async {
                const url = 'https://blog.logrocket.com';
                if(await canLaunch(url)){
                  await launch(url);
                }else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                "Resume",
                style: TextStyle(fontWeight: FontWeight.w200,fontStyle: FontStyle.italic),
                // style: GoogleFonts.montserrat(
                //   fontWeight: FontWeight.w200,
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: NavBarLogo(
                height: 28,
              ),
            ),
            for (int i = 0; i < _sectionsName.length; i++)
              _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  const url="https://www.youtube.com/";
                  launchURL(url);
                },
                child: ListTile(
                  leading: Icon(
                    Icons.book,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Resume",
                    style: TextStyle(fontWeight: FontWeight.w200,fontStyle: FontStyle.italic),
                    // style: GoogleFonts.montserrat(
                    //   fontWeight: FontWeight.w200,
                    // ),
                  ),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  const url = 'https://blog.logrocket.com';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text("shdsd"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void launchURL(String url) {}
}


