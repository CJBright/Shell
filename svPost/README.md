<img src="SV-logo.png" align="right" width="210px" height="210px"/>

<h1>Welcome to the svPost repo!</h1>
<ol>This repo contains files for running svPost via the command line and can be used locally or on a HPC cluster.
For more information on SimVascular and svPost please refer to <a href="https://simvascular.github.io/index.html">SimVascular's website</a>.

<h2>svPost.sh</h2>
<h3>This script should be used to run svPost on the results of an already complete simulation.</h3>
<ol>
    <li>Change line 2 to point towards the installation of svpost on your system.</li>
    <li>Next, set the start timestep, stop timestep, and timestep size values in the file.
    Please note, that in order to correcly calculate values for TAWSS & OSI, you must set the start increment to a non-0 timestep. E.g. the timestep size you used.</li>
    <li>Finally set the <em>indir</em> and <em>outdir</em> variables to point to the correct project and results folders.</li>
    <li>Please refer to the section on svPost within the SV website to check for additional flags you might like to use.</li>
    <li>Please do not change the name <em>all_results</em> if you wish you use svPost-flows in the next step.</li>
    <li>Now either run the script from the shell or submit it to your cluster.</li>
</ol>

<h2>svPost-flows.sh</h2>
<h3>This script should be used on the converted results of an svPost script.
The functionality of this script is contained within SimVascular if used through the GUI.</h3>
<ol>
    <li>Step 1 is to install or build the 'create-flow-files' binary outlined <a href="https://github.com/ktbolt/cardiovascular/tree/master/create-flow-files">here</a>.</li>
    <li>Once complete, alter line 2 to point towards the installation of create-flow-files on your system.</li>
    <li>Similarly, adjust the paths attached to <em>meshDir</em>, <em>resDir</em>, and <em>outputDir</em> to match your simulation.</li?>
    <li>The remaining options are free to be set to your liking.</ol>
    <li></li>
    <li>A more detailed description of the options is given as:</li>
    <ol>
        <li>--mesh-directory: The directory where the mesh surface files (.vtp) are located.</li>
        <li>--output-directory: The directory to write the average flow files to.</li>
        <li>--results-directory: The directory of the converted simulation results.</li>
        <li>--single-file: Simulation results have been converted to a single .vtu file. (yes/no) </li>
        <li>--skip-walls: Skip calculating averages for walls. (yes/no) </li>
        <li>--units: Units (cm, mm)</li>
    </ol>
</ol>