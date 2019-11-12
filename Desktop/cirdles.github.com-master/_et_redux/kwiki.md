---
layout: project-page
help: et_redux
title: Tabs
category: Help
reference: kwiki_etc
---

### Kwiki Tab

The most informative tab of the fraction manager is the *Kwiki* tab. The left-hand panel of the *Kwiki* tab is a table with a row for each input parameter. The columns display the name, value, and uncertainty of the input reduction parameter. The values and their uncertainties are displayed with miniature sliders. As you adjust the sliders the data is rereduced and the changes are reflected in the three other data panels. The sliders are intended for hypothesis testing and data exploration only. All changes are temporary and will be reset upon exiting the *Kwiki* tab.

The top center panel of the *Kwiki* tab displays important data reduction parameters such as how the analysis is apportioned between laboratory blank, initial common Pb, and parent or daughter Pb or U. These values change in response to the value sliders.

The top right panel is a U-Pb concordia plot that displays uncertainty ellipses for fractions in the aliquot. The current fraction's ellipse will be highlighted. This ellipse responds to movement of the value and uncertainty sliders in real time. You can navigate the concordia plot by panning and zooming with the mouse or by using conventional navigation tools in the control panel to the left which also contains a toolbox for manipulating the uncertainty contributions and viewed corrections.

The bottom panel shows the three calculated dates for the fraction, their uncertainties, and a graphical breakdown of each date's variance by the contribution from each input parameter. These graphs respond to both value sliders and uncertainty sliders.

The Kwiki tab provides a live view of the data reduction progress in Live Workflow mode while Tripoli is updating data for ET_Redux in real time.

-----

**Pb Data and U Data Tabs**

The *Pb Data* and *U Data* tabs provide a view of the input ratios and their uncertainties. You can compose fraction-specific notes and see the file path of the imported data. On the *U Data* tab, you can also enter an estimated date, uncertainty, and U fractionation magnitude to estimate U isotope ratios for visualization in the Kwiki tab before the U measurement is made.

**Tracer Tab**

The *Tracer* tab displays the isotopic composition and U/pb ration of the selected tracer defined data model, as well as the mass of tracer added to the selection fraction and its uncertainty. This tracer may be imported from Tripoli, or chosen from the dropdown list at the top of the tab.

**Corrections Tab**

The *Corrections* tab displays information about Pb and U fractionation corrections, oxide correction, and U sample components. The magnitude of the fractionation correction applied to Pb and U measurements are shown. One of four possible techniques is used to determine the correction as signified by a red box.

1. Tripoli performed fractionation correction point by point using the measured ratios from a double spike
2. An average fractionation value was calculated from the mean double-spike ratio
3. For a monoisotopic tracer, a fractionation model was applied
4. The fraction is not corrected for fractionation

Oxide correction parameters for uranium oxide analyses are displayed in the middle of the *Corrections* tab. Tripoli performs oxide corrections automatically, but ET_Redux allows you to recorrect the data by supplying a different <sup>18</sup>O/<sup>16</sup>O from the value used by Tripoli and to specify the uncertainty.

**Pb Blank Tab**

The *Pb Blank Tab* shows the details of the selected laboratory Pb blank defined data model.

**Initial Pb Tab**

When the fraction is identified as having no initial Pb, the *Initial Pb* tab displays details of the defined data model chosen for the initial common Pb IC. There are two ways to specify the initial common Pb IC:

1. Use a common Pb ore evolution model.
2. Select a custom defined data model.


**Archiving Details Tab**

The *Archiving Details* tab serves as the preparation portal for each fraction to be archived as part of the aliquot. Annotations about the fractions are made here. Also, you may upload an image of the fraction and record your comments.

Using Geochron Data

1. Click *Sample* in the main menu, and then click *New Compilation of Aliquots into a "Super-Sample" File*.
2. Name your compilation sample then select *Import one or more Aliquots from Geochron.org database*.
3. Input your Geochron username (email) and password.
4. Press *Proceed to Aliquot Chooser*.
5. Input one or more Aliquot IGSN from <a href="http://www.geochron.org/search.php" target="_blank">Geochron</a>.
