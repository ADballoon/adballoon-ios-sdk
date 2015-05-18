//
//  ABError.h
//  ADBalloon
//
//  Created by Hang on 12/22/14.
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    AB_ERROR_CODE_ERROR_CONNECTION, //서버와의 연결이 되지 않을 경우 발생
    AB_ERROR_CODE_ERROR_IO, //서버와의 연결이 원활하지 않을 경우 발생
    AB_ERROR_CODE_ERROR_NO_DATA, //광고 데이터가 없을 경우 발생
    AB_ERROR_CODE_NETWORK_ERROR, // 단말기의 네트워크 연결이 되어있지 않을때 발생
    AB_ERROR_CODE_FAILE_TYPE, //발급 받은 InventoryCode와 생성한 객체의 타입이 다를 경우 발생
    AB_ERROR_CODE_ERROR_ETC, //그 외의 상황으로 인해 발생
} ABErrorType;
