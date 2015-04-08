## Requirements ##
osm_hybrid.msnpx project requires a PostgreSQL/PostGIS database (OSM by default) created by using osm2pgsql converter.
Therefore, it is required to change a connection string to the tables by providing host, port and user credentials.
You can do it in following steps:
 1. Extract the content of **osm_hybrid.msnpx** file which is actually a zip archive.
 2. In the created folder **osm_hybrid**, open file **Studio\mapstyles.xml** in a text editor.
 3. Replace all strings such as
    <Value>Host=localhost;Database=OSM;User ID=postgres;Password=YOURPASSWORD;Port=5432;CommandTimeout=10000</Value>
    with strings containing your settings.
 4.  Save your changes.
 5.  Go to folder **osm_hybrid**, select all folders and files and create a zip-archive (for example, osm_hybrid_ex.zip).
 6.  Change .zip extension to .msnpx.
