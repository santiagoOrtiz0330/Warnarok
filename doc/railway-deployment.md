# Railway Deployment Checklist

This guide captures the manual steps needed to launch the rAthena stack on Railway using the Docker workflow that now ships with the repository.

## 1. Prepare environment variables

1. Copy the template and fill in the Railway credentials:
   ```bash
   cp .env.template .env
   ```
2. Replace every `CHANGE_ME` placeholder with the secret values exposed by Railway.
3. If you prefer to keep a dedicated logging schema, set `RATHENA_LOG_DB_NAME=log` in `.env` and create the schema (`CREATE DATABASE IF NOT EXISTS log;`). Otherwise, the default matches the main `MYSQL_DATABASE`, so no extra schema is required.
4. For bare-metal runs (without Docker), also copy the SQL config template and fill it in:
   ```bash
   cp conf/import-tmpl/inter_conf.template.txt conf/import/inter_conf.txt
   ```
   Replace `YOUR_DB_*` with the same credentials you placed in `.env`.

> `.env` is now ignored by git, so your secrets stay local by default.

## 2. Build the Docker image

From the repository root:
```bash
docker build -t rathena .
```

## 3. Run the servers with your env file

Publish the standard ports and feed the env file to the container:
```bash
docker run --env-file .env \
  -p 6900:6900 \
  -p 6121:6121 \
  -p 5121:5121 \
  rathena
```

The entrypoint starts `login-server`, `char-server`, and `map-server` together. Logs stream directly to the container output.

## 4. (Optional) Verify schema setup

If you use a separate logging database, seed it with the provided SQL:
```bash
mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" \
  -P "$MYSQL_PORT" \
  -e "CREATE DATABASE IF NOT EXISTS log"

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" \
  -P "$MYSQL_PORT" log < sql-files/logs.sql
```

## 5. Next steps

- Add your Railway repository to a CI/CD pipeline that builds this Docker image automatically.
- Mount persistent volumes (or Railway storage) to `/opt/rathena/log` and `/opt/rathena/conf/import` if you want configuration overrides to survive container restarts.

Happy deploying!
