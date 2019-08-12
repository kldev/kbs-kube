# backup database

```
kubectl exec $(kubectl get po | grep kbs-db | \
awk '{print $1;}') -- bash -c "pg_dump -d cdr -Fc" > kbs.sql
```

# restore database

- Get database pods name

```
kubectl get pods
```

- Copy backup file to pods

```
kubectl cp kbs.sql state-kbs-db-postgres-579bc66dc8-w8jbg:/opt
```
- log to pod console

```
kubectl exec -it state-kbs-db-postgres-579bc66dc8-w8jbg bash
```

- restore command

```
pg_restore -d kbs /opt/kbs.sql
```

## Note on newwer postgres 

when on pods root user not avaible -U username requried with postgres command
```
psql -d database -U Username 
```

## Psql basic

List tables
```
\dt
```

Quit
```
\q
```
