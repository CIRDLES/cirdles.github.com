---
layout: project-page
help: squid
title: Welcome
category: Welcome
reference: welcome
---
**UPDATE June 2021**

## SQUID 3.0: Introduction and Rationale    
The Microsoft Excel add-ins SQUID and Isoplot, developed (until 2012) by Dr Ken Ludwig of the Berkeley Geochronology Center, have long been the de facto standard for the reduction and processing of machine data obtained from the SHRIMP. The software has been widely acclaimed for its unique combination of ease of use and underlying mathematical rigour, as well as the incorporation of increasingly more powerful features facilitating customisation and automation of specialised data-processing routines.  
     
Unfortunately, the latest versions of the SQUID (2.50) and compatible Isoplot (3.75 and 3.76) add-ins are bound to Microsoft Excel 2003 which, as of April 2015, is no longer supported or distributed by Microsoft. An attempt by Geoscience Australia (GA) in 2013-14 to update the Visual Basic for Applications (VBA) code to enable the add-ins to function in Excel 2010 was unsuccessful, owing to (1) changes in the Excel object model post-2003, and (2) security flaws in Excel 2003 (remedied post-2003) which SQUID and Isoplot utilised for functionality.   
   
In 2015-2016, GA collaborated with CIRDLES (the Cyber Infrastructure Research and Development Lab for the Earth Sciences, based at the College of Charleston, South Carolina, USA) to investigate the possibility of extracting and documenting the SQUID VBA code and reimplementing it in a more modern and platform-independent Java environment, following the lead of EARTHTIME community-driven U-Pb geochronology data-reduction software developments (e.g. ET_Redux) by CIRDLES in the fields of Isotope Dilution Thermal Ionisation Mass Spectrometry (IDTIMS) and Laser Ablation Inductively Coupled Plasma Mass Spectrometry (LA-ICPMS). Initial investigations were encouraging, and progress was documented and presented at the 8th International SHRIMP Workshop (Granada, Spain) in September 2016. These presentations comprised:  
  
