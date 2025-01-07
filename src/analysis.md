# Analysis and plot



## Time budget analysis

The **Time budget analysis** can be done by behavior (including or not
the modifiers) or by category of behaviors. Choose the option from the
**Analysis** menu.

The **Time budget analysis** can be done on one or more observations. If
you select more than one observation you must then choose for a global
time budget analysis that will contain all selected observations or a
time budget analysis for every single observation.

![Group observations](images/time_budget_group_observations.png)

Choose **Yes** to group all observations in one time budget analysis

The **Analysis** \> **Time budget** menu option shows the time budget
for the events of the selected observations. Select the subjects and
behaviors you want to include in the time budget analysis:

![Select subject and behaviors for time budget analysis](images/time_budget_parameters2.png)

All behaviors can be selected or unselected by clicking on the Category (bold).

You can choose to include or not the behavior modifiers in the Time
budget analysis and to exclude behaviors without coded events.

The Time budget analysis can be restricted to a part of the observation:

-   Full observation(s): the analysis will be made on the full
    observation length.
-   Limit to time interval: use the **Start time** and **End time**
    boxes to select starting time and ending time.
-   Limit to observed events: the analysis will be made from the first
    observed event to the last observed event.

The last dialog window will allow you to subtract the duration of one or
more behaviors from the total duration of the observation. This can help
you if you have defined a "out-of-sight" code in your ethogram for example:

![subtract behavior from the total duration](images/subtract_behavior.png)


The results contain for each subject and behavior the **total nuber of
occurrences**, the **total duration** (for the behaviors defined as
state events), The **duration mean** (for the behaviors defined as state
events), the **standard deviation of duration**, the **inter-events
intervals duration mean**, th **standard deviation of the inter-events
intervals duration** and the **percent of total duration of
observation(s)**. All duration times are expressed in seconds (s).


<figure markdown>
  ![Results of the time budget analysis](images/time_budget.png)
  <figcaption>Results of the time budget analysis</figcaption>
</figure>




The time budget results can be saved in various formats for further
analysis:

- Plain text in tabular format
    - **Tab Separated Values** (TSV)
    - **Comma Separated Values** (CSV)
    - **Hyper Text Markup language** (HTML)

- Spreadsheet files
    - **OpenDocument** (ODS)
    - **Microsoft Excel** (XLSX, XLS)
    
