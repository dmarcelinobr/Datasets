/*  Comparative Study of Electoral Systems (CSES)                           */
/*  Module 3 (2006-2011) Advance Release dataset                            */
/*                                                                          */
/*  Release Version:     20110331 (March 31, 2011)                          */
/*  Default Directory:   c:\cses\module3\20110331\                          */
/*                                                                          */
/*  Website: www.cses.org                                                   */
/*  Email:   cses@umich.edu                                                 */
/*                                                                          */
/*  ......................................................................  */
/*                                                                          */
/*  STATA SYNTAX FILES                                                      */
/*                                                                          */
/*  This file ('cses3_run.do') may be submitted in STATA without            */
/*  modification to create a STATA system file ONLY if the following files  */
/*  have been unzipped and located in the indicated directories.            */
/*                                                                          */
/*  First, create the default directory 'c:\cses\module3\20110331\' and     */
/*  place the zip file 'cses3.zip' there.                                   */
/*                                                                          */
/*  Second, unzip these two files from zip file 'cses3.zip':                */
/*                                                                          */
/*    File 1: c:\cses\module3\20110331\cses3_rawdata.txt                    */
/*    File 2: c:\cses\module3\20110331\stata.zip                            */
/*                                                                          */
/*  Third, unzip these five files from the zip file 'stata.zip' (make sure  */
/*  that, once unzipped, they appear in the \stata\ subdirectory):          */
/*                                                                          */
/*    File 1: c:\cses\module3\20110331\stata\cses3_codelabels.do            */
/*    File 2: c:\cses\module3\20110331\stata\cses3_columns.do               */
/*    File 3: c:\cses\module3\20110331\stata\cses3_formats.do               */
/*    File 4: c:\cses\module3\20110331\stata\cses3_run.do                   */
/*    File 5: c:\cses\module3\20110331\stata\cses3_variablelabels.do        */
/*                                                                          */
/*  Last, open the file 'cses3_run.do' in STATA and execute it.             */
/*  A STATA system file named 'cses3_dataset' will appear in directory:     */
/*  c:\cses\module3\20110331\stata\                                         */
/*                                                                          */
/*  NOTE: This release does not contain a file that makes missing data      */
/*  assignments.                                                            */
/*                                                                          */
/*  DATASET DOCUMENTATION                                                   */
/*                                                                          */
/*  Please note that documentation for the dataset is available in the      */
/*  three codebook files found within 'cses3.zip':                          */
/*                                                                          */
/*    c:\cses\module3\20110331\cses2_codebook_part1_introduction.txt        */
/*    c:\cses\module3\20110331\cses2_codebook_part2_variables.txt           */
/*    c:\cses\module3\20110331\cses2_codebook_part3_appendices.txt          */


set memory 120m
set more off

infix using c:\cses\module3\20110331\stata\cses3_columns.dct
do c:\cses\module3\20110331\stata\cses3_variablelabels.do
do c:\cses\module3\20110331\stata\cses3_formats.do
do c:\cses\module3\20110331\stata\cses3_codelabels.do

save c:\cses\module3\20110331\stata\cses3_dataset.dta
