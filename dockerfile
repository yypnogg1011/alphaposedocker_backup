FROM michalgregor/alphapose:default

WORKDIR /

RUN apt-get update -y

RUN mkdir /alphapose-repo/trackers/weights

WORKDIR /alphapose-repo/trackers/weights/

RUN git clone https://github.com/yypnogg1011/alphaposedocker_backup.git

RUN cp /alphapose-repo/trackers/weights/alphaposedocker_backup/osnet_ain_x1_0_msmt17_256x128_amsgrad_ep50_lr0.0015_coslr_b64_fb10_softmax_labsmth_flip_jitter.pth /alphapose-repo/trackers/weights/

RUN rm -rf /alphapose-repo/trackers/weights/alphaposedocker_backup/

