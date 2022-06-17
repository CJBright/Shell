<img src="SV-logo.png" align="right" width="200px" height="200px"/>

SimVascular Simulation Post-Processing - svPost
===============================================

Here you can find example scripts to run svPost and svPost-flows via the command line.
The scripts can be executed locally, or adapted for use on your own servers.
Additional information on svPost is accessible from [SimVascular's website](https://simvascular.github.io/index.html).

## svPost.sh - Example Script
#### svPost.sh requires your simulation to be complete. Files should be in a restart.x format.
#### The script WILL require editing for application to your simulation, guidance on how to do so is provided below.

1. **Line 3:** Points the ``svpost`` variable to the installation on your system. 
For pre-built binary installations on Linux, the path to svpost should be similar to the one provided.
2. **Lines 6-8:** Set the ``start`` and ``stop`` timesteps to be processed, in addition to the ``increments`` or ``spacing`` between them.  
**NOTE 1 -** The pressure and velocity fields take time to stabilise in your simulation.
Hence, often only the timesteps corresponding to the final cardiac cycle are processed.
**NOTE 2 -** To calculate values for TAWSS and OSI, the start timestep should be a **NON_ZERO** value.
3. **Lines 11-12:** Set the ``indir`` and ``outdir`` variables.
``indir`` corresponds to the directory containing the simulation's results in the format ***restart.x***.
``outdir`` corresponds to the directory that you want the processed results to be placed into in the format ***.vtu*** and ***.vtp***.
These variables may need further adjustment if your files are stored on a server - please ask your instituation's IT service for assistance.
4. **Line 16 & 18:** are used to call the svpost command with the settings previously specified.
**NOTE 1 -** Generating a single file for all timesteps may require a lot of RAM, be sure to check you are not running out when issuing this command.
**NOTE 2 -** You are able to change the name of ``all_results`` to whatever you wish. However, if you wish to use svPost-flows in the next step it is advised to keep these identical between ***.vtp*** and ***.vtu*** files.
5. You can now either: [run the script locally](https://stackoverflow.com/questions/2177932/how-do-i-execute-a-bash-script-in-terminal) or submit it to your server.

<h2>svPost-flows.sh - Example Script</h2>
<h4>svPost-flows.sh generates the flow and pressure files creted when running svPost from within SimVascular's GUI.<br>
svPost-flows.sh uses the *.vtu* and *.vtp* produced from svPost. Please run that first if you have not already done so.<br>
Similarly, the script WILL require editing to be applied to your simulation. Guidance is given below.</h4>

<ol>
    <li>**PRE-REQUISIT:** This script requires the *'create-flow-files'* binary to be built or installed as outlined <a href="https://github.com/ktbolt/cardiovascular/tree/master/create-flow-files">here</a>.</li>
    <li>**Line 3:** Points the **generate-flows** variable to the binary identified in the *PRE-REQUISIT* step.</li>
    <li>**Lines 6-8:** Sets the **meshDir**, **resDir**, and **outputDir** variables.<br>
    **meshDir** corresponds to the directory of the mesh surface files (.vtp files) for the simulation.<br>
    **resDir** corresponds  to the directory containing the converted simulation results from the previous svPost step.<br>
    **outputDir** corresponds to the directory you wish the pressure and flow files to be written to.</li>
    <li>**Lines 11-13:** Set the remaining options for the conversion and are set to match your simulation.<br>
    **singleFile** should be set to *yes* if svPost converted the files into a single *.vtp* and *.vtu* file. It should be set to *no* if otherwise.<br>
    **skipWalls** should be set to *yes* if you wish to skip the binary calculating average flows and pressures for the wall surfaces. It should be set to *no* otherwise.<br>
    **units** should be set to the unit system of your simulation *cm* or *mm*</li>
</ol>