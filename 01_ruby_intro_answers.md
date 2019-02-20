# Ruby Intro Answer Sheet

## Check your ruby version
Your ruby version: 2.5.1

## Floats and integers 
1. 3.0 / 2
    1. Expected (integer or float):  int    
    2. Actual (integer or float):float
    3. Answer: 1.5
2. 3 / 2.0
    1. Expected (integer or float):    int  
    2. Actual (integer or float):float
    3. Answer: 1.5
3. 4 ** 2.0
    1. Expected (integer or float):  int    
    2. Actual (integer or float):int
    3. Answer: 16.0
4. 4.1 % 2
    1. Expected (integer or float): float     
    2. Actual (integer or float):float
    3. Answer: 0.09999999999999964

## Strings
1. "tom" * 3
    * Expected:    "tomtomtom"        
    * Actual:"tomtomtom"
2. "tom" + "tom"
    * Expected:  "tomtom"          
    * Actual:"tomtom"
3. "tom" + 1
    * Expected:  "tom"         
    * Actual:no implicit conversion
4. "tom" / 2
    * Expected:  wont work          
    * Actual:(undefined method `/' for "tom":String)

## Calculations in IRB
1. How many hours are in a year?
    * Answer:365 * 24 = 8760
2. How many minutes are in a decade?
    * Answer:60 * 24 *365 * 10 = 5256000
3. How many seconds old are you?
    * Answer:60 * 60 * 24 * 365 * 25 = 788400000