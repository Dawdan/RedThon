FROM Redthon/Redthon:alpine

#clonning repo 
RUN git clone https://github.com/Dawdan/Redthon.git /root/Redthon
#working directory 
WORKDIR /root/Redthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Redthon/bin:$PATH"

CMD ["python3","-m","Redthon"]
