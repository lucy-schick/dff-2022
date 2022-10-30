Workflows to create digital field forms and QGIS projects that integrate with [Mergin Maps](https://merginmaps.com/?gclid=Cj0KCQjwnvOaBhDTARIsAJf8eVPAtSEg0pF915dFv6b4kge16gvwTRnX75S0gEB4Xj2wRZevorN3n3EaAhSrEALw_wcB) for field data collection related to fish passage assessment, habitat assessment and stream crossing climate change/maintenance issue risk assessment. 

At this point the forms are intended to be tidied using R scripts (currently housed in project specific repositories) and exported to csv for copy and paste into standardized submission templates that can be submitted to the province.  However, there is currently more information gathered that can be used for custom reporting including climate change risk and maintenance issue risk assessment.

`build_*` scripts within the `scripts` directory read in Provincial Government data submission templates as detailed below to provide the skeletons for the geopackage tables produced to serve as forms.

`qml` files which provide `QGIS` styling for forms are kept in the `data` directory along with `QGIS` project `qlr` files that can be used to provide styling for all project layers. 

Project layers clipped to watershed group areas in British Columbia are bulk downloaded from the [BC Data Catalogue](https://catalogue.data.gov.bc.ca/dataset?download_audience=Public), [Hillcrest Geographics server](https://www.hillcrestgeo.ca/outgoing/fishpassage/data/bcfishpass/outputs/), [fwapg](https://features.hillcrestgeo.ca/fwa/), and [Provincial Government FTP site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/topographic-data/roads) using [`bcdata`](https://github.com/smnorris/bcdata), `ogr2ogr` and `wget` by running the `scripts/background_layers.sh` and specifying watershed groups of interest as a comma separated, single quoted string eg. 

`$ ./background_layers.sh "'VICT','COWN'"`

Standardized provincial submission templates used to generate digital field form skeletons modified with `scripts/build_*` scripts include:

 + Fish Passage - [pscis_assessment_template_v24.xls](https://www2.gov.bc.ca/gov/content/environment/plants-animals-ecosystems/fish/aquatic-habitat-management/fish-passage/fish-passage-technical/assessment-projects)

 + Fish Passage - [Fish Data Submission Spreadsheet Template - V 2.0, January 20, 2020 (FDS_Template2021-01-28.xls) ](https://www2.gov.bc.ca/gov/content/environment/plants-animals-ecosystems/fish/fish-and-fish-habitat-data-information/fish-data-submission/submit-fish-data#submitfish) 
   