-  **Pandas dataframe** (to be loaded in Python with the [pickle
    module](https://docs.python.org/3/library/pickle.html))


-   **R dataframe** (to be loaded in R with [readRDS
    function](https://rdrr.io/r/base/readRDS.html))



!!! warning "Important"

    If a STATE behavior has an odd number of coded events, BORIS will report **UNPAIRED** instead of results.






## Time budget by behavioral category

The **Time budget by behavioral category** is similar to the [**Time budget analysis**](analysis.md#time-budget-analysis) 
except that the behaviors are grouped into **behavioral categories**.


<figure markdown>
  ![time_budget_by_behavioral_category](images/time_budget_by_behavioral_category.png)
  <figcaption>Results of a time budget by behavioral category analysis</figcaption>
</figure>





## Synthetic time budget

The synthetic time budget is similar to time budget but with fewer
parameters and a different organization of results. Results of all
selected observations are organized in columns on a single page. Two
parameters are provided for now: **number of occurrences** and **total
duration** (for the behaviors defined as state events)

![Results of the time budget analysis](images/synthetic_time_budget.png)

All duration times are expressed in seconds (s).

The time budget results can be saved in various formats for further analysis:

- Plain text in tabular format
    - **Tab Separated Values** (TSV)
    - **Comma Separated Values** (CSV)
    - **Hyper Text Markup language** (HTML)

- Spreadsheet files
    - **OpenDocument** (ODS)
    - **Microsoft Excel** (XLSX, XLS)



## Synthetic time budget with time bin



The **synthetic time budget with time bin** is similar to the **Synthetic time budget** but the results are divised in time bin.

**Analysis** > **Synthetic time budget with time bin** 

Choose a time bin size (in seconds)



<figure markdown>
  ![Choose the time bin size](images/choose_time_bin_size.png)
  <figcaption>Time bin size of 10 seconds</figcaption>
</figure>



<figure markdown>
  ![Synthetic time budget with time bin](images/time_budget_with_time_bin.png)
  <figcaption>Results of a Synthetic time budget with time bin of 10 seconds</figcaption>
</figure>


The **time budget with time bin** results can be saved in various formats for further analysis:

- Plain text in tabular format
    - **Tab Separated Values** (TSV)
    - **Comma Separated Values** (CSV)
    - **Hyper Text Markup language** (HTML)

- Spreadsheet files
    - **OpenDocument** (ODS)
    - **Microsoft Excel** (XLSX, XLS)





## Inter-rater reliability

The Cohen's kappa coefficient can be calculated (**Analysis** > **Inter-rater reliability** > **Cohen\'s kappa**).

[Cohen's kappa on Wikipedia](https://en.wikipedia.org/wiki/Cohen%27s_kappa)

After selecting 2 observations and a time window (in seconds) for the
analysis (the default value is 10 seconds) the Cohen's kappa will be
displayed in the results window.

![IRR](images/irr1.png)




### Implementation of IRR Cohen's Kappa in BORIS

If a time window of n seconds is set the 2 selected observations will be
checked every n seconds for agreement/disagreement from the first event
to the last event of the 2 observations . In case of a point event the
presence of a corresponding event in the other observation will be
verified using a time window of n seconds centered on the point event.

A IRR Cohen's Kappa analysis is available in the GSEQ program
(<http://www2.gsu.edu/~psyrab/gseq>). For this the coded events can be
exported as aggregated events in SDIS format.
See [export aggregated events](export_events.md#export-aggregated-events).


## Similarities


Needleman-Wunsch similarity




## Co-occurence

This function allow to determine the co-occurence of 2 behaviors.





## Advanced event filtering


This function allows to filter events from one or more observations by
selecting subjects, behaviors and logical operators.

To use the filter, select a subject, select a behavior and click on the
button with the green arrow on the side of the behaviors list. The tuple
subject/behavior will be added in the **filter text edit**. A complex
filter query can be constructed by adding parenthesis and logical
operator **&** (AND) or **|** (OR) for combining various subjects and behaviors.


Example of a summarized output showing the occurences of Himal resting
while Nautilus in alert:

![Advanced event filter summary](images/advanced_filter_summary.png)

Example of a detailed output showing the overlaping intervals while
Himal rests and Nautilus is in alert:

![Advanced event filter details](images/advanced_filter_details.png)

The same subject can be used many times in the query with OR or AND (in case of non exclusive behaviors):

![Advanced event filter with 4 conditions](images/advanced_filter_example0.png)

An unlimited number of conditions can be used:

![Advanced event filter with 4 conditions](images/advanced_filter_example1.png)

Parenthesis can be used to group logical conditions into block(s):

![Advanced event filter with parenthesis](images/advanced_filter_example2.png)

The results can be saved in a Tab Separted Values (TSV) file using the
**Save results** button. Other formats will be added in future.




## Latency

The latency will analyze the time between one or more markers (arbitrary behaviors(s)) and other behaviors.



## Plugins


From version 9 you have the possibility to write plugins to analyze the coded data.


!!! warning "Important"

    Use this function for testing purposes, as it is currently experimental and may be subject to changes in the future.





Some plugins are built into BORIS (see the **BORIS plugins** list), and you can also create your own custom plugin using Python and [Pandas](https://pandas.pydata.org/).


Go to **Preferences** > **Analysis plugins**, then choose the plugins you'd like to enable.

![Analysis plugins preferences](images/plugins01.png)

You can view more information by clicking on the plugin name.


![Plugin information](images/plugins02.png)

You can find the plugin code in the boris/analysis_plugins directory.


### How to use an Analysis plugin

Go to **Analysis** > **Plugins**

All plugins are listed (the BORIS plugins and your personal plugins)

Select the plugin you want to use

Select the observations to analyze

Select the subjects and the behaviors

You should obtain a window with the results of the plugin analysis


![Plugin results](images/plugins03.png)


The results can be saved in various formats (TSV, CSV, ODS, XLSX, Pandas dataframe, R dataframe and HTML)




### Anatomy of an Analysis plugin

A plugin is a Python script consisting of two functions: **main** and **run**. The **main** function must remain unchanged, while the **run** function contains your custom code.

The plugin code must define the following global variables:

    __version__ = "x.y.z"
    __version_date__ = "YYYY-MM-DD"
    __plugin_name__ = "PLUGIN NAME"
    __author__ = "AUTHOR - INSTITUTION"


The **run** function takes a Pandas DataFrame as its sole argument and must return a Pandas DataFrame.

The DataFrame passed to the **run** function  includes the following columns:

    Column                                              Dtype  
     ------                                              -----  
    Observation id                                      object 
    independent variables                               object 
    ...
    Subject                                             object 
    Observation duration by subject by observation      int64  
    Behavior                                            object 
    Behavioral category                                 object 
    Behavior modifiers                                  object
    ...
    Behavior type                                       object 
    Start (s)                                           object 
    Stop (s)                                            object 
    Duration (s)                                        object 
    Comment start                                       object 
    Comment stop                                        object 


The DataFrame will include a column for each independent variable defined in your project.


The DataFrame will include a column for each behavior modifier set defined in your project.


Here is an example of the DataFrame structure, including 4 independent variables and various behavior modifiers:



    Data columns (total 27 columns):
    #   Column                                              Dtype  
    ---  ------                                              -----  
    0   Observation id                                      object 
    1   independent variable 'Location'                     object 
    2   independent variable 'Weather'                      object 
    3   independent variable 'Temperature'                  object 
    4   independent variable 'Number of visitors'           object 
    5   Subject                                             object 
    6   Observation duration by subject by observation      int64  
    7   Behavior                                            object 
    8   Behavioral category                                 object 
    9   (Carry objects, set #1)                             object 
    10  (Chase, set #1)                                     float64
    11  (Eat, set #1)                                       float64
    12  (Eat, set #2)                                       float64
    13  (Interact with enrichment, set #1)                  float64
    14  (Locomotion, set #1)                                object 
    15  (Play in the water, interaction)                    object 
    16  (Play on the ground, set #1)                        object 
    17  (Rub, set #1)                                       object 
    18  (Sniff, set #1)                                     object 
    19  (Spot keeper, set #1)                               float64
    20  (Tear, set #1)                                      object 
    21  Behavior type                                       object 
    22  Start (s)                                           object 
    23  Stop (s)                                            object 
    24  Duration (s)                                        object 
    25  Comment start                                       object 
    26  Comment stop                                        object 



You can find the code for a simple plugin that counts the number of occurrences of behaviors for each subject at the following link:
[number_of_occurences.py](https://github.com/olivierfriard/BORIS/blob/pyside6/boris/analysis_plugins/number_of_occurences.py)

You can modify the **run** function to implement your custom logic, but the **main** function must remain unchanged.
