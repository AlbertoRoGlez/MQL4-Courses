//+------------------------------------------------------------------+
//|                                                        enums.mq4 |
//|                                                  Alberto Rosales |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

enum ENUM_TRADING_METHOD //enum is used to create a certain limited set of data.
   {
      Very_Passive,
      Passive,
      Normal,
      Aggressive,
      Very_Aggressive
   };
   
input ENUM_TRADING_METHOD myTradingMethod = Aggressive; //we use enum like a variable type with the certain data it already has
//we can't use a variable that is not in the enum data, that would return an error.

bool bMyTradingIsAggressive = true; //this would equal to the enum valiable we are using above


void OnStart()
  {
//---
      Alert("");
      if(myTradingMethod == Very_Passive)
         {
            Alert("Trading in a very passive way");
         }
      else if(myTradingMethod == Normal)
         {
            Alert("Trading in a normal way");
         }
      else if(myTradingMethod == Aggressive)
         {
            Alert("Trading in an aggressive way");
         };
   
  }
//+------------------------------------------------------------------+
