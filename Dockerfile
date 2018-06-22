FROM quay.io/mpuels/docker-py-kaldi-asr:0.3.1

ARG MODEL_NAME=kaldi-generic-de-tdnn_250-r20180611

RUN apt-get install xz-utils -y && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y

WORKDIR /opt
RUN wget -q http://goofy.zamia.org/zamia-speech/asr-models/${MODEL_NAME}.tar.xz && \
    tar xf ${MODEL_NAME}.tar.xz && \
    mv ${MODEL_NAME} kaldi-model && \
    rm ${MODEL_NAME}.tar.xz

EXPOSE 80

WORKDIR /opt/asr_server
CMD ["python", "asr_server.py"]
