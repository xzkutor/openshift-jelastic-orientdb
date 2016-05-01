# Jelastic OrientDB Cartridge
This cartridge provides [OrientDB](http://www.orientechnologies.com/orientdb/) on Jelastic Platform.

**OrientDB** is an open source NoSQL database management system written in Java. It has features of both Document and Graph management, as it’s document-based database, but the relationships are managed as in graph databases with direct connections between records. 

OrientDB is incredibly fast: it can store up to 150,000 records per second on common hardware. In addition, this database supports schema-less, schema-full and schema-mixed modes. It also has a strong security profiling system based on users and roles and supports SQL as a query language. 

For more details refer to the [Jelastic documentation](http://docs.jelastic.com/orientdb).

Follow the [link](http://ops-docs.jelastic.com/private-add-cartridge) in order to find out how to enable the current cartridge at Jelastic dashboard.

### What Jelastic cartridge is?

Jelastic [Platform-as-Infrastructure](http://docs.jelastic.com/what-is-platform-as-infrastructure) supports **OpenShift’s cartridge model** to make it easier for independent software vendors (ISVs) offering core services in multiple platforms and for a wider array of cloud ecosystems and marketplaces. This open standard for technology packaging and deployment enables ISVs and end-users to integrate their own middleware, databases, and services into the platform and make them available to PaaS developers building applications.

A **cartridge** is an advanced packaging format. In our case, it is represented with existing OpenShift cartridge specifications, extended with Jelastic configurations, to provide more complex functionality and the ability to make adjustments in Jelastic. This additional tuning is required based on the difference between the architectures of the two platforms (Jelastic and OpenShift).

Such configuration is quite easy - you just need to fork a basic cartridge and add custom settings. Detailed instruction on how to create your own cartridge can be seen [here](http://ops-docs.jelastic.com/create-cartridge).


### How to add a cartridge to Jelastic Cloud?

Ready cartridge (your own or one of those we’ve already prepared for you) can be added to the Jelastic PaI via JCA. After that it should be tested and published in order to become available through the dashboard. Find out the details in [this](http://ops-docs.jelastic.com/private-add-cartridge) instruction.
