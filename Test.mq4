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
      
      //--------- Assignment Operations
      Alert("---------Assignment Operations---------");
      //|Symbol|------------------Operation----------------------|---------Example--------|--Analog---|
      //|  =   | Assignment of the value x to the variable y     | y = x                  |           |
      //|  +=  | Increase of the variable y by x                 | y += x                 | y = y + x |
      //|  -=  | Reduction of the variable y by x                | y -= x                 | y = y - x |
      //|  *=  | Multiplication of the variable y by x           | y *= x                 | y = y * x |
      //|  /=  | Division of the variable y by x                 | y /= x                 | y = y / x |
      //|  %=  | Residue of division of the variable y by x      | y %= x                 | y = y % x |
      //|---------------------------------------------------------------------------------------------|
      
      double totalProfit = 1000.00;
      double tradeProfit = 20.0;
      
      //totalProfit = totalProfit + tradeProfit;
      totalProfit += tradeProfit;
      Alert("Your total profit after winning the last trade is: " + totalProfit);
      
      //totalProfit = totalProfit - tradeProfit;
      totalProfit -= tradeProfit;
      Alert("Your total profit after lossing the last trade is: " + totalProfit);
      // or
      tradeProfit = -20.0;
      totalProfit += tradeProfit;
      Alert("Your total profit after lossing the last trade is: " + totalProfit);
      
      //--------- Relational Operations
      Alert("---------Relational Operations---------");
      //|Symbol|------------------Operation----------------------|---------Example--------|
      //|  ==  | True, if x is equal to y                        | x == y                 |
      //|  !=  | True, if x is not equal to y                    | x != y                 |
      //|  <   | True, if x is less than y                       | x < y                  |
      //|  >   | True, if x is more than y                       | x > y                  |
      //|  <=  | True, if x is equal to or less than y           | x <= y                 |
      //|  >=  | True, if x is equal to or more than y           | x >= y                 |
      //|---------------------------------------------------------------------------------|
      
      string dayOfWeek = "Monday";
      Alert("Today is Tuesday? " + (dayOfWeek == "Tuesday")); //false
      Alert("Today is not Tuesday? " + (dayOfWeek != "Tuesday")); //true
      Alert("What day is today? " + dayOfWeek);
      
      double stopLossPrice = 1.77777;
      double bidPrice = 1.77778;
      Alert("Is the bid price smaller or equal to my stop loss price? " + (bidPrice <= stopLossPrice)); //false
      bidPrice = 1.77776;
      Alert("Is the bid price smaller or equal to my stop loss price? " + (bidPrice <= stopLossPrice)); //true
      bidPrice = Bid;
      Alert("What is the bid price on this chart? " + bidPrice);
      
      //--------- Logical Operations
      Alert("---------Logical Operations---------");
      //|Symbol|------------------Operation----------------------|-----Example-----|--------------------Explanations-------------------|
      //|  !   | NOT (logical negation)                          | !x              | TRUE(1), if the value of the operand is FALSE(0); |
      //|      |                                                 |                 | FALSE(0), if the value of the operand is TRUE(1); |
      //|------|-------------------------------------------------|-----------------|---------------------------------------------------|
      //|  ||  | OR (logical disjunction)                        | x < 5 || x > 7  | TRUE(1), if any value of the values is true       |
      //|------|-------------------------------------------------|-----------------|---------------------------------------------------|
      //|  &&  | AND (logical cojunction)                        | x == 3 && y < 5 | TRUE(1), if all values are true                   |
      //|------------------------------------------------------------------------------------------------------------------------------|
      
      bidPrice = 1.77766;
      bool bIsPriceBellowStop = bidPrice <= stopLossPrice;
      Alert("Is price not bellow stop? (means it should be above): " + !bIsPriceBellowStop + " because it is bellow stop");
  }
//+------------------------------------------------------------------+
