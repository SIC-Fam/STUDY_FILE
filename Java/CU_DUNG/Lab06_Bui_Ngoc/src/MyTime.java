class MyTime {
    private int hour;
    private int minute;
    private int second;

    public MyTime(int hour, int minute, int second) {
        setTime(hour, minute, second);
    }

    public void setTime(int hour, int minute, int second) {
        if (isValidHour(hour) && isValidMinute(minute) && isValidSecond(second)) {
            this.hour = hour;
            this.minute = minute;
            this.second = second;
        }
    }

    public void setHour(int hour) {
        if (isValidHour(hour)) {
            this.hour = hour;
        }
    }

    public void setMinute(int minute) {
        if (isValidMinute(minute)) {
            this.minute = minute;
        }
    }

    public void setSecond(int second) {
        if (isValidSecond(second)) {
            this.second = second;
        }
    }

    public int getHour() {
        return hour;
    }

    public int getMinute() {
        return minute;
    }

    public int getSecond() {
        return second;
    }

    public String toString() {
        return String.format("%02d:%02d:%02d", hour, minute, second);
    }

    public MyTime nextSecond() {
        second = (second + 1) % 60;
        if (second == 0) {
            minute = (minute + 1) % 60;
            if (minute == 0) {
                hour = (hour + 1) % 24;
            }
        }
        return this;
    }

    public MyTime nextMinute() {
        int nextMinute = (this.minute + 1) % 60;
        int nextHour = this.hour;

        if (nextMinute == 0) {
            nextHour = (this.hour + 1) % 24;
        }

        return new MyTime(nextHour, nextMinute, this.second);
    }

    public MyTime nextHour() {
        int nextHour = (this.hour + 1) % 24;
        return new MyTime(nextHour, this.minute, this.second);
    }


    public MyTime previousSecond() {
        second = (second - 1 + 60) % 60;
        if (second == 59) {
            minute = (minute - 1 + 60) % 60;
            if (minute == 59) {
                hour = (hour - 1 + 24) % 24;
            }
        }
        return this;
    }

    public MyTime previousMinute() {
        minute = (minute - 1 + 60) % 60;
        if (minute == 59) {
            hour = (hour - 1 + 24) % 24;
        }
        return this;
    }

    public MyTime previousHour() {
        hour = (hour - 1 + 24) % 24;
        return this;
    }


    private boolean isValidHour(int hour) {
        return hour >= 0 && hour <= 23;
    }

    private boolean isValidMinute(int minute) {
        return minute >= 0 && minute <= 59;
    }

    private boolean isValidSecond(int second) {
        return second >= 0 && second <= 59;
    }
}