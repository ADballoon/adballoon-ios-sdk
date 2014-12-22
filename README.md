# ADBalloon iOS SDK GUIDE

### Copyright (c) 2014 By ADBalloon All rights reserved.
---

### ADBalloon SDK 구성
* ADBalloonLib/
	libADBalloon.a : ADBalloon 광고 라이브러리
* SampleADBalloon/
	- ABBannerViewController.m : 띠배너 광고 샘플
	- ABFloatingViewController.m : 플로팅배너 광고 샘픙 
	- ABInterstitialViewController.m : 전면 광고 샘플

### ADBalloon SDK 사용 순서
* Step 1 : [개발자 센터](http://devcenter.adballoon.co.kr "ADBalloon 개발자 센터")에서 InventoryCode 발급
* Step 2 : 프로젝트에 라이브러리 추가
* Step 3 : 프로젝트에 코드 적용

## 코드적용

### 1. 띠배너 (ABBannerView Class)
(1) 배너를 붙일 FrameRect으로 객체를 생성합니다.   
```objectivec
	ABBannerView *bannerView = [[ABBannerView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
```
(2) 개발자센터에서 발급받은 인벤토리 코드를 설정합니다.
```objectivec
	bannerView.inventoryCode = @"발급받은 인벤코드";
```
(3) 배너가 나올 뷰에 addSubview를 해줍니다.
```objectivec
	[self.view addSubview:bannerView];
```
(4) 광고 요청을 합니다.
```objective-c
	[bannerView requestAD];
```

* 띠배너는 기본 10초 간격으로 새로운 광고를 자동으로 요청합니다. 뷰가 사라지는 시점과 보이는 시점에서 광고요청과 중지요청을 해야합니다.
```objective-c
//뷰가 보이는 시점에 광고요청을 합니다.
-(void)viewWillAppear:(BOOL)animated
{
	[self.abBannerView requestAD]; 
}
//뷰가 사라지는 시점에 중지요청을 합니다.
-(void)viewDidDisappear:(BOOL)animated
{
	[self.abBannerView stopRequestAD];
}
```
* 띠배너의 자동요청시간은 기본 10초이나 개발자가 지정해 줄수입습니다. (최소 10초 이상 가능)
```objectivec
bannerView.requestInterval = 20;   //0 으로 지정할시 한번만 호출합니다. 
```

### 2. 플로팅배너 (ABFloatingView Class)
(1) 배너를 붙일 FrameRect으로 객체를 생성합니다.   
```objectivec
	ABFloatingView *floatingView = [[ABFloatingView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
```
(2) 개발자센터에서 발급받은 인벤토리 코드를 설정합니다.
```objectivec
	floatingView.inventoryCode = @"발급받은 인벤코드";
```
(3) 배너가 나올 뷰에 addSubview를 해줍니다.
```objectivec
	[self.view addSubview:floatingView];
```
(4) 광고 요청을 합니다.
```objectivec
	[floatingView requestAD];
```
* 플로팅배너는 자동으로 닫기버튼이 생성됩니다. isShowCloseButton 프로퍼티로 닫기버튼을 숨길수 있습니다.
```objectivec
	floatingView.isShowCloseButton = NO;
```
* 사용자정의로 닫기를 할때 cloasAD 메서드를 사용합니다.
```objectivec
	[floatingView closeAD];
```

### 3. 전면광고 (ABInterstitialController Class)
(1) 전면광고 객체를 발급받은 인벤토리 코드와 함께 생성합니다.
```objectivec
	ABInterstitialController *interstitialController = [[ABInterstitialController alloc] initWithInventoryCode:@""];
```
(2) 전면광고는 뷰로 이루어져 있지않아 addSubview를 할 필요가 없고 광고요청을 하면 바로 팝업으로 보여집니다.
```objectivec
	[interstitialController requestADAndShow];
```
* 전면광고는 닫기버튼이 자동으로 생성되며, 사용자정의로 닫기를 할때 cloasAD 메서드를 사용합니다.
```objectivec
	[interstitialController closeAD];
```

### 4. Delegate
(1) 띠배너, 플로팅배너 delegate
```objectivec
//광고수신 실패시
-(void)abView:(ABView *)banner didFailToReceiveAdWithError:(ABError)error;
//광고수신후 보여질때
-(void)abViewWillShow:(ABView *)banner;
//광고가 닫힐때 
-(void)abViewWillClose:(ABView*)banner;
//사용자의 배너클릭으로 인한 delegate , 다른앱을 호출하게 되면 willLeave 파라메터에 YES값이 들어있고, 리턴값이 YES면 광고액션을 취하게 됩니다. 
-(BOOL)bannerViewActionShouldBegin:(ABView *)banner willLeaveApplication:(BOOL)willLeave;
```
(2) 전면광고 delegate 
```objectivec
//광고수신 실패시
-(void)abInterstitialControllerWillLoadAD:(ABInterstitialController *)controller;
//광고수신후 보여질때
-(void)abInterstitialControllerWillShow:(ABInterstitialController *)controller;
//광고가 닫힐때 
- (void)abInterstitialController:(ABInterstitialController *)controller;
//사용자의 배너클릭으로 인한 delegate , 다른앱을 호출하게 되면 willLeave 파라메터에 YES값이 들어있고, 리턴값이 YES면 광고액션을 취하게 됩니다. 
-(BOOL)abInterstitialControllerActionShouldBegin:(ABInterstitialController *)controller willLeaveApplication:(BOOL)willLeave;
```

### 5. 에러코드 
```c
typedef enum {
    AB_ERROR_CODE_ERROR_CONNECTION, //서버와의 연결이 되지 않을 경우 발생
    AB_ERROR_CODE_ERROR_IO, //서버와의 연결이 원활하지 않을 경우 발생
    AB_ERROR_CODE_ERROR_NO_DATA, //광고 데이터가 없을 경우 발생
    AB_ERROR_CODE_NETWORK_ERROR, // 단말기의 네트워크 연결이 되어있지 않을때 발생
    AB_ERROR_CODE_FAILE_TYPE, //발급 받은 InventoryCode와 생성한 객체의 타입이 다를 경우 발생
    AB_ERROR_CODE_ERROR_ETC, //그외의 상황으로 인해 발생
} ABErrorType;
```

### 6. 그외

inventoryCode가 입력이 안되었거나, 광고타입과 맞지않는 코드일시 Exception이 발생하게 됩니다.



