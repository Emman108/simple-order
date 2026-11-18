
# Dart Warm-Up: A Simple Order

**Name:** Emmanuel D. Mirabel

## Description

A simple Dart console program that simulates a canteen ordering system. It calculates item subtotals, the total order, and applies a 10% discount when the subtotal is 300 or more.

## Features

- Constant menu map
- OrderItem class
- Final fields
- Subtotal getter
- Menu item lookup
- Null safety
- Total calculation using fold
- 10% discount for orders of 300 or more
- Formatted receipt output
- Guest default name
- Named customer parameter

## How to Run

Run the program:

    dart run

Analyze the code:

    dart analyze

## Sample Output

    Order for Guest
    3 x Adobo rice       255.00
    1 x Iced tea          35.00
    3 x Turon             75.00
    Subtotal             365.00
    Discount 10%          -36.50
    Total                328.50

    Order for Emmanuel
    1 x Adobo rice        85.00
    1 x Iced tea          35.00
    Subtotal             120.00
    Total                120.00
