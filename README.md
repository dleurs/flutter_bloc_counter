# Flutter Bloc Counter

Using BLoC pattern, there is two options :
1. HomePageBlocProvider : BlocProvider passed in Stateless widget, BlocBuilder and BlocProvider.of<CounterBloc>(context).add
2. HomePageVarBloc : variable _bloc passed in Statefull widget,  BlocBuilder/cubit and _bloc.add

These two options use the same code inside lib/bloc/counter

![](assets/show-project.gif)

https://bloclibrary.dev/#/gettingstarted


https://pub.dev/packages/flutter_bloc


Settup slow internet : 
- https://medium.com/macoclock/ios-simulator-simulates-slow-network-connection-615f910a2f43<br/>
- https://developer.apple.com/download/more/?=for%20Xcode<br/>
- Download Additional_Tools_for_Xcode then install Hardware > Network Link Conditioner.prefPane

![](assets/network-link-1.gif)
![](assets/network-link-2.gif)