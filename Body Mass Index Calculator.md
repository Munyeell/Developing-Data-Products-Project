BODY MASS INDEX (BMI) CALCULATOR
========================================================

Developing Data Products Project

Author: Mun YEE LEE 

Date:   Fri Sep 02 23:57:24 2016

WHAT IS BMI?
========================================================
transition: rotate
The Body mass index (BMI) is an established measure utilized by physicians and health experts to determine weight status for adult men and women that 18 years old and above. Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:

- BMI <18.5 : Underweight
- BMI [18.5-24.9] : Normal weight
- BMI [25-29.9] : Overweight
- BMI >=30 : Obesity


HOW TO CALCULATE BMI?
========================================================
transition: rotate
There is a formula for calculating the BMI measure. The formula is the following:

BMI = weight(kg) / height(metres)2
Thus for the next example, the BMI will be:

```r
weight = 65
height = 1.77
BMI <- weight/height^2
BMI
```

```
[1] 20.74755
```

DIAGNOSTIC
========================================================
transition: rotate
The function use for calculating the diagnostic is the following:

```r
diagnostic_f<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"underweight",
  ifelse(BMI_value<25,"normal weight",
  ifelse(BMI_value<30,"overweight","obesity")))
}
```
For our example (weight=65 kg and height=1.60 m) the diagnostic will be:

```
[1] "overweight"
```
There are some suggestion will be show out based on BMI value:

```
[1] "Loss weight with heathly diet and exercise"
```

Conclusion
========================================================
The BMI is a relatively easy, cheap and non-invasive method for establishing weight status, and for most people, it correlates reasonably well with their level of body fat.

However, BMI is only a proxy for body fatness. other factors such as fitness, ethnic origin and puberty can alter the relation between BMI and body fatness and must be taken into consideration.
