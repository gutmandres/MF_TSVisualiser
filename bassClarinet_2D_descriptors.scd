/////////// Multiphonic Timbre Space Visualiser Sampler ///////////
////////////////////////////////////////////////////////////////////////////////////
// An artistic research project by Andres Gutierrez Martinez and Chiara Percivati
///////////////////////////////////////////////////////////////////////////////////
////////// Run each function individually by clicking Cmd + Shift + B within batches of code with close parentheses ////
///////// Then compile the selected parenthesis clicking Cmd + Enter ////////

(
//////////////////////////////////////////////////////////////////////
///// 1. Load file paths, sound collection, index and datasets:
//////////////////////////////////////////////////////////////////////

~path = PathName(thisProcess.nowExecutingPath).parentPath;/// Takes the path of the .scd file as the main path
{~path1 = ~path ++ "collection_sound.mp3";}.defer(0.8);
{~path2 =  ~path ++ "collection_index.txt"}.defer(0.3);
{~corpus = SoundFile.openRead(~path1).asBuffer;}.defer(1.0);
{~indices3Array = Object.readArchive(~path2);}.defer(1.2);
{~indices2D = Buffer.loadCollection(s, ~indices3Array, action: "loading done".postln);}.defer(1.3);

{~label = FluidLabelSet(s)}.defer(0.7);
{~label2 = FluidLabelSet(s)}.defer(0.8);
{~ds2D_CP = FluidDataSet(s)}.defer(0.8);
{~ds2D_CF = FluidDataSet(s)}.defer(0.8);
{~label.read(~path ++ "label1_collection.json")}.defer(2.0);
{~label2.read(~path ++ "label2_collection.json")}.defer(2.0);
{~ds2D_CF.read(~path ++ "mfDataset_CentroidFlatness.json")}.defer(2.0);
{~ds2D_CP.read(~path ++ "mfDataset_CentroidPitch.json")}.defer(2.0);
{g = Object.readArchive(~path ++ "ds3_l.txt")}.defer(2.0);
)

/////// OPTIONAL STEP //////////////
///// Visualize the segmentation of the waveform of the entire file /////
FluidWaveform(~corpus,~indices2D,bounds:Rect(0,0,1600,400));

//////////////////////////////////////////////////////////
//////// 2. LOAD Data visualization Routines /////////////
//////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////¡
(
t = Routine {
        {
         {
                    if(~guiWind.isClosed.not) {
						~staticTextSlice.string = " Slice: " ++ ~valueSlice;
                        ~staticTextMf.string = " Multiphonic: " ++ ~valueMf;
                    };
                }.defer;
            0.1.wait;
        }.loop
    };

r = Routine {
						{
							{
									if(~valueIndex.notNil){
					if((~valueIndex >= 0).and(~valueIndex <= 4)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
						~image = Image.open(~path ++ "charts/Sp_03.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 5).and(~valueIndex <= 11)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
						~image = Image.open(~path ++ "charts/Sp_04.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
					//	~image = Image.open(~path ++ "charts/Sp_04.png");
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;
					};
									};
					if((~valueIndex >= 12).and(~valueIndex <= 19)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
						~image = Image.open(~path ++ "charts/Sp_16.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;
					};
									};
					if((~valueIndex >= 20).and(~valueIndex <= 23)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
						~image = Image.open(~path ++ "charts/Sp_20.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;
					};
									};
					if((~valueIndex >= 24).and(~valueIndex <= 27)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
						~image = Image.open(~path ++ "charts/Sp_29.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 28).and(~valueIndex <= 33)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_36.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 34).and(~valueIndex <= 38)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_41.png");
					    ~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 39).and(~valueIndex <= 42)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_44.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 43).and(~valueIndex <= 46)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_64.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 47).and(~valueIndex <= 50)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_77.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 51).and(~valueIndex <= 58)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Sp_88.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
				 	if((~valueIndex >= 59).and(~valueIndex <= 63)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Ex_10.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 64).and(~valueIndex <= 69)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Ex_11.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 70).and(~valueIndex <= 75)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Ex_18.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 76).and(~valueIndex <= 80)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/Ex_31.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 81).and(~valueIndex <= 83)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/C.VI.13.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
									};
					if((~valueIndex >= 84).and(~valueIndex <= 88)){~tick = 0; ~tick = ~tick + 1;
					if(~tick == 1){
					    ~image = Image.open(~path ++ "charts/And_7.png");
						~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 390));
						~composite.background = Color.gray;
						~composite.setBackgroundImage(~image, fromRect: ~image.bounds);
						~composite.refresh;};
										};
									};
								}.defer;
								0.1.wait;
					}.loop
    };

)

