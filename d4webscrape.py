import requests
from bs4 import BeautifulSoup
import csv

url = "http://www.vhpg.com/diablo-4-leaderboards-hc/"

# Send a GET request to the URL
response = requests.get(url)

# Create a BeautifulSoup object from the response text
soup = BeautifulSoup(response.text, "html.parser")

# Find the table containing the leaderboard data
table = soup.find("table")

# Create a list to store the extracted data
data = []

# Find all rows in the table (excluding the header row)
rows = table.find_all("tr")[1:]

# Iterate over each row and extract the column values
for row in rows:
    columns = row.find_all("td")
    rank = columns[0].text.strip()
    name = columns[1].text.strip()
    level = columns[2].text.strip()
    mode = columns[3].text.strip()
    power = columns[4].text.strip()
    player_class = columns[5].text.strip()
    skills = columns[6].text.strip()
    
    # Append the extracted data as a dictionary to the list
    data.append({
        "Rank": rank,
        "Name": name,
        "Level": level,
        "Mode": mode,
        "Power": power,
        "Class": player_class,
        "Skills": skills
    })

# Specify the output CSV file path
csv_file = "leaderboards.csv"

# Write the data to the CSV file
with open(csv_file, "w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=data[0].keys())
    writer.writeheader()
    writer.writerows(data)

print("Data scraped successfully and saved to", csv_file)
