#! /bin/bash
docker run -d -p 8081:8080 \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://john@host.docker.internal:5432/planx-actions \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       -e HASURA_GRAPHQL_ADMIN_SECRET=myadminsecretkey \
       hasura/graphql-engine:latest
