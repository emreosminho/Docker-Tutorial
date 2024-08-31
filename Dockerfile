# Dockerfile: Kendi image dosyalarımı oluşturmak için

# FROM: Çalıştıracağımız image gösterir
# image olarak Node.js kullandık
FROM node:14

# WORKDIR: Çalışma dizini
# Uygulama için dosya yolu dizini olusturur
WORKDIR /usr/src/app

# COPY: Image kopyalamak için kullanırız
# package.json dosyalarını kopyala
COPY package*.json  ./

# RUN: Image için gerekli yüklemeleri
# Bağımlılıkları yükle
RUN npm install 

# Uygulamada kodları kopyala
COPY . .

# EXPOSE: Port numarası
EXPOSE 1111

# CMD: Gerekli yüklemeler olduktan sonra çalışmasını isteyeceğimiz komutlar
# Uygulamayı başlat
CMD [ "npm","start" ]



# LABEL: Bilgilendirmek
# USER: Kullanıcıları gösterir USER poweruser
# ADD: Ekleme
# ENTRYPOINT: Çalıştıralacak komut yolunu gösterir
# ENV: Ortam değişkenleri
# VOLUME: Kalıcılık(Persist)
# HEALTHCHECK: Konteyner çalışıp çalışmadığının cevabını alırız

###############################################################

# Dockerfile çalıştırma
# docker build .

# Dockerfile özel bir isimle vermişsek
# docker build -t special_dockerfile_name .