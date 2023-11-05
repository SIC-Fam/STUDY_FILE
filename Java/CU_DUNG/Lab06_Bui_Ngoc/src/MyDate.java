class MyDate {
    private int year;
    private int month;
    private int day;

    private static final String[] strMonths = {
            "Jan", "Feb", "Mar", "Apr", "May", "Jun",
            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    };

    private static final String[] strDays = {
            "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    };

    private static final int[] dayInMonths = {
            31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    };

    public MyDate(int year, int month, int day) {
        setDate(year, month, day);
    }

    public void setDate(int year, int month, int day) {
            this.year = year;
            this.month = month;
            this.day = day;
    }

    public void setYear(int year) {
        if (year >= 1) {
            this.year = year;
        }
    }

    public void setMonth(int month) {
        if (month >= 1 && month <= 12) {
            this.month = month;
        }
    }

    public void setDay(int day) {
        int dayMax = dayInMonths[month - 1];
        if (month == 2 && isLeapYear(year)) {
            dayMax = 29;
        }
        if (day >= 1 && day <= dayMax) {
            this.day = day;
        }
    }

    public int getYear() {
        return year;
    }

    public int getMonth() {
        return month;
    }

    public int getDay() {
        return day;
    }

    public static boolean isLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

}