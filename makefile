server:
	hugo server --theme=airspace-hugo --buildDrafts
build:
	hugo
push:
	rsync -e "ssh -i ~/Documents/al_cn.pem" -avH  public root@118.31.62.99:/home/wwj/mylab/codelab
	ssh -i ~/Documents/al_cn.pem root@118.31.62.99  chmod -R 777 /home/wwj/mylab/codelab/public/img/portfolio

