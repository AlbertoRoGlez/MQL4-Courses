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
   Alert("If/else if/else and switch statements");
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
   
   //switch
   //if - else if - else
   int numDayOfWeek = DayOfWeek();
   string dayOfWeek;
   
   //in this language, switches only work on integers
   switch (numDayOfWeek)
   {
      case 1: dayOfWeek = "Monday"; break;
      case 2: dayOfWeek = "Tuesday"; break;
      case 3: dayOfWeek = "Wednesday"; break;
      case 4: dayOfWeek = "Thursday"; break;
      case 5: dayOfWeek = "Friday"; break;
      case 6: dayOfWeek = "Saturday"; break;
      case 0: dayOfWeek = "Sunday"; break;
      default: dayOfWeek = "Error";
   }
   
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
   else if(dayOfWeek == "Error")
   {
      Alert("Error, day of week doesn't exists");
   }
   else
   {
      Alert("It's the weekend, no trading");
   }
  }
//+------------------------------------------------------------------+
