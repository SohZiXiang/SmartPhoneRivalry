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
