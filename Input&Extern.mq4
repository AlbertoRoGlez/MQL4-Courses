//+------------------------------------------------------------------+
//|                                                 Input&Extern.mq4 |
//|                                                  Alberto Rosales |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <CustomFunctions01.mqh>
#property show_inputs //This will allows us to modify the input values in MT4

input int stopLossPips = 30; //With input we can not change the value inside the code (stopLossPips++ in the code will return us an error)
extern int takeProfitPips = 40; //Extern allows us to change the value of the variable inside the code (takeProfitPips++)
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Alert("");
   
   //stopLossPips++;
   Alert("stopLossPips = " + stopLossPips);
   takeProfitPips++;
   Alert("takeProfitPips = " + takeProfitPips);
   
  }
//+------------------------------------------------------------------+
