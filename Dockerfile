FROM mrismanaziz/man-userbot:buster

RUN git clone -b dodo-Userbot https://github.com/ridhoajaaa/dodo-Userbott /home/manuserbot/ \
    && chmod 777 /home/manuserbot \
    && mkdir /home/manuserbot/bin/

COPY ./sample_config.env ./config.env* /home/manuserbot/

WORKDIR /home/manuserbot/

CMD ["python3", "-m", "userbot"]
