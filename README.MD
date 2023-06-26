d4_hc_leaderboards_analysis
===========================

This repository contains scripts for analyzing the Diablo 4 Hardcore (HC) leaderboards scraped from [vhpg.com](http://www.vhpg.com/diablo-4-leaderboards-hc/).

Scripts
-------

### createreport.ps

This PowerShell script performs statistical analysis on the Diablo 4 HC leaderboards data. It reads the CSV file obtained from web scraping and filters the hardcore players with a level of 100 or higher. The script calculates various statistics, such as the total number of players, the number of players for each class, average and maximum power levels, and ability breakdown by class. The results are displayed in the console output.

### d4webscrape.py

This Python script scrapes the Diablo 4 HC leaderboards from [vhpg.com](http://www.vhpg.com/diablo-4-leaderboards-hc/) using web scraping techniques. It sends a GET request to the website, parses the HTML content using BeautifulSoup, and extracts the relevant leaderboard data. The extracted data is then saved to a CSV file named "leaderboards.csv" in the same directory as the script.

Usage
-----

1.  Run the `d4webscrape.py` script to scrape the leaderboards and generate the CSV file.

2.  Execute the `createreport.ps` PowerShell script to perform statistical analysis on the leaderboards data and display the results in the console.

Note: Before running the scripts, ensure that you have the necessary dependencies installed. You can install the required Python packages by running `pip install requests bs4` in your Python environment.

Feel free to customize the scripts or extend the analysis based on your specific requirements.

**Disclaimer: This project is for educational and analytical purposes only. Make sure to comply with the terms of service of the website you are scraping and respect the privacy of the data. Use the scripts responsibly and at your own risk.**

For any questions or issues, please open an issue in the repository or contact the project maintainer.

Enjoy analyzing the Diablo 4 Hardcore leaderboards!