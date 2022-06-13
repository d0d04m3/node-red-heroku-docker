FROM nodered/node-red

# Copy package.json to the WORKDIR so npm builds all
# of your added nodes modules for Node-RED
COPY /data/package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

# Copy _your_ Node-RED project files into place
# NOTE: This will only work if you DO NOT later mount /data as an external volume.
#       If you need to use an external volume for persistence then
#       copy your settings and flows files to that volume instead.
COPY /data/settings.js /home/94r4d0x/.node-red/settings.js
COPY /data/flows_cred.json /home/94r4d0x/.node-red/flows_cred.json
COPY /data/flows.json /home/94r4d0x/.node-red/flows.json

# You should add extra nodes via your package.json file but you can also add them here:
#WORKDIR /usr/src/node-red
ENTRYPOINT npm start --  --userDir /home/94r4d0x/.node-red
#RUN npm install node-red-node-smooth



