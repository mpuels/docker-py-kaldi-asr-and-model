# STT Service based on Kaldi ASR

This image contains a demo STT service based on
[Kaldi ASR](https://github.com/kaldi-asr/kaldi) and
[py-kaldi-asr](https://github.com/gooofy/py-kaldi-asr). Try it out by following
these steps.

To start the STT service on your local machine, execute:

    $ docker pull quay.io/mpuels/docker-py-kaldi-asr-and-model:kaldi-generic-en-tdnn_sp-r20180611
    $ docker run --rm -p 127.0.0.1:8080:80/tcp

To transfer an audio file for transcription to the service, in a second
terminal, execute:

    $ conda env create -f environment.yml
    $ source activate py-kaldi-asr-client
    $ ./asr_client.py audio/asr.wav

The image is part of [Zamia Speech](https://github.com/gooofy/zamia-speech).
