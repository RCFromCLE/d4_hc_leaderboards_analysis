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


| Statistical Breakdown for Hardcore Players |                  |
|------------------------------------------|------------------|
| Total Players                            | 1091             |
| Barbarians                               | 246              |
| Druids                                   | 268              |
| Necromancers                             | 99               |
| Rogues                                   | 184              |
| Sorcerers                                | 294              |

| Ability Breakdown by Class  |                      |
|----------------------------|----------------------|
| Barbarian Abilities        |                      |
| Rallying Cry               | 99.19%               |
| War Cry                    | 97.56%               |
| Challenging Shout          | 97.56%               |
| Wrath of the Berserker     | 83.74%               |
| Lunging Strike             | 75.61%               |
| Whirlwind                  | 74.39%               |
| Hammer of the Ancients     | 14.63%               |
| Iron Skin                  | 7.72%                |
| Flay                       | 5.69%                |
| Steel Grasp                | 3.25%                |
| Frenzy                     | 3.25%                |
| Rend                       | 2.85%                |
| Call of the Ancients       | 2.03%                |
| Charge                     | 2.03%                |
| Leap                       | 1.63%                |
| Ground Stomp               | 0.81%                |
| Bash                       | 0.41%                |
| Death Blow                 | 0.41%                |

| Druid Abilities         |                      |
|------------------------|----------------------|
| Grizzly Rage           | 92.54%               |
| Earthen Bulwark        | 79.85%               |
| Trample                | 73.13%               |
| Pulverize              | 69.4%                |
| Debilitating Roar       | 66.04%               |
| Earth Spike            | 60.07%               |
| Hurricane              | 23.88%               |
| Blood Howl              | 23.88%               |
| Cyclone Armor          | 20.52%               |
| Storm Strike           | 20.52%               |
| Tornado                | 18.66%               |
| Claw                    | 3.73%                |
| Shred                   | 3.73%                |
| Poison Creeper          | 3.36%                |
| Maul                    | 2.61%                |
| Wind Shear              | 2.24%                |
| Landslide               | 2.24%                |
| Earthen Bulwark         | 1.87%                |
| Debilitating Roar       | 1.49%                |
| Storm Strike            | 1.49%                |
| Petrify                 | 1.49%                |
| Pulverize               | 1.12%                |
| Wolves                  | 1.12%                |
| Tornado                 | 0.75%                |
| Grizzly Rage            | 0.75%                |
| Hurricane               | 0.75%                |
| Cyclone Armor           | 0.75%                |
| Lacerate                | 0.75%                |
| Blood Howl              | 0.75%                |
| Wolves                  | 0.37%                |
| Rabies                  | 0.37%                |
| Ravens                  | 0.37%                |
| Boulder                 | 0.37%                |
| Maul                    | 0.37%                |

| Necromancer Abilities      |                      |
|----------------------------|----------------------|
| Blood Mist                 | 87.88%               |
| Corpse Tendrils            | 71.72%               |
| Bone Storm                 | 69.7%                |
| Bone Spear                 | 60.61%               |
| Decrepify                  | 50.51%               |
| Corpse Explosion           | 40.4%                |
| Bone Splinters             | 40.4%                |
| Golem                      | 22.22%               |
| Reap                       | 22.22%               |
| Raise Skeleton             | 18.18%               |
| Blood Surge                | 18.18%               |
| Iron Maiden                | 17.17%               |
| Hemorrhage                 | 14.14%               |
| Bone Prison                | 9.09%                |
| Blight                     | 4.04%                |
| Hemorrhage                 | 4.04%                |
| Blood Lance                | 4.04%                |
| Bone Storm                 | 4.04%                |
| Blood Wave                 | 3.03%                |
| Bone Spear                 | 3.03%                |
| Corpse Explosion           | 3.03%                |
| Golem                      | 2.02%                |
| Iron Maiden                | 2.02%                |
| Sever                      | 2.02%                |
| Blood Mist                 | 2.02%                |
| Decrepify                  | 2.02%                |
| Reap                       | 1.01%                |
| Army of the Dead           | 1.01%                |
| Raise Skeleton             | 1.01%                |
| Corpse Tendrils            | 1.01%                |
| Decompose                  | 1.01%                |

| Rogue Abilities        |                      |
|------------------------|----------------------|
| Shadow Step            | 86.41%               |
| Dash                   | 77.17%               |
| Puncture               | 75.54%               |
| Poison Trap            | 71.2%                |
| Twisting Blades        | 69.57%               |
| Death Trap             | 46.74%               |
| Shadow Imbuement       | 30.43%               |
| Poison Imbuement       | 28.26%               |
| Dark Shroud            | 23.91%               |
| Shadow Clone           | 17.39%               |
| Penetrating Shot       | 11.96%               |
| Concealment            | 10.87%               |
| Twisting Blades        | 6.52%                |
| Forceful Arrow         | 4.89%                |
| Flurry                 | 4.89%                |
| Rapid Fire             | 4.35%                |
| Blade Shift            | 4.35%                |
| Cold Imbuement         | 2.17%                |
| Shadow Clone           | 2.17%                |
| Poison Trap            | 1.63%                |
| Shadow Imbuement       | 1.09%                |
| Barrage                | 1.09%                |
| Shadow Step            | 0.54%                |
| Rain of Arrows         | 0.54%                |
| Caltrops               | 0.54%                |
| Rapid Fire             | 0.54%                |
| Dark Shroud            | 0.54%                |
| Barrage                | 0.54%                |
| Concealment            | 0.54%                |

| Sorcerer Abilities       |                      |
|--------------------------|----------------------|
| Teleport                 | 96.6%                |
| Frost Nova               | 93.54%               |
| Ice Armor                | 85.03%               |
| Flame Shield             | 78.57%               |
| Ice Shards               | 47.62%               |
| Deep Freeze              | 32.65%               |
| Ice Shards               | 25.17%               |
| Inferno                  | 21.43%               |
| Unstable Currents        | 14.29%               |
| Arc Lash                 | 13.27%               |
| Frost Bolt               | 11.9%                |
| Ice Armor                | 10.88%               |
| Flame Shield             | 9.52%                |
| Meteor                   | 7.82%                |
| Deep Freeze              | 6.8%                 |
| Firewall                 | 5.44%                |
| Blizzard                 | 5.1%                 |
| Fire Bolt                | 5.1%                 |
| Inferno                  | 4.42%                |
| Frost Nova               | 3.74%                |
| Firewall                 | 2.38%                |
| Arc Lash                 | 1.36%                |
| Chain Lightning          | 1.36%                |
| Blizzard                 | 1.36%                |
| Fireball                 | 1.02%                |
| Teleport                 | 1.02%                |
| Meteor                   | 1.02%                |
| Ball Lightning           | 1.02%                |
| Ball Lightning           | 1.02%                |
| Spark                    | 1.02%                |
| Frozen Orb               | 0.68%                |
| Lightning Spear          | 0.68%                |
| Hydra                    | 0.68%                |
| Fire Bolt                | 0.68%                |
| Charged Bolts            | 0.34%                |
| Frost Bolt               | 0.34%                |
| Chain Lightning          | 0.34%                |