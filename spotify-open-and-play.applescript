on is_running(appName)
    tell application "System Events" to (name of processes) contains appName
end is_running

set appName to "Spotify"

set spotifyRunning to is_running(appName)

if spotifyRunning then
    using terms from application "Spotify"
    if player state of application "Spotify" is paused then
        tell application "Spotify" to play
    else
        tell application "Spotify" to pause
    end if
    end using terms from
else
    do shell script "open '/Applications/Spotify.app'"

    using terms from application "Spotify"
        tell application "Spotify" to play
    end using terms from
end if