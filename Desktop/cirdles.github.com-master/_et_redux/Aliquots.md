---
layout: project-page
help: et_redux
title: Aliquots
category: Help
reference: aliquots
---

#### Using the Aliquot Manager

Use the Aliquot Manager to organize the input parameters for the fractions in an aliquot, collate notes and metadata about the aliquot, and archive the reduced data to a database. To access the Aliquot Manager, click *Aliquots* and select the aliquot you would like to view or just click the aliquot's name in the main window. The Aliquot manager will open in a new window. The Aliquot Manager has five tabs situated near the bottom of the window.

-------

#### Adding Aliquots

To add an aliquot to your sample, type the name of the aliquot in the *Aliquot Name* box and click *Add Name*. This will add your aliquot to your sample's aliquot list. You can select an aliquot from that list to edit or remove it. If you ever want to change the name of an aliquot, select it from the list, change the name in the Add Name box, and click Save Edited.

-------


#### Adding Fractions Manually
Select an aliquot from the sample's aliquot list. Then click *Import Fraction Files* and navigate to your sample's fraction files which are saved as XML documents. You can import multiple fractions at a time by holding CTRL and clicking the files.

Click Add Name to add the new aliquot. Increment the counter below to change the number of fractions it contains (you can add more at any time). Press Insert Fraction to add more fractions.

Order the fractions in the data table with the arrows to the left. After entering the required information for each fraction, press "SaveAs Sample".  Navigate to the desired location, then create a new folder for your sample before saving the .redux file inside. SaveAs Sample controls the name and location of where you are saving - use "Close and Save" to save and close out of the project.  

----

#### Fraction Fast Details Tab

The *Fraction Fast Details* tab is the first tab you will see after opening the Aliquot manager. It contains a table with a row for each fraction and a column for each possible input reduction parameter organized into four groups which are broken down into further groups:

1. Laboratory Data
	* Fraction Name
	* No Initial Pb
	* Tracer Model
	* Tracer Mass, Uncertainty
	* Fraction Mass
	* Pb Fractionation model
	* U Fractionation model
2. Common Pb
	* Pb Blank IC model
	* Pb Blank mass, uncertainty
	* Initial Pbc IC model
	* Estimated date
	* Pbc model uncertainty
3. Uranium
	* Sample <sup>238</sup>U/<sup>235</sup>U, uncertainty
	* Blank <sup>238</sup>U/<sup>235</sup>U, uncertainty
	* U Blank mass, uncertainty
	* Uoxide <sup>18</sup>O/<sup>16</sup>O, uncertainty
4. Initial Isotopic Disequilibrium
	* Th/U of magma, uncertainty
	* <sup>231</sup>Pa/<sup>235</sup>U activity ratio, uncertainty

  -----

#### Fraction Notes Tab

  The *Fraction Notes* tab displays a concatinated list of the fractions in the aliquot and their corresponsing notes.

  **Fraction Archiving Details Tab**

  The *Fraction Archiving Details* tab allows you to edit the archiving details of your fractions.

  **References, Metadata and Consistency Tab**

  The *References, Metadata and Consistency* tab allows you to edit the references and metadata for your aliquot.

  **Archive Aliquot to Database Tab**

  The *Archive Aliquot to Database* tab allows you to archive your aliquot to a database using its IGSN number which you set with the Sample Manager.

  **Using the Fraction Manager**

  The Fraction Manager provides detailed information about each paired U-Pb analysis organized into tabs. These tabs, situated at the bottom of the fraction manager, include *Pb Data*, *U Data*, *Tracer*, *Corrections*, *Pb Blank*, *Initial Pb*, *Reports*, *Archiving Details*, and *Kwiki*.
