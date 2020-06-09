FROM python:3.8-alpine AS base
WORKDIR /app
# ---- Dependencies ----
FROM base AS dependencies

RUN apk add --no-cache python3-dev && \
    pip install --upgrade pip

COPY ./requirements.txt ./

# install app dependencies
RUN pip install -r requirements.txt

# ---- Copy Files/Build ----

FROM dependencies AS build
WORKDIR /app
COPY . /app

# --- Release with Alpine ----
FROM python:3.8-alpine AS release
# Create app directory

WORKDIR /app
COPY --from=dependencies /app/requirements.txt ./
COPY --from=dependencies /root/.cache /root/.cache

# Install app dependencies
RUN apk add git
RUN pip install -r requirements.txt
EXPOSE 5000
COPY --from=build /app/ ./
CMD [ "python3","api.py" ]

