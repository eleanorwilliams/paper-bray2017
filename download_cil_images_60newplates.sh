# Script to download data from http://www.cellimagelibrary.org/pages/project_20269
# Human U2OS cells - compound cell-painting experiment
# URLs are of the form: http://ccdb-portal.crbs.ucsd.edu:8080/broad_data/plate_26794/26794-ERSyto.zip

# edited by Eleanor Williams to retrieve just the list of plates added to project_20269 in September 2016
 
URL_LIST=""
for plate in 24277 24280 24293 24294 24295 24296 24300 24301 24302 24303 24305 24306 24308 24309 24310 24311 24312 24313 24320 24321 24357 24508 24509 24514 24515 24516 24517 24518 24523 24525 24591 24635 24636 24637 24638 24639 24640 24643 24644 24645 24646 24647 24648 24651 24652 24654 24655 24656 24657 24661 24663 24666 24667 24683 24684 24685 24687 24688 26795 26796;
do
	for channel in Hoechst ERSyto ERSytoBleed Ph_golgi Mito;
	do 
		URL_LIST="http://ccdb-portal.crbs.ucsd.edu:8080/broad_data/plate_${plate}/${plate}-${channel}.zip $URL_LIST"
	done
done

#http://stackoverflow.com/a/11850469/1094109
echo $URL_LIST | xargs -n 1 -P 8 wget -q
