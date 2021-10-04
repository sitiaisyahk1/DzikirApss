import 'package:dzikirapps/model/model_doa.dart';
import 'package:dzikirapps/theme.dart';
import 'package:dzikirapps/ui/detail_screen_doa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DoaHarianPage extends StatelessWidget {
  const DoaHarianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creamColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context); //pop untuk kembali kehalaman sebelumnnya
              }, icon: Icon(
                Icons.arrow_back, size: 24, color: purpleColor,
              )),
              Row(
                children: [
                  Container(
                    width: 150, margin: EdgeInsets.only(left: edge),
                    child: Text(
                        "Do\'a Do\'a Harian", style: blacksPoppins.copyWith(fontSize: 28), maxLines: 2,
                    ),
                  ),
                  Flexible(child: Image.asset('assets/img_2.png', width: 150,))
                ],
              ),
              SizedBox(height: 18),
              Container(padding: EdgeInsets.symmetric(horizontal: edge),
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                    itemCount: dataListDoa.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  itemBuilder: (context, index){
                    return Transform.translate(
                        offset: Offset(0.0, index.isOdd ? 30 : 0.0),
                      child: ItemDoa(context, index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget ItemDoa(BuildContext context, int index){
    ModelDoa doa = dataListDoa[index];

    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) =>
                DetailScreenDoa(
                  doa: doa,)
        ));
      },
      child: Container(
        height: 200,
        padding: EdgeInsets.all(edge),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            color: purpleColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(doa.imageCover),
            SizedBox(height: 10),
            Text(
              doa.titleCover,
              style: whiteNormal.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
