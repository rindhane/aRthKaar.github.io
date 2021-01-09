Hypothesis testing in Statistics: 
***********************************

Reading : 
    * `Hypothesis Testing <http://stattrek.com/hypothesis-test/hypothesis-testing.aspx>`_
    * `Effect of sample <https://www.pewresearch.org/fact-tank/2016/11/09/why-2016-election-polls-missed-their-mark/>`_
    * `Sample Distribution <http://onlinestatbook.com/2/sampling_distributions/samp_dist_mean.html>`_
    
Techniques:
    * `Bootstraping <https://stats.stackexchange.com/questions/26088/explaining-to-laypeople-why-bootstrapping-works>`_
    * `Multiple Comparison <https://en.wikipedia.org/wiki/Multiple_comparisons_problem>`_
        * `Bonferroni Correction <https://en.wikipedia.org/wiki/Bonferroni_correction>`_
            * `Boole-Boneferroni <https://en.wikipedia.org/w/index.php?title=Bonferroni_bound&redirect=no>`_
            * `Close Testing procedure <https://en.wikipedia.org/wiki/Closed_testing_procedure>`_
            * `Holm-Boneferroni <https://en.wikipedia.org/wiki/Holm%E2%80%93Bonferroni_method>`_
            * `p-hacking  <https://freakonometrics.hypotheses.org/19817>`_
            * `Šidák correction <https://en.wikipedia.org/wiki/%C5%A0id%C3%A1k_correction>`_
        * `Tukey's Correction <https://www.itl.nist.gov/div898/handbook/prc/section4/prc471.htm>`_
        * `Q value Correction <http://www.nonlinear.com/support/progenesis/comet/faq/v2.0/pq-values.aspx>`_
        


Common hypothesis tests include:

    * Testing a population mean `One sample t-test <http://sites.utexas.edu/sos/guided/inferential/numeric/claim/one-sample-t/>`_.
    * Testing the difference in means `Two sample t-test <https://www.isixsigma.com/tools-templates/hypothesis-testing/making-sense-two-sample-t-test/>`_
    * Testing the difference before and after some treatment on the same individual `Paired t-test <https://www.isixsigma.com/tools-templates/hypothesis-testing/making-sense-two-sample-t-test/>`_ 
    * Testing a population proportion `One sample z-test <http://stattrek.com/statistics/dictionary.aspx?definition=one-sample%20z-test>`_
    * Testing the difference between population proportions `Two sample z-test <https://onlinecourses.science.psu.edu/stat414/node/268>`_

You can use one of these sites to provide a t-table or z-table to support one of the above approaches:

    * `t-table <https://s3.amazonaws.com/udacity-hosted-downloads/t-table.jpg>`_
    * `t-table or z-table <http://www.z-table.com/t-value-table.html>`_

Generalized Stats Models: 
    * `Generalized <https://www.statsmodels.org/stable/glm.html>`_

A/B Testing : 
    * Drawbacks :
        * Can help you compare two options, but it can't tell you about an option you haven’t considered.
        * Can only compare can't tell the increment in outcome. 
        * Bias results on existing users : 
            * **Change Aversion:** Existing users may give an unfair advantage to the old version, simply because they are unhappy with change, even if it’s ultimately for the better.
            * **Novelty Effect:** Existing users may give an unfair advantage to the new version, because they’re excited or drawn to the change, even if it isn’t any better in the long run.
    * Difficulties in A/B Testing
        * Novelty effect and change aversion when existing users first experience a change
        * Sufficient traffic and conversions to have significant and repeatable results
        * Best metric choice for making the ultimate decision (eg. measuring revenue vs. clicks)
        * Long enough run time for the experiment to account for changes in behavior based on time of day/week or seasonal events.
        * Practical significance of a conversion rate (the cost of launching a new feature vs. the gain from the increase in conversion)
        * Consistency among test subjects in the control and experiment group (imbalance in the population represented in each group can lead to situations like `Simpson's Paradox <https://en.wikipedia.org/wiki/Simpson%27s_paradox>`_)
Credits:
    `Udacity <www.udacity.com>`_
