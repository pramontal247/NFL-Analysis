# NFL Statistical Analyasis 


Developed statistical model to determine play type and formation NFL teams should execute based on 20 yard intervals, down 2 and the yards to go to reach a first down using 2019 NFL play by play data set. 

Used R Tidyverse Package to subset yard line, interval, down of play as well as formations. Performed T Test and 2 way ANOVA to hypothesis test and check for statistical significance. 

Discovered that there was statistical significance in multiple yard line intervals. Concluded that running and passing plays out of the shotgun formation on 2nd down between a team’s own 40 yard line and the opponents 20 yard line would impact significantly the mean yards gained.

Should teams punt on 4th down or run a play if they are at their own 40 yard line of better if the yards to go for a first down is less than 4 ?

Rating system for Defenses in the 40 yard line to goal in if team does not make 1st down. 

Subset data week by week and update defensive rating. Beginning week 1 09/05/2019

-1 point for every 5 yards given up 
-2 points for every 1st down given up
-3 Field goal given up
-6 Touchdown given up
+6 for Turnover of any sort & stop on 4th Down
+2 for Tackle for loss
+3 for forced Punt

# Secondary Analysis
Shiny App
