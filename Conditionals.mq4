//+------------------------------------------------------------------+
//|                                                 Conditionals.mq4 |
//|                                                  Alberto Rosales |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Alert("If/else statements");
   //if-else
   double entryPrice = 1.77542;
   int maxLossInPips = 20;
   double stopLossPrice;
   bool bIsLongPosition = false;
   
   if(bIsLongPosition)
   {
      stopLossPrice = entryPrice - maxLossInPips * 0.0001;
   }
   else
   {
      stopLossPrice = entryPrice + maxLossInPips * 0.0001;
   }
   
   Alert("entryPrice: " + entryPrice);
   Alert("Stop Loss sent at: " + stopLossPrice);
   
   
   //if-else if-else
   string dayOfWeek = "Sunday";
   
   if (dayOfWeek == "Monday")
   {
      Alert("We are Monday. Let's try to enter new trades");
   }
   else if(dayOfWeek == "Tuesday" || dayOfWeek == "Wednesday" || dayOfWeek == "Thursday")
   {
      Alert("We are " + dayOfWeek + ". Let's try to enter new trades or close existing trades");
   }
   else if(dayOfWeek == "Friday")
   {
      Alert("We are " + dayOfWeek + ". Don't enter new trades and close existing trades");
   }
   else
   {
      Alert("It's the weekend, no trading");
   }
  }
//+------------------------------------------------------------------+
