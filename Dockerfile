FROM teamTornadoes/Tornadobot:latest

#clonning repo 
RUN git clone https://github.com/TeamTornadoes/Tornado-Userbot.git /root/Tornadobot

#working directory 
WORKDIR /root/Tornadobot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","Tornadobot"]
