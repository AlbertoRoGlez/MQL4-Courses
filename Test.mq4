//+------------------------------------------------------------------+
//|                                                         Test.mq4 |
//|                                                  Alberto Rosales |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Alberto Rosales"
#property link      ""
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      Alert("Hello World!");
      Print("Hello World!");
      Comment("Hello World!");
      
      //--------- Variables
      Alert("---------Variables---------");
      double price = 1.2495; // we have to tell what type of variable we are going to store
      int maxLossInPips = 50;
      bool b_IsTradingAllowed = false;
      string MaxLossMessage = "Max Loss for the day exceeded, shutting down system.";
      
      Alert(price);
      Alert(maxLossInPips);
      Alert(b_IsTradingAllowed);
      Alert(MaxLossMessage);
      
      //--------- Predefined Variables
      Alert("---------Predefined Variables---------");
      double askPrice = Ask;
      Alert("The ask price is = " + askPrice);
      Alert("The predefined variable of ask price is = " + Ask);
      Alert("The bid price is = " + Bid);
      Alert("The number of digits in the value for this asset is = " + Digits); // Digits are the value numbers after the point
      
      //--------- Arithmetic Operations
      Alert("---------Arithmetic Operations---------");
      //|Symbol|------------------Operation----------------------|---------Example--------|--Analog---|
      //|  +   | Addition of values                              | x + 2                  |           |
      //|  -   | Subtraction of values or sign change            | x - 2, y = - y         |           |
      //|  *   | Multiplication of values                        | 3 * x                  |           |
      //|  /   | Quotient of division                            | x / 5                  |           |
      //|  %   | Residue of division                             | minutes = time % 60    |           |
      //|  ++  | Addition of 1 to the values of the variable     | y++                    | y = y + 1 |
      //|  --  | Subraction of 1 from the values of the variable | y--                    | y = y - 1 |
      //|---------------------------------------------------------------------------------------------|
      int nb1 = 5;
      int nb2 = 2;
      int totalsum = nb1 + nb2;
      int totalsub = nb1 - nb2;
      Alert(nb1 + " + " + nb2 + " = " + totalsum);
      Alert(nb1 + " - " + nb2 + " = " + totalsub);
      
      string name = "Alberto";
      Alert("Your name is: " + name);
      
      double accountSize = 10000.00;
      double maxLossPerTradePrc = 0.02;
      int maxLossPerTrade = accountSize * maxLossPerTradePrc;
      Alert("Your max loss per trade is: " + maxLossPerTrade + "USD");
      
      double entryPrice = 1.75241;
      double exitPrice = 1.75741;
      double pipValue = 0.0001;
      double pipsGenerated = MathRound((exitPrice - entryPrice) / pipValue); //We use MathRound here because the way that MT4 works sometimes
                                                                             //gives us a number very close to what it should really be, so we
                                                                             //have to round it. I should explore this later.
      Alert("Your pips generated from your entry price to your exit price were: " + pipsGenerated);
      
      int res1 = 11;
      int res2 = 4;
      int residueResult = res1 % res2;
      Alert("The residue of " + res1 + " % " + res2 + " = " + residueResult);
      
      int tradesExecuted = 0;
      tradesExecuted++;
      Alert("Your total of trades executed is: " + tradesExecuted);
      
      int totalTimeToCheck = 10;
      totalTimeToCheck--;
      Alert("Your total time to check is: " + totalTimeToCheck);
      
      
  }
//+------------------------------------------------------------------+
