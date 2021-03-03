# mulu-therion
Therion drawings for Mulu

# Folder structure
Folders are structed to correspond to the Mulu survex dataset. In this we have files

- mountain_master
  - *mountain_master.svx*
  - cave_area_master
    - *cave_master.svx*
    - cave_master
      - *survey_file.svx*

The survex data is replicated in .th therion files. However for each survex file we expect more than just centreline. We can store additional data by replacing the survex file with a folder. Here we can have a survey data file, a th2 drawing, a thconfig file to generate PDF, .3d,... therion outputs for each file. Additionally a subfolder can contain all relavant resources for the survey file.

-mountain_master
  -cave_area_master
    -*cave_area_master.th*
    -cave_master
      -*cave_master.th*
      -survey_file
        -*survey_file.th*
        -*survey_file.th2*
        -*thconfig*
      -resources
        -*survey_survey_sketch.png*
        -*survey_topodroid.top*
        -*photo.jpg*

At the cave_master level we have a cave_master.th file and a thconfig file. The cave_master.th file replicates the cave_master.svx file in that it pulls in the .th subfiles and equates the relevant stations. Therion relies on survex for its loopclosure etc so there is no difference here. However we additionally have the drawing file so the cave_master file contains the equates to join the scraps, and constructs therion "maps" to give more complete surveys of the cave.

As we go higher through the cave hierarchy we pull together more and more caves. The surveys therefore become larger and larger. To get around this we can use differnet, but consistent layouts. These are defined in the folder /layouts/. These should be used in *all* thconfig files by using their relative path (i.e. don't copy them in, input them with something along the lines of ../../../../layouts). This allows all surveys, at all levels to be kept consistent in style and adjusted if necessary.
