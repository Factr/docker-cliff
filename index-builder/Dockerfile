# we're a little sloppier here since this is a run-once thing
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y git curl openjdk-8-jdk-headless unzip maven

# nb. this means your Docker engine probably needs 12g+, for the build
ENV MAVEN_OPTS -Xmx11g

RUN git clone https://github.com/Berico-Technologies/CLAVIN /opt/CLAVIN --branch 2.0.0 --single-branch --depth 1

WORKDIR /opt/CLAVIN

RUN curl -O http://download.geonames.org/export/dump/allCountries.zip && unzip allCountries.zip

RUN mvn dependency:go-offline
RUN mvn compile

CMD mvn exec:java -Dexec.mainClass=com.bericotech.clavin.index.IndexDirectoryBuilder -Dexec.args='-o /data/IndexDirectory -r'
