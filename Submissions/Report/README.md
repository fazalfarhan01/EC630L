<!-- Output copied to clipboard! -->


<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 2; ALERTS: 13.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p><a href="#gdcalert1">alert1</a>
<a href="#gdcalert2">alert2</a>
<a href="#gdcalert3">alert3</a>
<a href="#gdcalert4">alert4</a>
<a href="#gdcalert5">alert5</a>
<a href="#gdcalert6">alert6</a>
<a href="#gdcalert7">alert7</a>
<a href="#gdcalert8">alert8</a>
<a href="#gdcalert9">alert9</a>
<a href="#gdcalert10">alert10</a>
<a href="#gdcalert11">alert11</a>
<a href="#gdcalert12">alert12</a>
<a href="#gdcalert13">alert13</a>

<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>


<p>


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image1.png" width="" alt="alt_text" title="image_tooltip">
Report on Event 4 of Lab Component
</p>
<h1>CMOS VLSI Circuits (EC630)</h1>


<p>
Covering the course objective
</p>
<p>
CO 4: Design, Demonstrate and validate the analog and digital CMOS circuits using<br>Cadence tool / Electric tool, document and give an effective presentation.
</p>
<p>Title: Part – B Analog Circuits
</p>

<table>
  <tr>
   <td><p style="text-align: right">
Name:</p>

   </td>
   <td>Mohamed Farhan Fazal
   </td>
  </tr>
  <tr>
   <td><p style="text-align: right">
Roll No:</p>

   </td>
   <td>27
   </td>
  </tr>
  <tr>
   <td><p style="text-align: right">
USN:</p>

   </td>
   <td>01JST18EC055
   </td>
  </tr>
  <tr>
   <td><p style="text-align: right">
Division:</p>

   </td>
   <td>A
   </td>
  </tr>
</table>


<p>
Submitted to
</p>
<p>
Prof. Halesh M. R<br>Assistant Professor, Dept. of ECE
</p>
<p>
DEPARTMENT OF ELECTRONICS AND COMMUNICATION ENGINEERING
</p>
<p>
2021
</p>
<p>

</p>
<h1>TABLE OF CONTENT</h1>


<p>

</p>
<h1>USAGE STEPS FOR CADENCE TOOL</h1>


<ol>

<li>Launch Cadence now by going to your working directory and typing virtuoso& at the command prompt. Cadence starts a new CDS.log file in your home directory where all the messages that appear in the CIW will be stored.
<ol>

<li>To start a design in Cadence, you must first create a library where you can store your design cells. Every Library is associated with a technology file and it is the technology file that supplies the color maps, layer maps, design rules, and extraction parameters required to view, design, simulate and fabricate your circuit. Cadence stores its files in libraries, cells, and cell views.
</li>
</ol>
</li>
</ol>
<ol>

<li>
In the Library Manager window, select File => New => Library to open the Create Library window shown below. Enter a Name for your library. Then the next dialog box appears, click on Attach to Existing Tech Library and click OK. Note that this dialog box may be hidden beneath another window.
<ol>

<li>Go to the Library Manager window and click/select your library (for example “project1”). Now select File => New => Cellview. Use the Create New File window that pops up to create the schematic view for an inverter cell.
</li>
</ol>
</li>
</ol>
<ol>

<li>Then Enter the Cell Name. Click on Type drop-down list and select Schematic. This is where you choose the appropriate View Name for each tool will be filled in automatically. Click the OK button. The Virtuoso schematic editing tool will open with an empty Schematic Editing window as shown below.
</li>
</ol>
<ol>

<li>In the Schematic Editing window Select Create => Instance to activate the Create Instance tool for adding components (transistors, sources, etc.) to your schematic. You can also invoke this tool by clicking on the Instance icon on the left-hand toolbar, or by typing the hot key ‘I’ with your mouse over the Schematic Editing window. Two windows (Component Browser window and Add Instance) will pop open. To join the components through wires select Create => Wire (or use hot key ‘w’) to begin placing wires which will connect the terminals of the components and pins in the schematic.
</li>
</ol>
<ol>

<li>Check the cell for errors. If errors exist the error section will blink in the Schematic Editing window. Save the cellview. With your cellview schematic open, in the Schematic Editing window select Launch => ADE L, and the Virtuoso Analog Design Environment window will open.
</li>
</ol>
<ol>

<li>We need to choose what type of analysis we wish to perform. Different analyses are useful for getting a variety of different data from the simulations, here we will set up a transient (over time) analysis. Alternative analysis types, including DC analysis.
</li>
</ol>
<ol>

