<img src="SV-logo.png" align="right" width="210px" height="210px"/>

<h1>SimVascular Simulation Post-Processing - svPost.</h1>
<p>Here you can find example scripts to run svPost via the command line.<br>
The scripts can be executed on a local installation of adapted for use on your own high-powered servers.
Additional information on svPost is accessible on <a href="https://simvascular.github.io/index.html">SimVascular's website</a>.</p>

<h2>svPost.sh</h2>
<h3>An example script for running svPost via the command line.</h3>
<p>Your simulation should be complete with files stored in a restart.x format.<br>
The script WILL require editing to be applied to your simulation, guidance is provided below.</p>
<ol>
    <li>Line 2: Directs the <em>svpost</em> variable to the installation on your system.<br> 
    For pre-built binary installations on Linux, the path to svpost should be very similar to the one shown.</li>
    <li>Lines 4-6: Set the <em>start</em> and <em>stop</em> timesteps you would like to be processed as well as the <em>increments</em> between them.<br>
    NOTE 1 - The pressure and velocity fields take time to stabilise in your simulation. Hence, often only the timesteps corresponding to the final cardiac cycle are processed. Next, set the start timestep, stop timestep, and timestep size values in the file.<br>
    NOTE 2 - To calculate values for TAWSS and OSI, the start timestep should be NON_ZERO.</li>
    <li>Lines 8-9: Sets the <em>indir</em> and <em>outdir</em> variables.<br>
    <em>indir</em> corresponds to the directory containing the simulation's results in the format <i>restart.x</i>.<br>
    <em>outdir</em> corresponds to the directory that you want the processed results to be placed into in the format <i>.vtu</i> and <i>.vtp</i>.<br>
    These variables may need further adjustment if your files are stored on a server - please ask your IT advice for assistance.</li>
    <li>Line 11: Is used to call the svpost command with the settings previously specified.<br>
    NOTE - Changing the name of <em>all_results</em> is possible, though unadvised if you wish to use svPost-flows in the next step.</li>
    <li>Now you may either run the script from the shell or submit it to your cluster.</li>
</ol>

<h2>svPost-flows.sh</h2>
<h3>An example script for running svPost-flows via the command line.</h3>
<p>svPost-flows is used to generate the flow and pressure files normally generated when using svPost from within SimVascular's GUI.<br>
svPost-flows requires the .vtu and .vtp files from the svPost command. Please run that first if you have not already done so.<br>
Similarly, the script WILL require editing to be applied to your simulation, with guidance given below.</p>
<ol>
    <li>PRE-REQUISIT: This script requires the 'create-flow-files' binary to be built or installed as outlined <a href="https://github.com/ktbolt/cardiovascular/tree/master/create-flow-files">here</a>.</li>
    <li>Line 2: Points the <em>generate-flows</em> variable to the binary identified in the <i>PRE-REQUISIT</i> step.</li>
    <li>Lines 5-7: Sets the <em>meshDir</em>, <em>resDir</em>, and <em>outputDir</em> variables.<br>
    <em>meshDir</em> corresponds to the directory of the mesh surface files (.vtp files) for the simulation.<br>
    <em>resDir</em> corresponds  to the directory containing the converted simulation results from the previous svPost step.<br>
    <em>outputDir</em> corresponds to the directory you wish the pressure and flow files to be written to.</li>
    <li>Lines 9-11: Set the remaining options for the conversion and are set to match your simulation.<br>
    <em>singleFile</em> should be set to <i>yes</i> if svPost converted the files into a single <i>.vtp</i> and <i>.vtu</i> file. It should be set to <i>no</i> if otherwise.<br>
    <em>skipWalls</em> should be set to <i>yes</i> if you wish to skip the binary calculating average flows and pressures for the wall surfaces. It should be set to <i>no</i> otherwise.</li>
    <em>units</em> should be set to the unit system of your simulation <i>cm</i> or <i>mm</i>.</li>
</ol>