* ==================================
* Homework 06 - logistic regression
* 
* Melinda Higgins, PhD
* dated 11/25/2018
* ==================================

* ==================================
* we're be working with the 
* helpmkh dataset
* ==================================;

* remember to CHANGE to the correct directory on your computer;
libname library 'C:\MyGithub\N736Fall2017_HELPdataset\' ;

* apply values;
proc format library = library ;
   value TREAT
      0 = 'usual care'  
      1 = 'HELP clinic' ;
   value FEMALE
      0 = 'Male'  
      1 = 'Female' ;
   value HOMELESS
      0 = 'no'  
      1 = 'yes' ;
   value G1B
      0 = 'no'  
      1 = 'yes' ;
   value F1A
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1B
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1C
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1D
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1E
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1F
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1G
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1H
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1I
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1J
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1K
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1L
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1M
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1N
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1O
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1P
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1Q
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1R
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1S
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value F1T
      0 = 'Not at all or less than 1 day'  
      1 = '1-2 days'  
      2 = '3-4 days'  
      3 = '5-7 days or nearly every day for 2 weeks' ;
   value SATREAT
      0 = 'no'  
      1 = 'yes' ;
   value DRINKSTATUS
      0 = 'no'  
      1 = 'yes' ;
   value ANYSUBSTATUS
      0 = 'no'  
      1 = 'yes' ;
   value LINKSTATUS
      0 = 'no'  
      1 = 'yes' ;

proc datasets library = library;
modify helpmkh / correctencoding="WLATIN1";
   format     treat TREAT.;
   format    female FEMALE.;
   format  homeless HOMELESS.;
   format       g1b G1B.;
   format       f1a F1A.;
   format       f1b F1B.;
   format       f1c F1C.;
   format       f1d F1D.;
   format       f1e F1E.;
   format       f1f F1F.;
   format       f1g F1G.;
   format       f1h F1H.;
   format       f1i F1I.;
   format       f1j F1J.;
   format       f1k F1K.;
   format       f1l F1L.;
   format       f1m F1M.;
   format       f1n F1N.;
   format       f1o F1O.;
   format       f1p F1P.;
   format       f1q F1Q.;
   format       f1r F1R.;
   format       f1s F1S.;
   format       f1t F1T.;
   format   satreat SATREAT.;
   format drinkstatus DRINKSTATUS.;
   format anysubstatus ANYSUBSTATUS.;
   format linkstatus LINKSTATUS.;
quit;

* make a copy to WORK;
data helpmkh;
  set library.helpmkh;
  run;

* ============================================
* For this homework using the helpmkh dataset,
* You will be working with the e2b variable
* Number of times in past 6 months entered a 
* detox program (collected at Baseline)
*
* For this logistic regression homework 6,
* I've provided the code below to capture the
* individuals who did NOT say they had entered a detox
* program in the 6 months preceeding baseline
*
* nodetox = 0 for individuals who did enter
  a detox program and nodetox = 1 for individuals
  who did NOT say they entered a detox program
* ============================================;

data help2;
  set helpmkh;
  nodetox = missing(e2b);
  run;

* check results - the amount of missing for e2b
  should equal the number of 1's for nodetox;
proc freq data=help2;
  tables e2b nodetox;
  run;

* alternatively you can use the / missing option
  to get a table showing missing values for the 2 variables;
proc freq data=help2;
  tables e2b * nodetox / missing;
  run;

* ============================================
* For homework 6 focus on nodetox as the main outcome variable
* which is dichotomous coded 0 and 1. We'll use
* logistic regression to look at predicting whether someone
* was in detox or not using these variables
* age, female, pss_fr, pcs, mcs, and cesd
* ============================================;
