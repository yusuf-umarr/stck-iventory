import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/constants.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/chart.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/storage_info_card.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      // height: 500,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Storage Details",
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: defaultPadding),
            const Chart(),
            const StorageInfoCard(
              title: 'Document Files',
              svgSrc: "assets/icons/Documents.svg",
              amountOfFiles: '1.8GB',
              numOfFile: 1339,
            ),
            const StorageInfoCard(
              title: 'Media Files',
              svgSrc: "assets/icons/media.svg",
              amountOfFiles: '2.8GB',
              numOfFile: 1539,
            ),
            const StorageInfoCard(
              title: 'Other Files',
              svgSrc: "assets/icons/folder.svg",
              amountOfFiles: '1.1GB',
              numOfFile: 133,
            ),
            const StorageInfoCard(
              title: 'Other Files',
              svgSrc: "assets/icons/unknown.svg",
              amountOfFiles: '2.8GB',
              numOfFile: 339,
            ),
          ],
        ),
      ),
    );
  }
}
