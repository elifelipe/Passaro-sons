import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class adWidget extends StatefulWidget {
  final int adScreem;
  static const homeScreem = 1;
  static const card = 2;
  const adWidget({super.key, required this.adScreem});

  @override
  State<adWidget> createState() => _adWidgetState();
}

class _adWidgetState extends State<adWidget> {
  BannerAd? _myBanner;

  @override
  void initState() {
    _myBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-8781801467559084/4516789225",
      listener: BannerAdListener(),
      request: AdRequest(),
    );
    _myBanner?.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: _myBanner!.size.height.toDouble(),
      child: AdWidget(
        ad: _myBanner!,
      ),
    );
  }

  String _getAdId(int screen) {
    switch (screen) {
      case adWidget.homeScreem:
        return 'ca-app-pub-8781801467559084/4516789225';
      case adWidget.card:
        return 'ca-app-pub-8781801467559084/4516789225';
      default:
        return '';
    }
  }
}
