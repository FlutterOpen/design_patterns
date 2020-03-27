/// Created by NieBin on 2020-03-27
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class BuyProduct {
  void buyPhone();
}

class BuyHuWei implements BuyProduct {
  @override
  void buyPhone() {
    print("购买华为手机");
  }
}

class ProxyBuy implements BuyProduct {
  @override
  void buyPhone() {
    BuyProduct hua = BuyHuWei();
    hua.buyPhone();
    print("我爱中国?");
  }
}
