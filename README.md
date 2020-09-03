# Student_Safety_Predictor  @Author:- Shashank G S

As We know COVID-19 has shattered the Educational system and online education sort of became the way. The student are the worsst affected. So I did a Machine Learning Project wherin We could predict the how much safe it is for students to go to college given their present geographical constraints.

The survey was made wherin responses from students were collected and the data is stored in csv file format. 
________________________________________________________________________________________________________________________________________________________________________________
The features considered to build the model are:-
    1. Distance of students home from college
    2. Wheather students are in Redzone or not
    3. Place of residence of students
    4. Mode of transport
    
_______________________________________________________________________________________________________________________________________________________________________________    
Basically, Supervised learning method is used. The model is built using the previously collected data. And since we have multiple feature it is "Multiple Linear Regression Model".

Using the model generated we could predict the percentage of Safety of students to be able to go to college
_______________________________________________________________________________________________________________________________________________________________________________
Two approaches were made, each with slight modification. The resulting models are as follows:-

            1)comfort_rating =  2.364891 + 0.432573[RedZone] – 0.002590[dist]– 0.868723[resideHome] – 0.716845[resideHostel]– 0.755068[residePG] +0.251986[transpoCollege]+0.013585[transpoPersonal]

            2)comfort_rating = 2.033332 + 0.428007[RedZone] - 0.000505[dist] -0.668045[resideHome] - 0.721530[resideHostel]- 0.762228[residePG] + 0.378394[transportCollege] +0.088947[transportPersonal]
            
            
RedZone-
    1 if NO and 
    0 if YES
    
dist-
    any real number distance (in km)
    
resideHome, resideHostel, residePG -
    1 if YES and
    0 if NO

transpoCollege, transpoPersonal-
    1 if YES and
    0 if NO

comfort_rating-
    it is a number between  1  and  5

______________________________________________________________________________________________________________________________________________________________________________

Now to determine the percentage or Student Comfort Index(SCI):

                SCI= (comfort_rating/5)*100
                
