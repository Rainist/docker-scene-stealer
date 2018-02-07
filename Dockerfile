FROM alekzonder/puppeteer

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

USER node

RUN npm i -g scene-stealer@1.0.0

CMD ["scene-stealer"]