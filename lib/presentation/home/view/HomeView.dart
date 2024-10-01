import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homeview extends StatelessWidget {
  Homeview({super.key});

  late TextTheme textTheme;
  late Size deviceSize;

  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(10),
          child:
              const Image(image: AssetImage("assets/swift_icon_removed.png")),
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("About"),
          )
        ],
      ), */
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: deviceSize.height * .7,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6 - 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Everything here is",
                          style: textTheme.displaySmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Built with Swift",
                          style: textTheme.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "everything about swiftui ",
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "you can also see swift projects here",
                          style: textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * .4 - 16,
                    child: Center(
                      child: SizedBox(
                          height: deviceSize.height * .25,
                          width: deviceSize.width * .25,
                          child: Image.asset("assets/swift_icon_removed.png")),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  "Blog",
                  style: textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/sample_article_image.png")),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.2),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 10,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "A Full Guide to Localization in SwiftUI ( New Structure )",
                                    style: textTheme.titleLarge!
                                        .copyWith(fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "In today’s global app market, providing a localized experience is crucial to ensuring a broad audience can engage with your app in their native language. Whether you’re building a new app or adding features to an existing one, SwiftUI makes localization simpler and more streamlined than ever before.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 16,
                                        backgroundColor:
                                            Colors.grey.withOpacity(.2),
                                        child: Image.asset(
                                          "assets/swift_icon_removed.png",
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "@kamay",
                                        style: textTheme.labelMedium!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "02.10.2024",
                                        style: textTheme.labelMedium!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        const Spacer(
                          flex: 1,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
                height: deviceSize.height * .5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    "assets/follow_us.gif",
                  ),
                )),
                child: Container(
                  color: Colors.black.withOpacity(.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      socialIcon("x_icon", "https://x.com/buildwithswift"),
                      socialIcon(
                          "medium_icon", "https://medium.com/@builtwithswift"),
                      socialIcon("website", "https://kamay.dev/")
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String asset, String url) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () => launchUrl(Uri.parse(url)),
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 4,
                offset: const Offset(4, 8),
              ),
            ],
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(
            "assets/$asset.png",
            color: const Color(0xffe56f3e),
          ),
        ),
      ),
    );
  }
}
// e56f3e
