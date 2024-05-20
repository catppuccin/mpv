_default:
  @just --list

clean:
    rm -rfv themes/

build:
  whiskers mpv.tera

all: build
  just uosc/build
