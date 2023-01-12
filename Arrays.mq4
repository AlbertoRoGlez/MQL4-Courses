//+------------------------------------------------------------------+
//|                                                       Arrays.mq4 |
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
   Alert("");
   //Arrays in MQL4 can only store the same type of value and has to indicate the amount of values when declared.
   int example[4]; //We can also declare arrays without values in it
   int MinStopLossLevels[4] = {10,20,40,100};
   string WeekDays[7] = {"Sunday", "Monday", "Tuesday", "Thursday", "Wednesday", "Friday", "Saturday"};
   Alert(MinStopLossLevels[2]);
   Alert("WeekDays[0] = " + WeekDays[0]);
   Alert("WeekDays[1] = " + WeekDays[1]);
   Alert("WeekDays[2] = " + WeekDays[2]);
   Alert("WeekDays[3] = " + WeekDays[3]);
   Alert("WeekDays[4] = " + WeekDays[4]);
   Alert("WeekDays[5] = " + WeekDays[5]);
   Alert("WeekDays[6] = " + WeekDays[6]);
   
   Alert("Today is " + WeekDays[DayOfWeek()]);
   
   int MinPipLevels[2,3] = {20,50,80,  120,150,180}; //We create our array with 2 rows and 3 variables in each row
   //To get to a value we have to indicate first the row, and second the column where it should be (MinPipLevels[0, 2]) will return 80
   Alert(MinPipLevels[0,2]);
   //150
   Alert(MinPipLevels[1,1]);
   Alert("");
   Alert("The time of the 5th candle is: " + Time[6]);
   Alert("The open of the 5th candle is: " + Open[6]);
   Alert("The high of the 5th candle is: " + High[6]);
   Alert("The low of the 5th candle is: " + Low[6]);
   Alert("The close of the 5th candle is: " + Close[6]);
   Alert("The volume of the 5th candle is: " + Volume[6]);
   Alert("");
   Alert("The time of the current candle is: " + Time[0]);
   Alert("The open of the current candle is: " + Open[0]);
   Alert("The high of the current candle is: " + High[0]);
   Alert("The low of the current candle is: " + Low[0]);
   Alert("The close of the current candle is: " + Close[0]);
   Alert("The volume of the current candle is: " + Volume[0]);
  }
//+------------------------------------------------------------------+