* a strategic overview of SHRIMP data-reduction software beyond Excel 2003 ([**PowerPoint presentation as PDF**](https://www.dropbox.com/s/0igmy0m94zrfrcz/Cross-SQUID%20beyond%20Excel-2003.pdf?dl=0)), and   
* a technical summary of progress in replicating SQUID 2.50 ([**PowerPoint presentation as PDF**](https://www.dropbox.com/s/w0ifw36gufn4j2w/Magee-DissectingSQUID2.50.pdf?dl=0)).    
   
At the SHRIMP Workshop, GA and CIRDLES proposed a SHRIMP community-driven (and community-funded) collaborative project to pursue the reimplementation of the Excel-based SQUID 2.50 into a Java-based “SQUID 3.0”. This concept was approved by the assembled SHRIMP community, and in October 2016, GA circulated an initial [**Project Update**](https://www.dropbox.com/s/epc8cas3pik1xfy/SQUID3.0%20Project%20Update%20Oct%202016.pdf?dl=0), providing background and rationale for the project, detailing the benefits envisaged, and proposing both a governance framework and a quantum for funding by the international network of SHRIMP laboratories.  
   
---   
## Aims  
The aim of this project is to take SQUID 2.50 from its outdated and unsupported Excel 2003 platform, and develop an open-source, platform-independent re-implementation in Java. As part of this process, both the Java code and the data-processing algorithms (as implemented in SQUID 2.50 using Microsoft VBA) will be documented, to facilitate future refinement and improvement.  
   
### Software  
The new SQUID 3.0 software will be a Java application available as a download, or in a remote desktop environment via a web service. Its fundamental operation will be similar to SQUID 2.50: users will nominate an input Prawn Data XML (.xml) file, and obtain processed data in spreadsheet-type format. Development and documentation will be in English; however, Java supports internationalisation, and the groundwork will be laid for a future SQUID 3.0 release that can be ‘localised’ with respect to multilingual support.  
   
### Education  
Detailed documentation of the SQUID 2.50 VBA code is an important component of the project, and particular emphasis will be placed on deconstruction of the key arithmetical functions and subroutines. Algorithms of broad interest (e.g. those used to calculate isotopic ratios and their uncertainties, those used in the numerical evaluation of analytical expressions and their associated uncertainty propagation, and those associated with U–Th–Pb dates) will be individually deconstructed into Excel spreadsheets containing worked examples of ‘base level’ data processing (using only ‘Microsoft’ functions), and featuring testing against real SQUID 2.50 output at each point that it becomes available. These spreadsheets will be accompanied by written commentaries guiding researchers, teachers and students through each step of the calculations. In combination, these products will constitute valuable education resources, and define an easily-referenced baseline for future mathematical innovations in data processing.  
   
### Timing   
The goal is to have an operational replacement for SQUID 2.50 (i.e. SQUID 3.0) by the time of the 9th International SHRIMP Workshop, to be held in Korea in September 2018. **However, this will only be possible with appropriate funding**.  
     
---   
## Technical Approach  
The process of porting Excel/VBA-based SQUID 2.50 to Java-based SQUID 3.0 has several technical facets:  
  
* Documenting the VBA arithmetic and algorithms, and replicating them faithfully in Java.
* Documenting the logic used in the VBA code to ensure that the VBA arithmetic is sequenced correctly, and translating this logic to the Java implementation.
* Establishing the full range of functionality and customisation available to users of SQUID 2.50, and scoping and prioritising these features for inclusion in SQUID 3.0.
* Investigating the range of generalised Isoplot functions utilised by SQUID 2.50, and reimplementing these in Java.  
   
As of March 2017, we have begun scoping requirements for SQUID 2.50 ‘Task’-style customisation in SQUID 3.0, and a small number of key Isoplot functions have been ported to Java. However, most of our efforts to date have been focused on elucidation and replication of SQUID 2.50 arithmetic, with only minimal treatment of user-defined parameters. The Java software development embodying the arithmetic ‘engine’ of SQUID 3.0 is named [**Calamari**](https://github.com/bowring/Calamari/blob/master/README.md).  
     
---   
## Accompanying Documentation  
This series of wiki pages presents a brief overview of Calamari and its reporting functionality, followed by detailed elucidation of the SQUID 2.50 arithmetical procedures deconstructed as of March 2017. Much of the detailed description takes the form of commentary intended to accompany downloadable Excel workbooks (XLS files) in which the calculations have been 'hand-worked' using only 'core' Microsoft functions. In each case, the relevant XLS file is linked.  

As of March 2017, this Homepage is accompanied by seven sections of documentation, best read or considered in the following order:  
  
[**A. Software Development: Calamari**](https://github.com/CIRDLES/Squid/wiki/A.-Software-Development:-Calamari#what-is-calamari)  
[**B. Preliminary: Total ion counts and total SBM counts**](https://github.com/CIRDLES/Squid/wiki/B.-Preliminary:-'Total-counts'#total-ion-counts-and-total-sbm-counts)  
[**C. Step 1: Transform XML into condensed and reformatted 'total counts at peak' worksheet**](https://github.com/CIRDLES/Squid/wiki/C.-Step-1:-Transform-XML#step-1-transform-xml-into-condensed-and-reformatted-total-counts-at-peak-worksheet)  
[**D. Step 2: Background- and SBM zero-corrections, and 'total CPS' columns**](https://github.com/CIRDLES/Squid/wiki/D.-Step-2:-Background-corrections#step-2-background--and-sbm-zero-corrections-and-total-cps-columns)  
[**E. Step 3: Calculation of interpolated ratios of measured species**](https://github.com/CIRDLES/Squid/wiki/E.-Step-3:-Interpolated-ratios#calculation-of-interpolated-ratios-of-measured-species)  
[**F. Step 4: Calculation of 'mean' ratio for each measured species for each analysis**](https://github.com/CIRDLES/Squid/wiki/F.-Step-4:-Mean-ratio-of-spot#calculation-of-mean-ratio-for-each-measured-species-for-each-analysis)  
[**G. Synthesis of Steps 1–4: Cell-by-cell comparisons of SQUID 2.50 and Calamari output**](https://github.com/CIRDLES/Squid/wiki/G.-Synthesis-of-Steps-1%E2%80%934#synthesis-of-steps-14-cell-by-cell-comparisons-of-squid-250-and-calamari-output)  


