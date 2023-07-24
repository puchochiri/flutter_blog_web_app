import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller; //컨트롤러 변수생성

  HomeScreen({Key? key}) : super(key: key);

  //오버라이드
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // 앱바 위젯 추가
        // 배경색 지정
        backgroundColor: Colors.orange,
        // 앱 타이틀 설정
        title: Text('Code Factory'),
        // 가운데 정렬
        centerTitle: true,
        //Appbar의 actions 매개변수
        actions: [
          IconButton(
              //눌렀을 때 콜백 함수 설정
              onPressed: () {
                if(controller != null){
                  controller!.loadUrl('https://blog.codefactory.ai');
                }
              }, 
              icon: Icon(
                Icons.home,
              ))
          
        ],
      ),
      body: WebView( //WebView 추가하기
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller; //위젯에 컨트롤러 저장
        },
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
    throw UnimplementedError();
  }

}