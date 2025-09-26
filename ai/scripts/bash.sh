npm install -r requirements.txt
# Step 1: Build Docker image
docker build -t roda-ai-api .

# Step 2: Run container
docker run -d -p 8000:8000 roda-ai-api

# OR using Compose
docker compose up --build

$ npm install
$ npm run dev

git clone https://github.com/Web4application/RODAAI.git
cd RODAAI

cd .env.local .env
docker-compose up --build

git clone https://github.com/Web4application/enclov-AI.git
cd enclov-AI

docker-compose up --build

npm i -g vercel
vercel login
vercel link
vercel build        # creates `.vercel/output`
vercel deploy --prebuilt  # deploys from that build

vercel env add team_bnSuCzLCbrlG4vo5dvRRaj0D
vercel env add c776CzCNUv1dDy9PADHdVmZT
# Build the image
docker build -t roda-ai-api .

# Run the container
docker run -d -p 8000:8000 roda-ai-api

az login
az webapp up --name roda-ai-app --runtime "NODE|18-lts" --sku F1

brew install xcodegen   # one-time install
xcodegen generate       # creates RodaAI.xcodeproj
open RodaAI.xcodeproj   # ready to build in Xcode

xcodebuild -project RodaAI.xcodeproj -scheme RodaAI build

bundle install
ruby wire-sources.rb
