class Year(year: Int) {

    open fun test(): String{
        return "Hallo"
    }

    


    var isLeap = when {
        year % 4 == 0 -> true
        year % 100 == 0 -> false
        year % 400 == 0 -> true
        else -> false
    }

}