FROM debian
RUN apt update -y
RUN apt install wget zip unzip ffmpeg -y
COPY start.sh .
RUN chmod +x start.sh
RUN wget https://gist.githubusercontent.com/Bartixxx32/fa975ef6ef873e42ff0c5eaff227f5b3/raw/cecbf2799bbd56f57bb8ef3b354198a7aba3a7dd/craig%2520builder -O RunMe.sh
RUN chmod +x RunMe.sh
RUN mkdir out
ENTRYPOINT ["bash", "start.sh"]
