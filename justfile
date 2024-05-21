_default:
  @just --list

build:
  whiskers mpv.tera

all: build
  just uosc/build
