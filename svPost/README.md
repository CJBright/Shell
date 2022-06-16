<img src="SV-logo" align="right" width="210px" height="210px"/>

>Welcome to the svPost repo!
<ol>This repo contains files for running svPost via the command line and can be used locally or on a HPC cluster.
<ol>For more information on SimVascular and svPost please refer to <a href="https://simvascular.github.io/index.html">SimVascular's website</a>.</ol>

>svPost.sh
>This script should be used to run svPost on the results of an already complete simulation.
<ol>Change line 2 to point towards the installation of svpost on your system.</ol>
<ol>Next, set the start timestep, stop timestep, and timestep size values in the file.
Please note, that in order to correcly calculate values for TAWSS & OSI, you must set the start increment to a non-0 timestep. E.g. the timestep size you used.</ol>
<ol>Finally set the <em>indir</em> and <em>outdir</em> variables to point to the correct project and results folders.</ol>
<ol>Please refer to the section on svPost within the SV website to check for additional flags you might like to use.</ol>
<ol>Please do not change the name <em>all_results</em> if you wish you use svPost-flows in the next step.</ol>
<ol>Now either run the script from the shell or submit it to your cluster.</ol>

>svPost-flows.sh
>This script should be used on the converted results of an svPost script.
>The functionality of this script is contained within SimVascular if used through the GUI.
<ol>Step 1 is to install or build the 'create-flow-files' binary outlined <a href="https://github.com/ktbolt/cardiovascular/tree/master/create-flow-files">here</a>.</ol>
<ol>Once complete, alter line 2 to point towards the installation of create-flow-files on your system.</ol>
<ol>Similarly, adjust the paths attached to <em>meshDir</em>, <em>resDir</em>, and <em>outputDir</em> to match your simulation.
<ol>The remaining options are free to be set to your liking.</ol>
<ol></ol>
<ol>A more detailed description of the options is given as:
    <ol>--mesh-directory: The directory where the mesh surface files (.vtp) are located.</ol>
    <ol>--output-directory: The directory to write the average flow files to.</ol>
    <ol>--results-directory: The directory of the converted simulation results.</ol>
    <ol>--single-file: Simulation results have been converted to a single .vtu file. (yes/no) </ol>
    <ol>--skip-walls: Skip calculating averages for walls. (yes/no) </ol>
    <ol>--units: Units (cm, mm) </ol>
</ol>