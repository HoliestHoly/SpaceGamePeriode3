if timerUpdate <= 0 {
    if seconds <= 0 {
        seconds = 59;
        
        if minutes > 0 {
            minutes--;
        }
    } else {
        seconds--;
    }
    
    timerUpdate = room_speed;
}

if seconds < 10 {
    secondsDraw = "0" + string(seconds);
} else {
    secondsDraw = string(seconds);
}
minutesDraw = string(minutes);

timerText = "time left: " + minutesDraw + ":" + secondsDraw;

timerUpdate--;
