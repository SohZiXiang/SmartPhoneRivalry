# SC3000 Lab Assignment 2: First-Order Logic and Prolog Implementation

## Overview  
This work contains my solutions for SC3000 Lab Assignment 2, which involves:  
1. Translating natural language statements about business ethics in the smartphone industry into First-Order Logic (FOL)  
2. Implementing these FOL statements as Prolog clauses  
3. Proving that "Stevey is unethical" using Prolog

## Context
sumsum, a competitor of appy, developed some nice smart phone technology called galactica
s3, all of which was stolen by stevey, who is a boss of appy. It is unethical for a boss to steal 
business from rival companies. A competitor is a rival. Smart phone technology is business. 

## First-Order Logic (FOL) Translations
**Statement:** "sumsum, a competitor of appy"  
**FOL:** `competitor(sumsum, appy)`

**Statement:** "sumsum developed galactica s3"  
**FOL:** `developed(sumsum, galacticas3)`

**Statement:** "galactica s3 is smart phone technology"  
**FOL:** `smart_phone_technology(galacticas3)`

**Statement:** "stevey stole galactica s3"  
**FOL:** `stole(stevey, galacticas3)`

**Statement:** "stevey is a boss of appy"  
**FOL:** `boss(stevey, appy)`

**Statement:** "A competitor is a rival"  
**FOL:**
`∀company ∀competitor (competitor(company,competitor) → rival(company,competitor))
∀company ∀competitor (competitor(company,competitor) → rival(competitor,company))`

**Statement:** "Smart phone technology is business"  
**FOL:** `∀technology (smart_phone_technology(technology) → business(technology))`

**Statement:** "It is unethical for a boss to steal business from rival companies""  
**FOL:** `∀boss ∀company ∀rival_company ∀business (
    boss(boss, company) 
    ∧ rival(company, rival_company) 
    ∧ stole(boss, business) 
    ∧ developed(rival_company, business) 
    → unethical(boss)`
)

## Prolog Clause
competitor(sumsum, appy).
developed(sumsum, galacticas3).
smart_phone_technology(galacticas3).
stole(stevey, galacticas3).
boss(stevey, appy).

unethical(Boss) :- boss(Boss, Company),
    		       rival(Company, RivalCompany),
    		       stole(Boss, Business),
    		       business(Business),
    		       developed(RivalCompany, Business).

rival(Competitor, Company) :- competitor(Company, Competitor).
rival(Company, Competitor) :- competitor(Company, Competitor).

business(Technology) :- smart_phone_technology(Technology).

## Results
![image](https://github.com/user-attachments/assets/f9487127-fbf3-4e7b-9c27-c3054d144c4c)
