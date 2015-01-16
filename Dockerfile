FROM ytnobody/base
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN mkdir /app
ADD app.psgi /app/app.psgi
RUN cpanm --notest Time::Piece

EXPOSE 9696
ENTRYPOINT ["plackup", "/app/app.psgi", "-p", "9696"]
