import io.kotlintest.matchers.numerics.shouldBeExactly
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test

internal class RunnerTest {

    private lateinit var runner: Runner

    @BeforeEach
    internal fun setUp() {
        runner = Runner()
    }

    @Test
    fun shouldCalculateAddition() {
        // when
        val result = runner.execute(2, Operation.Add(4))

        // then
        result shouldBeExactly 6
    }
}