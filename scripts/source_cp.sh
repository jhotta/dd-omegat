#! /bin/sh

cd $HOME/SandBoxs/documentation && git co master && git pull

cp -r $HOME/SandBoxs/documentation/content $HOME/SandBoxs/dd-omegat/source/dd-docs/

rm -rf $HOME/SandBoxs/dd-omegat/source/dd-docs/content/ja
rm -rf $HOME/SandBoxs/dd-omegat/source/dd-docs/content/tipuesearch
rm -rf $HOME/SandBoxs/dd-omegat/source/dd-docs/content/static
rm $HOME/SandBoxs/dd-omegat/source/dd-docs/content/sitemap.xml
git status -s

