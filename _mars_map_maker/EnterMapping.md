---
layout: project-page
help: mars_map_maker
title: Upload Process
category: Help
reference: Procedures-Map
---


Once you have selected a representative sample file, choose to import it to Mars Map Maker for your script customization.
<img src="/assets/images/MMM-imgs/selectFile.png" width="100%">

### The Basics of Customizing Your Script

#### *Enable Mappings*
First select all desired headings/metadata to be mapped by enabling the checkbox on the left side of each entry/field card. All headings that you do not want mapped should be disabled by unchecking this checkbox. Then click the button in the top right of the toolbar with the text "Hide Unused Cards" to disable these selections for mapping.
<img src="/assets/images/MMM-imgs/hideUnused.png" width="100%">

#### *Select Desired Mappings*
For each of the checked entries/field cards select the desired SESAR fields to be mapped to in this checkbox. Entries/field cards that will be mapped to the SESAR values of **collection_start_date** and **collection_start_date** require a user specifying the date format of incoming data. This will be covered directly in the section below. Other selections have special properties that will be covered more below in Advanced User Features.
<img src="/assets/images/MMM-imgs/dropdown.png" width="100%">

#### *Necessary Formatting*
If you wish to map an entry/field card to either SESAR values **collection_start_date** or **collection_start_date** you must first properly inform Mars Map Maker of the format of your incoming data related to that specified field card. Click the dropdown on the top of the windown denoted with the text "select date format" and properly identify and click the format of your incoming date data. If necessary, the dropdown below will enable for further specification to properly identify century of date data. Correctly identify the century and click the selection. At this point you will be allowed to properly map field cards to **collection_start_date** or **collection_start_date**. Mars Map Maker's script customization and processing only accepts uniform formatting of date data, so please make sure to double check sample data and actual data to avoid later error in data processing.
<img src="/assets/images/MMM-imgs/dateSelect.png" width="100%">

#### *Review and Finalization*
Once all field cards are mapped and customized to your specifications click the button in the top of the tool bar labeled **Preview Map**. Review your selections and when finished click the logo in the center of the tool bar to download your customized script.
<img src="/assets/images/MMM-imgs/previewMap.png" width="100%">


#### *Further Steps with MARS*
You may now register your samples with SESAR through our sister tool MARS located [here](https://cirdles.cs.cofc.edu/mars/). Additional help and general information of that tool can be found on [this page](http://cirdles.org/projects/mars/).
