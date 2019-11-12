---
layout: project-page
help: et_redux
title: Using the Workflow Manager
category: Help
reference: UWManager
---

<img src="/assets/images/Workflow_Manager.jpg" alt="link to ET_Redux repository" width="100%">

The Workflow Manager can be accessed by clicking *Sample* in the top menu of ET_Redux. You will be presented with several options for creating and editing a sample. To create a new sample, click *New Sample Analysis for ID-TIMS*. This opens the Workflow Manager for a new sample.


#### New Sample Analysis for ID-TIMS

After you have loaded data for a sample, you can use ET&#95;Redux's tools for interpretation of the geochronological data. ET&#95;Redux supports data reduction and interrogation of new U-Pb analyses. You can organize the data reduction using specialized managers for lab data, aliquots, fractions and sample dates.

------

##### Editing the Sample Name

To change the name of your sample input the desired name into the *Local Sample Name* box.

------

##### Adding an IGSN ID

To specify the IGSN, select the registry from the *Registry* drop down menu and input the ID into the *Sample ID* box. Click the button to the right of where you input the ID to validate the registry.

------

1. At the main menu, click "Sample" and then click "New Sample Analysis for ID-TIMS" to launch the ID-TIMS Workflow Manager for ANALYSIS MODE of a Sample. Here you will find all you need in creating and adding aliquots. You can always return to this window by clicking the "Manage Sample" menu item under the main menu "Sample".
2. Name your sample using the Local Sample Name dialog box and provide the "IGSN".  SESAR is the default registry to date.
3. Select the "Analysis Purpose" and  the "Phsyical Constants Model".
4. To create a new aliquot, start by typing in a descriptive name, such as “zircon”, into the Aliquot Name dialog box. For each <a href="#aliquot">aliquot</a>, provide the name and then click "Add Name" to add the aliquot to the left-hand list.  Once this list is populated with the names of the aliquots, clicking each name sets up the next step of either manually "inserting fractions" or "importing a folder of fractions" (click on Import Fraction Files), which consists of XML files produced by Tripoli or similar software.  These XML files must conform to the schema found [here](https://raw.githubusercontent.com/EARTHTIME/Schema/master/UPbReduxInputXMLSchema.xsd).

>For an example - open up CM2 and find the folder zircon. Here you will find a multitude of xml files that have been exported from Tripoli. They come in pairs of lead and uranium. Open both of the files the lead and uranium. (z10 for example. ) It will populate one line of the fraction. One row is one fraction.

5. Fractions and aliquots may be removed using the appropriate buttons.  If importing is done, the default fraction should be removed.
6. For each fraction of each aliquot complete the entries in the interactive data table at the bottom of the window.
7. For manual update, Click "Close and Save" button.
8. For <a href="#live_workflow">Live Workflow</a>, be sure to set the following parameters before clicking "Close and Save" button.
  * one
  * two
  * three
