
.. image:: Entry1/title_pic.jpg
    :width: 800px
    :align: left
    :height: 300px
    :alt: Introduction picture

------------------------------------

Is there a monetary upside in listing a spare room on Airbnb ?
***********************************************************************

|br|

**Introduction:**
    Airbnb has tremendously helped the tourism to flourish in new locations which were not supported by hotel industry. They have done this breakthrough by providing online service to regular home owner, or even to any 'Bed & Breakfast(b&b)' service provider, by enabling them to allow tourists, or any regular visitor, to stay in the owner's home at affordable price during visit to the home owner's city . Thus this service brings additional revenue options to local home owners.  

**Motivation:**
    From Airbnb perspective, inorder to grow their service in each city/region they would like to empower their home owners with data so they can provide their b&b service in economical & sustainable fashion not only for home owners as well for tourists/visitors. We presume that Airbnb can enhance this growth by providing transparency to potential monetrary benefits of listing their proprerties. To build this transparency Airbnb can provide insights from data of already occuring transactions between home owners and visitors in their city. Thus this transparency can encourage to more suitable home owners to list their availble house/apartments and in process supporting properous market of tourism in their city.

    The article will try to evaluate and present the potenial monetary benefits for home owner when they list their apartment/house on Airbnb. This evaluation is based on the publicly available data [#]_ . The focus remains primarily on the *Boston* city's data and evaluated only on last twelve months *(Jan 2020-Dec 2020)*. Though python scripts [#]_ created to evaluate the results can be tweaked as required and similar evaluation can be done for any city or any time period.
    So let's dive into the evaluation and results [#]_: 

|br|

**Q1: What is average earning potential for a general listing within a given city?** [#]_  

    Data From Jan/2020-Dec/2020 shows average annual earning [#]_ among the listings across Boston City is $4179. The earning gained by various listing is shown below:

    .. figure:: Entry1/average_earning.jpg
        :alt: annual earning
        
        Figure 1

   Thus in *Fig 1*: earning graph, reveals the expected inverse relationship of earning vs probability of higher earning. This trend is applicable to any normal service market. This relationship could also been seen in the price/night offerings in a city as shown below :  

    .. figure:: Entry1/price_options.jpg
        :alt: price/night options

        Figure 2
    
    Above *Fig 2*: price offering graph of the Boston City's Airbnb market, has average offering of *$152 price/night* to vistors. 
    
    So let's find what was the most opted price/night by visitors.

    .. figure:: Entry1/price_demand.jpg       
        :alt: price demand

        Figure 3
        
    The above histogram (*fig 3*) indicates, *$124 price/night* was the most preferred by the visitors.

    **Takeaway:**
        The average earning of *Boston's Airbnb listing* earns [5]_ **$4179** annually [6]_ and the most preferred price for stay is **$124/night**. This details should help a house owner to decide on primarily basis , whether these earnings are sutiable for him to list on Airbnb.

|br|

**Q2: Does visit to the city is concentrated in specific months or is distributed across the year ?** 
    
    An owner would like to know whether the indicated annual earning is gained in specific months or the earning is distributed consitently across the year. The specific term used for this effect is called *"Seasonality in demand"*. This can be evaluated by mapping the visits across a year into specific months. The year long variations in average number of visits has been shown below in *fig 4*: 

    .. figure:: Entry1/monthly_visits.jpg       
        :alt: demand seasonality

        Figure 4

    **Takeaway:**
            Well the demand is almost consitent through out the year with slight decrease in April-June months.

**Q3: The average earnings looks OK, but what are the preferences of visitors which governs the different asking price ?** [#]_ 

    As it is evident, there is huge range in the asking price by the listings, so one would like to the factors that helps to bargain higher price or higher booking in a year. Let's inspect some of them:

    *Geographic Demographics* :
        The demand and average price varies in differnt sections of the city.

        .. figure:: Entry1/earning_distribution.jpg
            :alt: geographic Demographics

            Figure 5
    
    *Kind of Listing* :
        The kind of rental space is one of the key factors which differentiate the listing in terms of asking price and the amount of expected visits per year. This difference is evident in the *fig 6* where each category has considerable average asking price/night as compared to each other. 

        .. figure:: Entry1/categorical_demand.jpg
            :alt: Listing category wise differentiate

            Figure 6

    *Host Responsiveness* :
        The time taken by the host to sort out the query or accept the visitor's request also plays factor in increasing the selection of one's listing.  

        .. figure:: Entry1/host_response.jpg
            :alt: Host response impact

            Figure 7

        Even features like instant booking of your listing can enhance chances for getting selected. 
            
        .. figure:: Entry1/instant_impact.jpg
            :alt: instant booking impact

            Figure 8
    
    *Details' transparency by Host* :
        The amount of details provided by the host, may also influence the decision in opting out the property.

        .. figure:: Entry1/host_descriptions.jpg
            :alt: host descriptions
            
            Figure 9
    
    **Takeaway:**
        Providing the utility & convenience preferred by the visitors, the listings can have options to bargain higher ask price. The home owner can take leverage by incorporating the indicated inferences from this data to enhance the demand for his/her listing.

|br|

**Q4: What are the top 3 factors which influence the selection of a listing ?**
    
    As demonstrated above, they are numerous factors which affect the decision of vistors in selection of a listing. Some of them can be controlled by owner while others are situational i.e out of the hands of the owner.
    
    So to rank influences of the factors, we built a linear model (using SVR [#]_) and the the models' weight-coefficients were used to rank the factors on a relative scale. Thus from the simple proficent ML-model [#]_, probable factors and their relative impact was established to rank them. This rank can help owners to decide which factors he may priortize to adopt to increase the chance of selection of his listings.

    Following *figure 10* shows the relative impact of various factors in predicting the number of visits to various kinds of listing [#]_. In *fig 10* as the value of relative-influence is more near to 1, better the rank of that factor as compared to others. Thus the relative rank (top is better) of the probable factors is as follows: 

    .. figure:: Entry1/top3.jpg
            :alt: rank of factors

            Figure 10
    
    **Takeaway:**
        Various factors have different level of influence on the outcome of selection of a listing by a random visitor. Among them top 3 factors which influence the visitors decision making are : 
            1. Review rating of that listing by prior visitors (review_scores_value).
            2. Whether the host has been verified (host_identity_verified).
            3. Communication rating (review_scores_communication) . This means that visitors prefer the host who communicate efficiently during their decision making process of selection of listing.

|br|

**Conclusion:** 
    
    From the data of Boston City (Jan/2020-Dec/2020) of Airbnb listings, we were able to gather following insights which will help a `home owner` in making the decision prudently about listings his property on Airbnb.
      
      1. Data revealed that the most suitable price (on per night basis) for a visitor is approx $124.
      2. The average annual earning among the listing of Boston city was $4179.
      3. Review ratings, host verification & communication rating were top 3 crucial factors which influence the visitors choices in selection of a listing for their stay.
      4. The demand of visits to city remains almost consistent throughout the year.
      5. We also looked into the level of impact by individual factors in the selection. This suggested that utility and convenience provided by this factors will help to surge up the demand and can have better asking price for a listing.    

|br|
So will *YOU*, list your spare room on  Airbnb?  

--------------------------------------------------------------------------------


.. rubric:: Footnotes
.. [#] The publicly available data can be accessed from this `url <http://insideairbnb.com/get-the-data.html>`_ 
.. [#] Source code is available as `github repository <https://github.com/rindhane/DataMusings/tree/master/AirBnB_realty>`_
.. [#] Detailed & thorough analysis, working of the code and the related underlying assumptions can be checked out `here <https://github.com/rindhane/DataMusings/blob/master/EDA/Exploratory_Data_Analysis.ipynb>`_ (a jupyter notebook). Only final results and visualization is demonstrated here to make it comprehensible for everyone. 
.. [#] Here city is to be considered as Boston City. As the scope of geographic region for analysis is only Boston City. 
.. [#] 
.. toctree::
    :maxdepth: 1
    :glob:
    :titlesonly:

    Entry1/*

.. [#] The earning seems to be low this year as there may be impact due to COVID-19 pandemic. We will provide the further study to understand year on year basis before COVID-19
.. [#] Since the data values has was not completely linear and has some non-linear variance, `SVR <https://www.analyticsvidhya.com/blog/2020/03/support-vector-regression-tutorial-for-machine-learning/>`_  was selected instead of lasso/ridge model inorder to handle presence of non-linearity in the data. 
.. [#] 
.. toctree::
    :maxdepth: 1
    :glob:
    :titlesonly:

    Entry1/factor_interdependence/*

.. [#] The findings is applicable only for factors associated with Airbnb listings of Boston City since the model was trained only this city's data.


.. |br| raw:: html

    <br>