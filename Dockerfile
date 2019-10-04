FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "git", "clone https://github.com/entsukki/nauto.git" ]
# CMD [ "python", "./your-daemon-or-script.py" ]