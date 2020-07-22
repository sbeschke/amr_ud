FROM python:2.7

COPY requirements.txt /amr_ud/
WORKDIR /amr_ud
RUN pip install -r requirements.txt && pip install num2words morfessor networkx matplotlib pycorenlp
RUN pip freeze > requirements.txt

COPY *.py *.txt *.bin /amr_ud/
COPY bin/entrypoint.sh /bin
ENTRYPOINT [ "/bin/entrypoint.sh" ]
