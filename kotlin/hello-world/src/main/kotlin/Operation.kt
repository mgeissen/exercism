sealed class Operation {
    class Add(val value: Int) : Operation()
    class Substract(val value: Int) : Operation()
    class Multiply(val value: Int) : Operation()
    class Divide(val value: Int) : Operation()
}


class Runner {

    fun execute(i: Int, operation: Operation) = when(operation) {
        is Operation.Add -> i + operation.value
        is Operation.Divide -> i - operation.value
        is Operation.Multiply -> i * operation.value
        is Operation.Substract -> i / operation.value
    }


}