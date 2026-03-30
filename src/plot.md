# Plot


## Plot events

Recorded events can be plotted along a time axis.

**Analysis** > **Plot** > **Plot events**


Select the **observations** you want to plot.
If more than one observation is selected, BORIS will ask you to choose a directory in which to save the plots.



<figure markdown>
  ![List of observations](images/observations_list.png)
  <figcaption>Select the observations to plot</figcaption>
</figure>


The **subjects** and **behaviors** to include in the plot can be selected in the following window:

![Time budget](images/time_budget_parameters2.png)

You can choose to include or not the behavior modifiers (if any) and to
exclude behaviors without coded events.

The time interval can be selected (see time budget).

The plot can be exported in various bitmap formats (PNG, JPG, TIFF)
or vector graphics formats (SVG, PDF, EPS, PS). The SVG format can be further
edited with the [Inkscape vector graphics editor](https://inkscape.org).

!!! warning "Important"

    If a STATE behavior has an odd number of coded events, you will see this error message:
    "The STATE behavior XXX is not paired"


This function creates one plot by subject on one figure.

Behavior colors can be customized. See [Plot colors](preferences.md#plot-colors).

![plot events](images/plot_events.png)







## Plot time budget

The duration and number of occurrences can be plotted for each subject
and behavior.

**Analysis** \> **Plot** \> **Plot time budget**



The subjects and behaviors to include in the plot can be selected in the following window:

![Time budget](images/time_budget_parameters2.png){width="60.0%"}

Behavior modifiers cannot currently be included in the plot.

The time interval can be selected (see time budget).

The plot can be exported in various bitmap formats (PNG, JPG, TIFF)
or vector graphics formats (SVG, PDF, EPS, PS). The SVG format can be further
edited with the [Inkscape vector graphics editor](https://inkscape.org).


!!! warning "Important"

    If a STATE behavior has an odd number of coded events, you will see this error message:
    "The STATE behavior XXX is not paired"


This function creates 2 plots including all subjects for each observation:

-   a plot of the behavior durations for the behaviors defined as STATE
    event.
-   a plot of the number of occurrences for all the behaviors.

Behavior colors can be customized. See [Plot colors](preferences.md#plot-colors).

![plot time budget (durations)](images/plot_time_budget_durations.png){width="70.0%"}

![plot time budget (durations)](images/plot_time_budget_number_of_occurences.png){width="70.0%"}


