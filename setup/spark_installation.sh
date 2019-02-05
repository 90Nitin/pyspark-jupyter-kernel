################################################################################
################################################################################
################################################################################
# Small function for formatting
printf_new() {
 str=$1
 num=$2
 v=$(printf "%-${num}s" "$str")
 echo "${v// /*}"
}


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo Remember to source the file


################################################################################
################################################################################
################################################################################
echo -e \\n
echo Update the linux repository
sudo apt-get update


################################################################################
################################################################################
################################################################################
echo -e \\n
echo Check if Java is installed; install if not already installed
sudo apt install default-jdk


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo Create an installation directory and move into it
echo Make sure there are NO SPACES!
mkdir $HOME/spark_download/
cd $HOME/spark_download/


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo Download spark and hadoop binaries
echo Should make this dynamic in the future to fetch latest links
wget http://mirror.cogentco.com/pub/apache/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
wget http://mirror.cogentco.com/pub/apache/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz



################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo Extract everything
tar zxvf spark-2.4.0-bin-hadoop2.7.tgz
tar zxvf hadoop-2.7.7.tar.gz


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo Set environment variables and launch juypter/python
echo These envars need to be set everytime you want to run spark
export SPARK_HOME=$HOME/spark_download/spark-2.4.0-bin-hadoop2.7
export HADOOP_HOME=$HOME/spark_download/hadoop-2.7.7
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export JAVA_HOME=/usr/lib/jvm/default-java/bin/java


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo -e "Save the variables for each new shell opened\\nExecute the variable setting file to update the settings in bashrc"
cd $HOME
chmod +x spark_variable_setter.sh
./spark_variable_setter.sh


################################################################################
################################################################################
################################################################################
echo -e \\n
printf_new "*" 75
printf_new "*" 75
printf_new "*" 75
echo -e "Moving the kernel to registered location for jupyter to pick up\\nMight have to be resorted manually"
cd $HOME
mkdir $HOME/.local/share/jupyter/kernels/pyspark
cd $HOME/.local/share/jupyter/kernels/pyspark
cp $HOME/pyspark_kernel.json kernel.json
