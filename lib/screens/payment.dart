import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';



class PayementPage extends StatefulWidget {
  @override
  _PayementPageState createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {

  Razorpay razorpay;

  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handleErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }


  void openCheckout(){
    var options = {
      "key" : "rzp_test_bIRyoc71bUf6Cp",
      "amount" : num.parse(textEditingController.text)*100,
      "name" : "Sample App",
      "description" : "Payment for the some random product",
      "prefill" : {
        "contact" : "1234567890",
        "email" : "test@gmail.com",
      },
      "external" : {
        "wallets" : ["PayTM"]
      }
    };

    try{
      razorpay.open(options);


    }catch(e){
      print(e.toString());
    }


  }

  void handlePaymentSuccess(){
    print("Payment success");
    Toast.show("Payment success", context);
  }

  void handleErrorFailure(){
    print("Payment Error");
    Toast.show("Payment Error", context);
  }

  void handleExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", context, duration: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Razor Pay")),
      body: Column(
        children: [
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: "amount to pay",
            ),
          ),
          SizedBox(height: 12.0,),
          ElevatedButton(onPressed: (){
            openCheckout();           
          }, child: Text("Pay Now"))
        ],
      ),
      
    );
  }
}