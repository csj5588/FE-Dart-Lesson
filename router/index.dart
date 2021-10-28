main() {
  // 路由
  // 1.路由基本用法
  /**
   * Navigator.push() // 跳转
   * Navigator.pop() // 推出
   * 
   * 2.路由表：统一管理路由跳转问题
   * Navigator.pushNamed()
   */
  // MaterialApp(
  //   // 定义APP启动时第一个显示的页面
  //   initialRoute: '/',
  //   routes: {
  //       //当navigating到‘/’ route时，构建FirstScreen widget
  //       '/': (context) => FirstScreen(),
  //       //当navigating 到"/second" route, 构建SecondScreen widget.
  //       '/second': (context) => SecondScreen(),
  //   },
  // );
  /**
   * 路由表基本用法
   * Navigator.pushNamed(context, '/second');
   * Navigator.pop();
   */

  // 3.页面之间传递值
  // pushNamed第三个参数为可选arguments，所以可以表示为任意参数
  // 获取传递的参数
  // final ScreenArguments args = ModalRoute.of(context).settings.arguments;

  // 4.注册
  // MaterialApp(
  //   routes: {
  //     //或者 '/extractArguments' ：(context) => ExtractArgumentsScreen(),
  //     ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
  //   },     
  // );
  // 跳转页面
  //  Navigator.pushNamed(
  //     context,
  //     ExtractArgumentsScreen.routeName,
  //     arguments: ScreenArguments(
  //       '我是被传递的title',
  //       '我是被传递的message.',
  //     )
  //  )
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //       builder: (context) => ExtractArgumentsScreen(),
  //       settings: RouteSettings(
  //           arguments: ScreenArguments(
  //               '我是title',
  //               '我是message.',
  //            ),
  //        ) ,
  //    ),
  //  );

  // 5.携带参数退出
  // final result = await Navigator.push(
  //   context,
  //   // Create the SelectionScreen in the next step.
  //   MaterialPageRoute(builder: (context) => SecondScreen()),
  // );
  // 返回页面
  // Navigator.pop(context, 'xxx!');
  // 由于源码中 pop的方法是Object，这里可以传递任意类型参数返回
  // 高级用法
  // PushAndRemove：跳转到一个新的页面并且销毁当前页
  // popUntil：一直退出直到某一个页面
  // pushReplacement：跳转到下一页的时候将之前所有的页面都销毁，先进入再退出
  // popAndPushNamed：退出当前页面并且将新的页面放到它原来的位置上，先退出再进入
  // maybePop：判断依据就是看当前路由是否处在栈中“最底部”的位置，如果不是就退出
  // canPop：返回一个bool值，表示当前页面是否可以退出
}