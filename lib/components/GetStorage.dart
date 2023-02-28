import 'package:get_storage/get_storage.dart';



readGetStorage(String key) {
  return GetStorage().read(key);
}

writeGetStorage(String key, var value) {
  return GetStorage().write(key, value);
}

clearGetStorage(String key){
  return GetStorage().remove(key);
}

islogin(){
  if(readGetStorage(isShowLoginPage)){
    return false;
  }else{
    return true;
  }
}

// Get Storage Key
const isShowLoginPage = 'isShowLoginPage';
const isShowOnBoardingPage = 'OnBoarding';
const userInfoKey = 'userInfo';



