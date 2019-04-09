FROM python:3.6

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN ls data
RUN pwd
RUN touch out/insider.txt

CMD [ "bash" ]
