//+------------------------------------------------------------------+
//|                                                      ForLoop.mq4 |
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
   Alert("For loops");
   
   for(int i = 0; i < 5; i++)
   {
      Alert("Hello: " + i);
   }
   
   Alert("");
   
   for(int i = 0; i < 10/*Bars*/; i++)
   {
      Alert(Time[i] + " " + Open[i] + " " + High[i] + " " + Low[i] + " " + Close[i] + " " + Volume[i]);
   }
   
   Alert("");
   
      for(int i = 0; i < Bars; i++)
   {
      if(Close[i] < 22333.00)
      {
         Alert("Price below 22333.00, closing for loop");
         break; //We can also close a for loop using a break;
      }
      
      Alert(Time[i] + " " + Open[i] + " " + High[i] + " " + Low[i] + " " + Close[i] + " " + Volume[i]);
      
   }
   
   Alert("");
   Alert("While loop");
   
   bool notInPosition = True;
   int x = 0;
   
   while(notInPosition)
   {
      Alert(Time[x] + " " + Open[x] + " " + High[x] + " " + Low[x] + " " + Close[x] + " " + Volume[x]);
      
      if(Close[x] < 22333.00)
      {
         Alert("Price below 22333.00, closing while loop");
         notInPosition = False;
      }
      
      x++;
   }
   
  }
//+------------------------------------------------------------------+
