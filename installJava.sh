sudo mkdir /usr/lib/jvm && \
cd /usr/lib/jvm && \ 
wget https://download.java.net/openjdk/jdk7u75/ri/openjdk-7u75-b13-linux-x64-18_dec_2014.tar.gz && \ 
sudo tar -xvzf openjdk-7u75-b13-linux-x64-18_dec_2014.tar.gz && \
cd /etc/ && \
sudo rm environment && \
touch enviroment && \
cat PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-se-7u75-ri/bin:/usr/lib/jvm/java-se-7u75-ri/db/bin:/usr/lib/jvm/java-se-7u75-ri/jre/bin" J2SDKDIR="/usr/lib/jvm/java-se-7u75-ri" J2REDIR="/usr/lib/jvm/java-se-7u75-ri/jre* JAVA_HOME="/usr/lib/jvm/java-se-7u75-ri" DERBY_HOME="/usr/lib/jvm/java-se-7u75-ri/db" >> enviroment && \
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-se-7u75-ri/bin/java" 0 && \
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-se-7u75-ri/bin/javac" 0 && \
sudo update-alternatives --set java /usr/lib/jvm/java-se-7u75-ri/bin/java && \
sudo update-alternatives --set javac /usr/lib/jvm/java-se-7u75-ri/bin/javac && \
update-alternatives --list java && \
update-alternatives --list javac && \
java -version && \ 
