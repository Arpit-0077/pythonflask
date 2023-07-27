FROM python
WORKDIR /src
RUN pip install flask
COPY . .
EXPOSE 4040
CMD python server.py 

