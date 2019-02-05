# pyspark_primer
Jupyter notebook of basic PySpark operations

# Naming Convention
* Folders - small case, separated by dash (-)
* Files - small case, separated by underscore (_)

# Setup
## Pyspark on Jupyter for Mac/Linux Systems
### Pre-Reqs
1. Linux/MacOS enabled machine, windows 10 users can use the `linux subsystem for windows` available on MS store
2. Jupyter installed on machine
3. `$HOME` pointing to home location on machine
4. Internet connection to download packages

### Important Notes before setup
1. Location of jupyter kernels can be found by running `jupyter kernelspec list`
2. Change location where pyspark kernel is copied by refering above where other kernels are installed
3. In pyspark_kernel.json change the location of `SPARK_HOME`, `PYTHONPATH` etc. based on your system

### Instructions
1. Clone the repository
2. Copy pyspark_kernel.json, spark_installation.sh and spark_variable_setter.sh to `home` of your machine
    * `home` location is stored in `$HOME` variable in most systems
3. Source spark_installation.sh file via `source spark_installation.sh`; it performs the following steps - 
    * Updates system repository 
    * Checks and installs Java if not already present in the system (default jdk version)
    * Creates directory `spark_download` in `$HOME`
    * Download and unzip spark 2.4 and compatible hadoop in `$HOME/spark_download`
    * Stores environment variables like `SPARK_HOME`, `PYTHONPATH`, `JAVA_HOME` in local shell and in `.bashrc`
    * Currently copies `pyspark_kernel.json` to `$HOME/.local/share/jupyter/kernels/`    
4. Exit and re-open the shell
5. Typing `jupyter notebook` should start a new session
6. Pyspark should be visible in the list of avaiable kernels
