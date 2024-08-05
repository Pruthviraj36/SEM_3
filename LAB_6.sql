-- 1. Display the result of 5 multiply by 30.
SELECT 5 * 30 AS result;

-- 2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS abs_25, ABS(25) AS abs_25, ABS(-50) AS abs_50, ABS(50) AS abs_50;

-- 3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS ceil_25_2, CEILING(25.7) AS ceil_25_7, CEILING(-25.2) AS ceil_neg_25_2;

-- 4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS floor_25_2, FLOOR(25.7) AS floor_25_7, FLOOR(-25.2) AS floor_neg_25_2;

-- 5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5 % 2 AS remainder_5_2, 5 % 3 AS remainder_5_3;

-- 6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3, 2) AS power_3_2, POWER(4, 3) AS power_4_3;

-- 7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS sqrt_25, SQRT(30) AS sqrt_30, SQRT(50) AS sqrt_50;

-- 8. Find out the square of 5, 15, and 25.
SELECT POWER(5, 2) AS square_5, POWER(15, 2) AS square_15, POWER(25, 2) AS square_25;

--9. Find out the value of PI.
SELECT PI() AS ValueOfPI;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT 
  ROUND(157.732, 2) AS RoundedTo2Decimals,
  ROUND(157.732, 0) AS RoundedTo0Decimals,
  ROUND(157.732, -2) AS RoundedToNegative2Decimals;

--11. Find out exponential value of 2 and 3.
SELECT 
  EXP(2) AS ExponentialOf2,
  EXP(3) AS ExponentialOf3;

--12. Find out logarithm having base e of 10 and 2.
SELECT 
  LOG(10) AS NaturalLogOf10,
  LOG(2) AS NaturalLogOf2;

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT 
  LOG(5, 10) AS LogBase10Of5,
  LOG(100, 10) AS LogBase10Of100;

--14. Find sine, cosine and tangent of 3.1415.
SELECT 
  SIN(3.1415) AS SineOfPi,
  COS(3.1415) AS CosineOfPi,
  TAN(3.1415) AS TangentOfPi;

--15. Find sign of -25, 0 and 25.
SELECT 
  SIGN(-25) AS SignOfNegative25,
  SIGN(0) AS SignOf0,
  SIGN(25) AS SignOf25;

--16. Generate random number using function
SELECT RAND() AS RandomNumber;