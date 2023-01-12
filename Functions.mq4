//+------------------------------------------------------------------+
//|                                                    Functions.mq4 |
//|                                                  Alberto Rosales |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <CustomFunctions01.mqh>
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Alert("Functions, preprocessor & storage classes");
   DayOfWeekAlert();
   PrintOutAccountInfo();
   
   int Total = addFunc(5,10);
   Alert(Total);
   Alert(GetStopLossPrice(true,1.2255,20));
  }
//+------------------------------------------------------------------+

