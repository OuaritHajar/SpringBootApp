# Utilisez une image Node.js comme base
FROM node:14

# Définissez le répertoire de travail dans l'image
WORKDIR /app

COPY package.json .
COPY package-lock.json .
COPY  . .

RUN npm install 
Run npm run build

# Exposez le port sur lequel l'application React écoute (par défaut :3000)
EXPOSE 3000

# Commande pour démarrer l'application React
CMD ["npm", "start"]
