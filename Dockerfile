FROM python
WORKDIR /app
RUN mkdir /app/bopscrk
RUN git clone https://github.com/r3nt0n/bopscrk /app/bopscrk 
RUN cd  bopscrk ; pip install -r requirements.txt --root-user-action=ignore
ENTRYPOINT ["python" , "bopscrk/bopscrk/bopscrk.py"]
