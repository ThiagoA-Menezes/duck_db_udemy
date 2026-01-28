# Set up Movie recommender using Duckdb inside Docker

Read more on Practice case here:
https://ploomber-sql.readthedocs.io/en/latest/mini-projects/recommendation-system/setting-up-etl.html

0. Register at The Movie Database & add your API key to ```.env``` file
https://www.themoviedb.org

1. ```docker build -t movierec:latest -f Dockerfile .```

2. Run the container from image built at the previous step
```docker run -p 8000:8000 -it movierec:latest```

3. Open new terminal window & ```docker ps``` & copy container id

4. docker ```docker exec -ti YOURCONTAINERID /bin/bash```

5. ```./duckdb_amd64_0_8_1 movies_data.duckdb```
   or
   ```./duckdb_x64_0_8_1 movies_data.duckdb```

6. Explore the database

7. Navigate to ```http://0.0.0.0:8000``` in browser

8. Navigate to ```http://0.0.0.0:8000/docs``` in browser

9.  Try out /recommedations endpoint in UI

10.  Send ```curl``` request to /recommedations endpoint

## Testing ETL pipeline locally without Docker

1. ```cd``` into project directory

2. Create & activate a new virtual env with 

```python3 -m venv .poetryenv``` && ```source .poetryenv/bin/activate```

3. Install poetry package manager with ```pip3 install poetry```

4. Install all dependencies ```poetry install```

5. Run the pipeline ```poetry run ploomber build```

6. Explore the resulting duckdb database in project's dir