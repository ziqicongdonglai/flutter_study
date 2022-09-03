import 'package:flutter/material.dart';

const greenColor = Color(0xFF0C9869);
const greenShadow = Color(0x500C9869);
const lightGreenColor = Color(0xFF92D7AA);
const unSelectedColor = Color(0xFFCCCCCC);

// 植物小店
class PlantShop extends StatefulWidget {
  const PlantShop({Key? key}) : super(key: key);

  @override
  State<PlantShop> createState() => _PlantShopState();
}

class _PlantShopState extends State<PlantShop> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 构建脚手架，包含顶部appBar和body
    return Scaffold(
        appBar: _buildAppBar(),
        // 包含1.贝塞尔弧形部分 和 2.热门推荐 特色植物部分
        // Stack组件可以将子组件叠加显示，根据子组件的顺序依次向上叠加
        body: Stack(
          children: <Widget>[
            // Positioned用于定位Stack子组件，Positioned必须是Stack的子组件
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _buildHeader(),
            ),
            Positioned(
              top: 130,
              left: 20,
              right: 20,
              child: _buildSearch(),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height - 200,
              child: const Body(),
            )
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar());
  }

  // 底部导航栏
  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        // 选中的颜色
        selectedItemColor: greenColor,
        // 未选中的颜色
        unselectedItemColor: unSelectedColor,
        items: const [
          BottomNavigationBarItem(
              label: '',
              // 默认图标
              icon: Icon(
                Icons.filter_vintage_outlined,
              ),
              // 激活时的图标
              activeIcon: Icon(
                Icons.filter_vintage,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_border,
              ),
              activeIcon: Icon(
                Icons.favorite,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_outline,
              ),
              activeIcon: Icon(
                Icons.person,
              )),
        ],
        // 点击事件
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        });
  }

  // 构建顶部Header
  Container _buildHeader() {
    // banner中的字体样式
    const style = TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold);
    return Container(
      // 通过内边距让文字上移
      padding: const EdgeInsets.only(bottom: 50),
      height: 160,
      decoration: const BoxDecoration(
          // 和 appBar背景色保持一致，融为一体
          color: greenColor,
          // 左下右下圆角
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )),
      child: Row(
        // 主轴和交叉轴的对齐方式
        // spaceEvenly 将主轴⽅向上的空白区域均分，使得children之间的空白区域相等，包括首尾child
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          // Row布局，左文右图
          Text(
            'Hi 小鹿扫描！',
            style: style,
          ),
          SizedBox(
            width: 80,
            height: 80,
            // CircleAvatar 代表用户的圆圈的控件
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/avatar.jpg'),
            ),
          )
        ],
      ),
    );
  }

  // 构建搜索区
  Container _buildSearch() {
    // 搜索框
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(offset: Offset(0, 10), blurRadius: 50, color: greenShadow)
        ],
      ),
      child: const TextField(
        autofocus: true,
        // 光标颜色
        cursorColor: greenShadow,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            // suffixIcon图标在末尾
            // prefixIcon图标在开头
            suffixIcon: Icon(
              Icons.search,
              color: lightGreenColor,
              size: 30,
            ),
            // labelText: '搜索'
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 20, color: lightGreenColor)),
      ),
    );
  }
}

// 构建顶部appBar的私有方法
AppBar _buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: greenColor,
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.code,
          color: Colors.white,
        ),
      )
    ],
  );
}

// Body类构建
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 标题字体
    var titleStyle = const TextStyle(
        color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold);
    // 纵向滚动视图，两部分组成：热门推荐和特色植物
    return SingleChildScrollView(
      // 纵向 + Column布局
      scrollDirection: Axis.vertical,
      child: Column(
        // 水平方向（交叉轴）左对齐
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // 顶部距离60
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '热门推荐',
                  style: titleStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: greenColor,
                      // 固定大小
                      fixedSize: const Size(80, 20),
                      // 更大的圆角 让按钮变为胶囊形
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('更多'),
                )
              ],
            ),
          ),
          // RecommendsPlants类，用于构建横向滚动的热门推荐区域
          const RecommendsPlants(),
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '特色植物',
                  style: titleStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: greenColor,
                      fixedSize: const Size(80, 20),
                      // 更大的圆角 让按钮变为胶囊形
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('更多'),
                )
              ],
            ),
          ),
          // FeaturedPlants类，用于构建纵向滚动的特色植物区域
          const FeaturedPlants()
        ],
      ),
    );
  }
}

// 构建热门推荐
class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 水平滚动视图
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          // 调用封装的自定义组件，传入参数值
          RecommendPlantCard(
            image: "images/plant1.png",
            title: '虎皮兰',
            country: '中国',
            price: 440,
          ),
          RecommendPlantCard(
            image: "images/plant2.png",
            title: '凤尾竹',
            country: '中国',
            price: 440,
          ),
          RecommendPlantCard(
            image: "images/plant3.png",
            title: '狐尾天门冬',
            country: '非洲',
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RecommendPlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 60),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: size.width * 0.4,
            height: 150,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10), blurRadius: 50, color: greenShadow)
                ]),
            child: Row(
              children: <Widget>[
                // 名称、产地
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(
                      country.toString(),
                      style: const TextStyle(color: greenShadow),
                    )
                  ],
                ),
                // Spacer用于撑开Row、Column、Flex的子控件的空隙。
                const Spacer(),
                // $需要转义
                Text("\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.green))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          // 调用封装的自定义组件，传入图片地址
          FeaturedPlantCard(
            image: "images/plant1.png",
          ),
          FeaturedPlantCard(
            image: "images/plant2.png",
          ),
          FeaturedPlantCard(
            image: "images/plant3.png",
          ),
        ],
      ),
    );
  }
}

// 自定义类，定义图片地址，使用卡片构建
class FeaturedPlantCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const FeaturedPlantCard({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment：Alignment.center
      margin: const EdgeInsets.all(10),
      height: 320,
      // child：Image.asset(image)
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
