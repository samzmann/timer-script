# Bash Timer Script
This is a simple Bash script that implements a timer loop, where each interval lasts a specified duration and there is a pause between each interval.

## Usage
To use the script, run the following command in a terminal window:

```bash
./timer.sh <loop_duration> <pause_duration>
```

Replace `<loop_duration>` and `<pause_duration>` with the desired durations in seconds for each interval and pause, respectively.

If you get `zsh: permission denied` error (https://stackoverflow.com/questions/53229221/terminal-error-zsh-permission-denied-startup-sh) you probably need to change its execution mode using the chmod command. To do this, navigate to the directory containing the script in a terminal window, and then run the following command:

```bash
chmod +x script.sh
```

At the beginning and end of each interval, the script will use the macOS `say` command to say "start" and "stop".

To stop the script, type `ctrl + c`.