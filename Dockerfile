FROM public.ecr.aws/lambda/python:3.12 as stage

RUN dnf install -y sudo unzip
ENV CHROME_VERSION=126.0.6478.61

# Install Chromium
COPY install-browser.sh /tmp/
RUN /usr/bin/bash /tmp/install-browser.sh

FROM public.ecr.aws/lambda/python:3.12 as base

COPY chrome-deps.txt /tmp/
RUN dnf install -y $(cat /tmp/chrome-deps.txt)

# Install Python dependencies for function
COPY requirements.txt /tmp/
RUN python3 -m pip install --upgrade pip -q
RUN python3 -m pip install -r /tmp/requirements.txt -q

COPY --from=stage /opt/chrome /opt/chrome
COPY --from=stage /opt/chromedriver /opt/chromedriver

# copy web-crawler.py
COPY web-crawler.py /var/task/


WORKDIR /var/task

CMD [ "web-crawler.crawling" ]
