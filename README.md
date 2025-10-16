# MF_plotter-
Bass Clarinet Timbre Space Visualizer and Sampler

Required software to run code: 

*Supercollider 3.13.0
*FluidCorpusManipulation External 

Preliminary Steps 

0. Dowonload the files and folders contained keeping the directory structure
1. Download the FLUCOMA external package from https://www.flucoma.org/download/ // Skip this step if you already downloaded it
2. Add the external FluidCorpusManipulation to the extensions folder for Supercollider 

Mac OS: 
"/Users/x/Library/Application Support/SuperCollider/Extensions/"

Folder contents: 

Supercollider cod file for MFCC analysis of bass clarinet multiphonics: bassClarinet_3D_MFCCs.scd
Supercollider code file for descriptors (pitch, centroid, flatness): bassClarinet_2D_descriptors.scd

Wav file with multi phonic selections: collection_sound.wav
Txt file with indices for analysis segmentation: collection_index.txt

Datasets: 

Loudness Dataset for MDS: ds2_l.txt
Pitch: ds2_p.txt
MDS Dataset: mfDataset_MFCC.json
Loudness Dataset for 2D descriptors: ds3_l.txt

Label sets: 

Label dataset with slices:  label1_collection.json
Label dataset with mf charts:  label2_collection.json

/////////////////////

INSTRUCTIONS 

Once the preliminary steps have been completed, open one of the two files .scd files and follow the instructions within them. 