////////// 3. Plot the data and create a sampler to listen to each data point ////////////////
/////////     By chaning the values below between 0 and 2 for the x axis, you can create two separate plots
////////      to see the three dimensions anchored by the second dimension in the y-axis
(
~plot2D_descriptors = {
	arg buffer, indices, redux_ds, action;
	Routine{
		var numNeighbors = 1;
		var kdtree = FluidKDTree(s, numNeighbors);
		var buf_2d = Buffer.alloc(s,2);
		var scaler = FluidNormalize(s);
		var newds = FluidDataSet(s);
		var xmin = -0.05, xmax = 1.05, ymin = -0.05, ymax = 1.05;

		s.sync;
		scaler.fitTransform(redux_ds,newds,{
			"scaling done".postln;
			kdtree.fit(newds,{
				"kdtree fit".postln;
				newds.dump({
					arg dict;
					var previous, fp;
					"ds dumped".postln;
					l = dict;
					defer{
						~guiWind = Window("Multiphonic Timbre Space Visualizer/Sampler", Rect(0, 0, 1600, 805), resizable:true).front;
						~fp = FluidPlotter(~guiWind, Rect(800,0,800,800), dict: dict,xmin:xmin,xmax:xmax,ymin:ymin,ymax:ymax, standalone: true, mouseMoveAction:{
						arg view, x, y;
						//[x,y].postln;
						buf_2d.setn(0,[x,y]);
						kdtree.kNearest(buf_2d, numNeighbors, {
							arg nearest;
							if(previous != nearest,{
								var index = nearest.asString.split($-)[1].asInteger;
								previous = nearest;
								nearest.postln;
								index.postln;
								~valueSlice = nearest.asString;
								~valueIndex = nearest.asInteger;
								~label.getLabel((nearest), {|val| ~valueMf = val.asString.postln});
								~label2.getLabel((nearest), {|val| ~valueIndex = val.asInteger});
								{
									var startPos = Index.kr(indices,index);
									var dur_samps = Index.kr(indices,index + 1) - startPos;
									var sig = PlayBuf.ar(1,buffer,BufRateScale.ir(buffer),startPos:startPos);
									var dur_sec = (dur_samps / BufSampleRate.ir(buffer));
									var env;
									dur_sec = min(dur_sec, 20);
									env = EnvGen.kr(Env([0,1,1,0],[0.03,dur_sec-0.06,0.03]),doneAction:2);
									Out.ar(0, sig.dup * env);
								}.play;
								view.highlight_(nearest); // makes the selected point a little bit bigger in the plot

							});
						});
					});
					~tick = 0;
					~staticTextMf = StaticText(~guiWind, Rect(0, 0, 400, 40)).background_(Color.gray).font_(Font("Futura", 22, true));
~staticTextMf.string = " Multiphonic: ";
					~staticTextSlice = StaticText(~guiWind, Rect(400, 0, 400, 40)).background_(Color.gray).font_(Font("Futura", 22, true));
~staticTextSlice.string = " Slice: ";
					//~guiWind.view.decorator.nextLine;
					~composite = CompositeView.new(~guiWind, Rect(0, 40, 800, 300));

					    t.play;
						r.play;

						1.do{|i|
						~fp.pointColor_("slice-0",  Color.black);
						~fp.pointColor_("slice-5",  Color.black);
						~fp.pointColor_("slice-12",  Color.black);
						~fp.pointColor_("slice-20",  Color.black);
						~fp.pointColor_("slice-24",  Color.black);
						~fp.pointColor_("slice-28",  Color.black);
						~fp.pointColor_("slice-34",  Color.black);
						~fp.pointColor_("slice-39",  Color.black);
						~fp.pointColor_("slice-43",  Color.black);
					    ~fp.pointColor_("slice-47",  Color.black);
						~fp.pointColor_("slice-51",  Color.black);
						~fp.pointColor_("slice-59",  Color.black);
						~fp.pointColor_("slice-64",  Color.black);
						~fp.pointColor_("slice-70",  Color.black);
						~fp.pointColor_("slice-76",  Color.black);
						~fp.pointColor_("slice-81",  Color.black);
						~fp.pointColor_("slice-84",  Color.black);
					};
					1.do{|i|
						~fp.pointColor_("slice-1",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-6",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-13",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-21",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-25",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-29",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-35",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-40",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-44",  Color(0, 0.2, 0.98));
					    ~fp.pointColor_("slice-48",  Color(0, 0.2, 0.98));
					    ~fp.pointColor_("slice-52",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-60",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-65",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-71",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-77",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-82",  Color(0, 0.2, 0.98));
						~fp.pointColor_("slice-85",  Color(0, 0.2, 0.98));

					};
					1.do{
						~fp.pointColor_("slice-2", Color(0, 0.6, 0));
						~fp.pointColor_("slice-7", Color(0, 0.6, 0));
						~fp.pointColor_("slice-14",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-22",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-26",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-30",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-36",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-41",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-45",  Color(0, 0.6, 0));
					    ~fp.pointColor_("slice-49",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-53",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-61",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-66",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-72",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-78",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-83",  Color(0, 0.6, 0));
						~fp.pointColor_("slice-86",  Color(0, 0.6, 0));
					};


					1.do{
						~fp.pointColor_("slice-3", Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-8", Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-15", Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-23", Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-27",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-31",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-37",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-42",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-46",  Color(0.92, 0.78, 0.12));
					    ~fp.pointColor_("slice-50",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-54",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-62",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-67",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-73",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-79",  Color(0.92, 0.78, 0.12));
						~fp.pointColor_("slice-87",  Color(0.92, 0.78, 0.12));

					};
					1.do{
						~fp.pointColor_("slice-4",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-9",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-16",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-32",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-38",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-55",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-63",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-68",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-74",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-80",   Color(1, 0.5, 0));
						~fp.pointColor_("slice-88",   Color(1, 0.5, 0));
					};
					1.do{
						~fp.pointColor_("slice-10",  Color.red);
						~fp.pointColor_("slice-17",  Color.red);
						~fp.pointColor_("slice-33",  Color.red);
						~fp.pointColor_("slice-56",  Color.red);
						~fp.pointColor_("slice-69",  Color(1, 0, 0));
						~fp.pointColor_("slice-75",  Color(1, 0, 0));
					};

					1.do{
						~fp.pointColor_("slice-11",   Color(0.36, 0, 1));
						~fp.pointColor_("slice-18",  Color(0.36, 0, 1));
						~fp.pointColor_("slice-57",  Color(0.36, 0, 1));
					};
					1.do{
						~fp.pointColor_("slice-19",   Color(1, 0.7, 0.74));
						~fp.pointColor_("slice-58",   Color(1, 0.7, 0.74));
					};


			89.do{|i|
			var valuel, valuep, finall, finalp;
				valuel = g.at("data").at(("slice-%").format(i).asString);
				finall = valuel[0];
				~fp.pointSize_(("slice-%").format(i),  (finall * 4) + 1);//3);//(finalp * 3) + 1);
					};
					};
					action.(~fp,newds);
				});
			});
		});

	}.play;
};
)
/////////////////////////////////
////// 4.0 final step ///////////
/////Two differet plotters //////
////// the first plot opens the window for descriptors related to spectral brightness x-axis (centroid) and estimated pitch y-axis.
////// the second plot makes the window for descriptors related to brightness x-axis and noisiyness y-axis (spectral flatnes
(
// plot Centroid vs Pitch ///
~plot2D_descriptors.(~corpus,~indices2D, ~ds2D_CP); /// Visualize the data ///////
)

(
// plot Centroid vs Spectral Flatness
~plot2D_descriptors.(~corpus,~indices2D, ~ds2D_CF);
//FluidWaveform(~buffer2,~indices2,bounds:Rect(0,0,1600,400));
)

//////      ////////
////// END  ////////
//////     /////////

