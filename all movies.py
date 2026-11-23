from db import run_query_select, run_update_query

movie = run_query_select("SELECT * FROM movies")
for s in movie:
    print(s)

movie_from_user = input("Enter movie name: ")
movie = run_query_select(f"SELECT movie_name FROM movies WHERE  movie_name LIKE '%{movie_from_user}%'")
print(movie)

movie_name = input("Enter movie name: ")
genre = input("Enter genre: ")
country = input("Enter country: ")
language = input("Enter language: ")
year = input("Enter year: ")
revenue = input("Enter revenue: ")
run_update_query(f"""INSERT INTO movies (movie_name, genre, country, language, year, revenue) VALUES
('{movie_name}', '{genre}', '{country}', '{language}', '{year}', '{revenue}')
""")
