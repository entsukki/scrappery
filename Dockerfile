FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/entsukki/nauto.git

COPY . .

# CMD [ "git", "clone https://github.com/entsukki/nauto.git" ]
CMD [ "scrapy", "runspider","./nauto/KaikkiAutot.py" ]
#CMD ["echo","no moi"]