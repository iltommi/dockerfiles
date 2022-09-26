#!/usr/bin/env bash

set -x

brew update
brew install objc-codegenutils objc-run
brew install python cmake fftw gcc qt5 lcov pkg-config zlib cmake libtiff cfitsio hdf5 gsl clfft pandoc llvm go
brew install iltommi/brews/hdf4

go get github.com/aktau/github-release

softwareupdate --list
softwareupdate --install "Command Line Tools (macOS Mojave version 10.14) for Xcode-10.3"

