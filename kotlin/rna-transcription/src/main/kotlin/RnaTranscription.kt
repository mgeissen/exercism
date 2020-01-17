fun transcribeToRna(dna: String): String {
    return when(dna) {
        "G" -> "C"
        "C" -> "G"
        "T" -> "A"
        "A" -> "U"
        else
    }
}
