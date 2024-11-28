import 'package:flutter/material.dart';


class SoulationTask extends StatelessWidget {
  const SoulationTask({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Task 1',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: ListView.separated(
                itemBuilder: (context, index) => Card(
                  color: Colors.white60,
                      child: Column(
                        children: [
                          const Row(children: [
                            Icon(Icons.info_outline),
                            SizedBox(width: 10,),
                            Text('25 * 6 is equal ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),),
                          ],),
                          RadioListTile( title: const Text('125',
                              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),
            
                              ),value: '112', groupValue: '22', onChanged:(value){}),
                          RadioListTile( title: const Text('150',
                              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),
            
                              ),value: '112', groupValue: '22', onChanged:(value){}),
                          RadioListTile(
                            value: "25 ",
                            groupValue: 'groupValue',
                            onChanged: (value) {
                              //   setState(() {
                              //     if (context.read<AppCubit>().isVisaSuccess == true) {
                              //       MotionToast.info(
                              //           description: Text(LocaleKeys.already.tr()))
                              //           .show(context);
                              //     } else {
                              //       groupValue = value.toString();
                              //     }
                              //   });
                            },
                            title: const Text('25',
                              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),
            
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12))),
                            secondary: const Icon(
                                Icons.verified,
                                color: Colors.orange
                            ),
                          ),
                          const Row(children: [
            
                          ],)
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 30,
                    )),
                itemCount: 8),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              color: Colors.blue
            ),width:double.infinity,child: TextButton(onPressed: (){

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
Navigator.pop(context);

// Navigator.pop(context);
            }, child: const Text('Submit',style: TextStyle(color: Colors.white,fontSize: 19),))),
          )
        ],
      ),
    );
  }
}
