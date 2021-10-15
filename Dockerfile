FROM odoo:13.0
USER root
RUN pip3 install --upgrade pip

# Soporte para S3
RUN pip3 install boto3

# Soporte para exógena SHF
RUN pip3 install numpy
RUN pip3 install pandas

# Soporte para facturacion electronica
RUN pip3 install pyopenssl
RUN pip3 install requests
RUN pip3 install xmltodict
RUN pip3 install PyQRCode
RUN pip3 install pypng

# Locale spanish
RUN apt-get update && \
    apt-get install -y locales && \
    sed -i -e 's/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales

ENV LANG es_ES.UTF-8
ENV LC_ALL es_ES.UTF-8
