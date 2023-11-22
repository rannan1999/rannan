# ʹ�� Ubuntu 22.04 ��Ϊ��������
FROM ubuntu:22.04

# ��װ Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ���� root �û�������Ϊ 'root'
RUN echo 'root:frepai' | chpasswd

# ��¶ 22 �˿�
EXPOSE 22

# ���� Shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]