# Define the path to the CSV file
$csvFile = "C:\Users\Rudy\d4leaderboards\leaderboards.csv"

# Read the CSV file and filter hardcore players
$hardcorePlayers = Import-Csv $csvFile | Where-Object { $_.Mode -like "*Hardcore*" -and [int]$_.Level -ge 100 } | Sort-Object -Property Level -Descending

# Perform statistical analysis on hardcore players
$totalPlayers = $hardcorePlayers.Count
$totalBarbarians = ($hardcorePlayers | Where-Object { $_.Class -eq 'Barbarian' }).Count
$totalDruids = ($hardcorePlayers | Where-Object { $_.Class -eq 'Druid' }).Count
$totalNecromancers = ($hardcorePlayers | Where-Object { $_.Class -eq 'Necromancer' }).Count
$totalRogues = ($hardcorePlayers | Where-Object { $_.Class -eq 'Rogue' }).Count
$totalSorcerers = ($hardcorePlayers | Where-Object { $_.Class -eq 'Sorcerer' }).Count

# Calculate average and maximum power level
$averagePowerLevel = ($hardcorePlayers | Measure-Object -Property Power -Average).Average
$maximumPowerLevel = ($hardcorePlayers | Measure-Object -Property Power -Maximum).Maximum

# Get abilities breakdown for each class
$barbarianAbilities = ($hardcorePlayers | Where-Object { $_.Class -eq 'Barbarian' }).Skills -split ','
$druidAbilities = ($hardcorePlayers | Where-Object { $_.Class -eq 'Druid' }).Skills -split ','
$necromancerAbilities = ($hardcorePlayers | Where-Object { $_.Class -eq 'Necromancer' }).Skills -split ','
$rogueAbilities = ($hardcorePlayers | Where-Object { $_.Class -eq 'Rogue' }).Skills -split ','
$sorcererAbilities = ($hardcorePlayers | Where-Object { $_.Class -eq 'Sorcerer' }).Skills -split ','

# Calculate ability usage percentages for each class
$barbarianAbilityPercentages = @{}
$druidAbilityPercentages = @{}
$necromancerAbilityPercentages = @{}
$rogueAbilityPercentages = @{}
$sorcererAbilityPercentages = @{}

$barbarianAbilities | Group-Object | ForEach-Object {
    $ability = $_.Name
    $percentage = [Math]::Round(($_.Count / $totalBarbarians) * 100, 2)
    $barbarianAbilityPercentages[$ability] = $percentage
}

$druidAbilities | Group-Object | ForEach-Object {
    $ability = $_.Name
    $percentage = [Math]::Round(($_.Count / $totalDruids) * 100, 2)
    $druidAbilityPercentages[$ability] = $percentage
}

$necromancerAbilities | Group-Object | ForEach-Object {
    $ability = $_.Name
    $percentage = [Math]::Round(($_.Count / $totalNecromancers) * 100, 2)
    $necromancerAbilityPercentages[$ability] = $percentage
}

$rogueAbilities | Group-Object | ForEach-Object {
    $ability = $_.Name
    $percentage = [Math]::Round(($_.Count / $totalRogues) * 100, 2)
    $rogueAbilityPercentages[$ability] = $percentage
}

$sorcererAbilities | Group-Object | ForEach-Object {
    $ability = $_.Name
    $percentage = [Math]::Round(($_.Count / $totalSorcerers) * 100, 2)
    $sorcererAbilityPercentages[$ability] = $percentage
}

# Output the statistical breakdown and additional analysis
Write-Host "Statistical Breakdown for Hardcore Players:"
Write-Host "Total Players: $totalPlayers"
Write-Host "Barbarians: $totalBarbarians"
Write-Host "Druids: $totalDruids"
Write-Host "Necromancers: $totalNecromancers"
Write-Host "Rogues: $totalRogues"
Write-Host "Sorcerers: $totalSorcerers"

Write-Host "`nAbility Breakdown by Class:"
Write-Host "Barbarian Abilities:"
$barbarianAbilityPercentages.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
    Write-Host "$($_.Name): $($_.Value)%"
}

Write-Host "`nDruid Abilities:"
$druidAbilityPercentages.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
    Write-Host "$($_.Name): $($_.Value)%"
}

Write-Host "`nNecromancer Abilities:"
$necromancerAbilityPercentages.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
    Write-Host "$($_.Name): $($_.Value)%"
}

Write-Host "`nRogue Abilities:"
$rogueAbilityPercentages.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
    Write-Host "$($_.Name): $($_.Value)%"
}

Write-Host "`nSorcerer Abilities:"
$sorcererAbilityPercentages.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object {
    Write-Host "$($_.Name): $($_.Value)%"
}

Write-Host "`nAdditional Analysis:"
Write-Host "Average Power Level: $averagePowerLevel"
Write-Host "Maximum Power Level: $maximumPowerLevel"
