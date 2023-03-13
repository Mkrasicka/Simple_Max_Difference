# Simple_Max_Difference

In securities research, an analyst will look at a number of attributes for a stock. One analyst would like to keep a record of the highest positive spread between a closing price and the closing price on any prior dayin history. Determine the maximum positive spread for a stock given its price history. Ifthe stock remains flat or declines for the full period, return -1.
Example 0
 px = [7, 1, 2, 5]

Calculate the positive difference between each price and its predecessors:
- At the first quote, there is no earlier quote to compare to,. 
-At the second quote, there was no earller price that was lower
-At the third quote the price is higher than the second quote:
2-1 = 1
- for the fourth quote the price is higher than the second and the third quotes:
5 -2 = 3
5-1 = 4
- the maximum difference is 4

Complete the function maxDifference with the following parameters:
 *int px[n] - an array of stock prices(quotes)
*int - the maximum difference between two prices as decsribed above
