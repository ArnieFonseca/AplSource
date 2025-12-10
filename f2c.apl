
lower←0
upper←300
step←20

items←(0=step|rng)/rng←lower,⍳upper ⍝ Get the Fahrenheit units
{⍵}¨(1+step÷⍨upper - lower) 1 ⍴ {(1⍕⍵),'°F is ',(1⍕9÷⍨5×32-⍨⍵),'°C'}¨items


citems←2⍕9÷⍨5×32-⍨items ⍝ Get the Celsius unit units

{(⍕1⌷⍵), ' in f is', (⍕2⌷⍵),' in c'}¨items,¨⍎citems ⍝ Combined together 

(1+step÷⍨upper - lower) 1⍴{(⍕1⌷⍵), ' in f is', (⍕2⌷⍵),' in c'}¨items,¨⍎citems ⍝ Display the results


(1+step÷⍨upper - lower) 1 ⍴ {(1⍕⍵),'°F is ',(1⍕9÷⍨5×32-⍨⍵),'°C'}¨items
(1+step÷⍨upper - lower) 1 ⍴ {(1⍕⍵),'°F is',(1⍕9÷⍨5×32-⍨⍵),'°C'}¨(0=step|rng)/rng←lower,⍳upper


toCelsius←{1⍕9÷⍨5×32-⍨⍵}
(1+step÷⍨upper - lower) 1 ⍴ {(1⍕⍵),'°F is',(toCelsius ⍵) ,'°C'}¨(0=step|rng)/rng←lower,⍳upper


numOfElemets←(1+step÷⍨upper - lower)
(numOfElemets) 1 ⍴ {(1⍕⍵),'°F is',(toCelsius ⍵) ,'°C'}¨(0=step|rng)/rng←lower,⍳upper

