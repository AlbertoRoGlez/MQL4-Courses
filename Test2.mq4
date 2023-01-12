//+------------------------------------------------------------------+
//|                                                        Test2.mq4 |
//|                                                  Alberto Rosales |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <CustomFunctions01.mqh>

double signalPrice = 1.28956;
double takeProfitPips = 40;
double stopLossPips = 30;
double stopLossPrice;
double takeProfitPrice;
   
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
   //---
   Alert("");

   if (Ask < signalPrice)
   {
      //buy
      Alert("The price is bellow signalPrice, sending buy order");
      stopLossPrice = CalculateStopLoss(true, Ask, stopLossPips);
      takeProfitPrice = CalculateTakeProfit(true, Ask, takeProfitPips);
      Alert("The entry price is: " + Ask);
      Alert("The stop loss price is: " + stopLossPrice);
      Alert("The take profit price is: " + takeProfitPrice);
      
      //Send buy order
   }
   else if (Bid > signalPrice)
   {
      //sell
      Alert("The price is above signalPrice, sending sell order");
      stopLossPrice = CalculateStopLoss(false, Bid, stopLossPips);
      takeProfitPrice = CalculateTakeProfit(false, Bid, takeProfitPips);
      Alert("The entry price is: " + Bid);
      Alert("The stop loss price is: " + stopLossPrice);
      Alert("The take profit price is: " + takeProfitPrice);
      
      //Send sell order
   }
   
   Alert("The pip value is:" + GetPipValue());
   Alert("");
   PrintStopLossPips();
}
//+------------------------------------------------------------------+

void PrintStopLossPips()
{
   Alert(stopLossPips);
}