<li>In Virtuoso Analog Design Environment window, select Outputs => to be plotted => Select on Schematic. This will activate the Schematic Window allowing you to pick which signals (nets/wires) you would like to have plotted during the simulation. In the Schematic Window click on the wire that is the input to your inverter and also click on the output wire. This will complete the simulation setup.
</li>
</ol>
<ol>

<li>In the Virtuoso Analog Design Environment window select Simulation => Net list and Run. Or, click the green arrow button on the screen. • When the simulation is complete, the CIW should show "Reading Simulation Data Successful". If the simulation was not successful, go to Simulation => Output Log in your Virtuoso Analog Design Environment to find out what the problem was. To separate input and output signals, in the Waveform Window click on Graph => Split All Strips.
</li>
</ol>
<ol>

<li>In case of Layout, Same steps to create the cellview but change the cell type from schematic to layout and on the Layout window use the menu Verify =>Extract, The Extractor dialogue window will open up. The layout components of your circuit show on the layout window. The layout is now complete and needs to be checked for design rule violations. On the layout window click on the Calibre menu item Caliber >Run DRC.
</li>
</ol>
<h1>USAGE STEPS FOR ELECTRIC TOOL</h1>


<ol>

<li>Ensure Java is installed on your computer by going to Java.com. Create directory C:\Electric and then save electric-9.07.jar in this directory.
</li>
</ol>
<ol>

<li>Then open the electric tool and create a new library and in that library create the new cell. After that select the view you need after that in the components tool bar you will get the tools or the components needed for the circuit.
</li>
</ol>
<ol>

<li>Place the components to get the circuit which you need to create. In case, if you need to change the width, double click on the component. And to export the device, Go to Export=>Create New export and rename it as vdd or vss.
</li>
</ol>
<ol>

<li>To connect the wire right click in the starting point and left click at the end point.
</li>
</ol>
<ol>

<li>Once you complete the circuit go to tools => DRC=>Check Hierarchically.
</li>
</ol>
<ol>

<li>Go to tools=>simulation (spice) and set spice model for the pmos and nmos.
</li>
</ol>
<ol>

<li>After that, if you found any error go to Explorer=>Errors, there you can check the error and then correct them.
</li>
</ol>
<ol>

<li>Then in Preferences change the technology, scale and spice and also memory.
</li>
</ol>
<ol>

<li>Go to tools=> Simulation(spice)=>write spice deck and run the circuit and code in LT-spice.
</li>
</ol>
<ol>

<li>In that plot settings=>add trace, add the required traces you needed to plot.
</li>
</ol>
<ol>

<li>In case of layout it is the same for all the things but in the toolbar you will find the layout tools.
</li>
</ol>
<h1>COMMON SOURCE AMPLIFIER</h1>


<h2>SCHEMATIC</h2>


<h2>SCHEMATIC RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>LAYOUT</h2>


<h2>LAYOUT RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>INFERENCE</h2>



<table>
  <tr>
   <td>Designed Gain
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Designed Gain in db
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Number of transistors
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td>Parameter
   </td>
   <td>Schematic
   </td>
   <td>Layout
   </td>
  </tr>
  <tr>
   <td>DC Switching Point
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Gain from transient analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Gain from AC analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Bandwidth
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>


<h1>COMMON DRAIN AMPLIFIER</h1>


<h2>SCHEMATIC</h2>


<h2>SCHEMATIC RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>LAYOUT</h2>


<h2>LAYOUT RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>INFERENCE</h2>



<table>
  <tr>
   <td>Designed Gain
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Designed Gain in db
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Number of transistors
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td>Parameter
   </td>
   <td>Schematic
   </td>
   <td>Layout
   </td>
  </tr>
  <tr>
   <td>DC Switching Point
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Gain from transient analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Gain from AC analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Bandwidth
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>


<h1>COMMON GATE AMPLIFIER</h1>


<h2>SCHEMATIC</h2>


<h2>SCHEMATIC RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>LAYOUT</h2>


<h2>LAYOUT RESULT ANALYSIS</h2>


<h3>DC ANALYSIS</h3>


<h3>TRANSIENT ANALYSIS</h3>


<h2>INFERENCE</h2>



<table>
  <tr>
   <td>Designed Gain
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Designed Gain in db
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Number of transistors
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: equation: use MathJax/LaTeX if your publishing platform supports it. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ADD MORE IF NEEDED
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td>Parameter
   </td>
   <td>Schematic
   </td>
   <td>Layout
   </td>
  </tr>
  <tr>
   <td>DC Switching Point
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Gain from transient analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Gain from AC analysis
   </td>
   <td>(Both Regular & db)
   </td>
   <td>(Both Regular & db)
   </td>
  </tr>
  <tr>
   <td>Bandwidth
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>

