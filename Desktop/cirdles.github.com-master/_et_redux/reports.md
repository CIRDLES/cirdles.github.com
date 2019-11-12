---
layout: project-page
help: et_redux
title: Reports Overview
category: Help
reference: reports_overview
---

The Reports menu gives the user control over ET_Redux's data table through the reports settings model.  The reports setting menu title will change in response to the isotope system as, for example, 'UPb Reports' and 'UTh Reports'.  ET_Redux allows the user to customize and save report settings models as XML files that can be applied to and saved with any ET_Redux data set, shared with other users, and used to format data tables downloaded as aliquots from <a href="http://GeoChron.org" target="&#95;blank">GeoChron.org</a> on our Android mobile app <a href="http://cirdles.org/projects/chroni/" target="&#95;blank">CHRONI</a>.  

The data table is organized by categories that each have columns.  For example the category 'Dates' includes columns for date '206Pb/238U' and its associated uncertainty.  Other categories currently available include Fraction, PbcCorr (Common lead corrected) Dates, Composition, Isotopic Ratios, PbcCorr Isotopic Ratios, Correlation Coefficients, and Trace Elements. Customized footnotes are automatically generated and kept in alphabetical order from left to right. The rows are organized by aliquots, which contain one fraction or analysis per row.

------

**Reports Tab**

The *Reports* tab allows you to write two files:

1. A file containing all the inputs, intermediate variables, outputs, and their uncertainties.
2. A file containing all of the covarience and Jacobian matrices used in the uncertainty propagation algorithms.

#### Reports Settings Manager

The Report Settings Manager is available as the first item under the Reports menu.  The manager allows the user to customize the data tables produced by ET_Redux by choosing and ordering the categories, and choosing and ordering the columns within each category. To hide or show a single category or column, double-click it or use the hide/show button.  The show ALL or hide ALL buttons hide or show all of the elements at once. Each column can be customized relative to whether significant digits are used to format the numerical entries in the table.  Units of Ma or Ka are available for the Dates category.

The next two options on the Reports menu provide for Saving and Loading customized report settings as XML (extensible markup language) files.  The schema for report settings can be found <a href="https://github.com/EARTHTIME/Schema/tree/master/upbReports" target="&#95;blank">here</a> for those readers interested in the details.  A note to users - from time-to-time the schema change to accommodate new features and may require re-customization of reports.

ET_Redux supports saving default report settings to customize your use of the software.  You can specify any saved report settings XML file as your default or use the <a href="http://earth-time.org" target="&#95;blank">EARTHTIME</a> recommended default.

Finally, you can export data table reports as PDF, SVG, Excel, or CSV files.
