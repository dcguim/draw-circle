FROM python:3

WORKDIR /usr/src/app

# initialize arguments
ARG res_arg
ENV res=$res_arg
ARG rad_arg
ENV rad=$rad_arg
ARG thick_arg
ENV thick=$thick_arg
ARG centx_arg
ENV centx=$centx_arg
ARG centy_arg
ENV centy=$centy_arg
ARG height_arg
ENV height=$height_arg
ARG width_arg
ENV width=$width_arg

# copy and install requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY draw-circle.py ./
ENTRYPOINT python3 draw-circle.py $res $rad $thick $centx $centy $height $width
