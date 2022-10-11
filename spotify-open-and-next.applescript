on is_running(appName)
    tell application "System Events" to (name of processes) contains appName
end is_running

set appName to "Spotify"

set spotifyRunning to is_running(appName)

if spotifyRunning then
    tell application "Spotify" to next track
else
    do shell script "open '/Applications/Spotify.app'"

    using terms from application "Spotify"
        tell application "Spotify" to next track
    end using terms from
end if