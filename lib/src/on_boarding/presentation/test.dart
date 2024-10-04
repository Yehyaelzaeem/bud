import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/styles/styles.dart';
import 'package:bud/core/widgets/images/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/images/app_images.dart';
import '../../../core/widgets/drop_down/drop_down.dart';
import '../../../core/widgets/images/image_network.dart';
import '../../../core/widgets/switch/custom_switch.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          100.height,
          Text('Testdsfsf',style: TextStyles.font16Black500Weight,),
          200.height,
          CustomSwitch(
            title: 'Test',
            onToggle: (bool  X) {
            print(X);
          },),
          50.height,
          Padding(padding: 16.paddingHorizontal,
          child:  DropDownField(
              title: 'asdadssadsadsad',
              items: const [DropDownItem(id: '1', title: 'Test', value: 's', icon: Icons.add),DropDownItem(id: '2', title: 'Test2', value: '1', icon: Icons.remove),DropDownItem(id: '1', title: 'Test3', value: '1', icon: Icons.dangerous_sharp),DropDownItem(id: '1', title: 'Test', value: '1', icon: Icons.add),DropDownItem(id: '1', title: 'Test4', value: '1', icon: Icons.save),DropDownItem(id: '1', title: 'Test88', value: '1', icon: Icons.satellite_alt),],
              onChanged: (DropDownItem selected) {

                print(selected.id);
                print(selected.title);
              }),

          )


        ],
      )
    );
  }
}
