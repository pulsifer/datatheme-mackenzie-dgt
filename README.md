# datatheme-pgyi

> !WIP: this is work in progress.

A Datatheme is a defined [Tabular Datapackage](http://dataprotocols.org/tabular-data-package/). Essentially a Class from which you can base your Tabular Datapackage from. The intent is to have one place to define and version the data model using the [JSON Table Schema](http://dataprotocols.org/json-table-schema/).


You build the Datatheme into a base ``datapackage.json`` file which you can extend for your purpose.

A datatheme consists of a ``datatheme.json`` file which describes itself and paths to all schema resources referenced by this theme.

````
$ cat datatheme.json
{
    "name": "mackenzie.dgt",
    "version": "1.0.1",
    "repository": "http://github.com/tesera/datatheme-mackenzie-dgt.git",
    "author": "Yves Richard",
    "description": "Datatheme for Mackenzie Basin DGT data.",
    "schemas": [
        "./schemas/dgt_data.json",
        "./schemas/dgt_meta.json"
    ]
}
````

####Building into a datapackage.json file (datatheme to datapackage)
````
$ sh ./dt2dp.sh > datapackage.json
````

When deploying to S3 use:
bash publi.sh put dev.mackenzie.dgt
In .env file dev.mackenzie is the DATATHEME_ROOT and .[theme] is resolved dynamically. 