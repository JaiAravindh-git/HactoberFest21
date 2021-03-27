import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
      
      body: SafeArea(
              child: Column(
          children: [
           
            Container(
              height: 400.0,
              width: 400.0,
              child: Image.asset('images/10.png')
              ),
               Padding(
              padding: const EdgeInsets.fromLTRB(20,30,0,50),
              child: Text("ஆன்லைனில் பணம் செலுத்துங்கள்", style: TextStyle(fontSize : 30.0),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "செலுத்த வேண்டிய தொகை",
                  prefixIcon: Icon(Icons.payment_outlined,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 12.0,),
            ElevatedButton(onPressed: (){
              openCheckout();           
            }, child: Text("பணம் செலுத்துங்கள்"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green
            )),
          ],
        ),
      ),
      
    );
  }
}