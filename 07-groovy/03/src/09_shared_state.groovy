class UnsafeCounter {
    int value
}

class SynchronizedCounter {
    private int value

    synchronized void increment() {
        value++
    }

    synchronized int currentValue() {
        value
    }
}

// Reproduce one possible interleaving without relying on random timing:
// both threads first read 0, then both threads write 1.
def unsafeCounter = new UnsafeCounter()
int firstRead
int secondRead

Thread firstReader = new Thread({ firstRead = unsafeCounter.value } as Runnable)
Thread secondReader = new Thread({ secondRead = unsafeCounter.value } as Runnable)
firstReader.start()
secondReader.start()
firstReader.join()
secondReader.join()

Thread firstWriter = new Thread({ unsafeCounter.value = firstRead + 1 } as Runnable)
Thread secondWriter = new Thread({ unsafeCounter.value = secondRead + 1 } as Runnable)
firstWriter.start()
secondWriter.start()
firstWriter.join()
secondWriter.join()

println "Unsafe counter: ${unsafeCounter.value} (expected 2)"

def safeCounter = new SynchronizedCounter()
List<Thread> workers = (1..2).collect {
    new Thread({
        1_000.times { safeCounter.increment() }
    } as Runnable)
}
workers*.start()
workers*.join()

println "Synchronized counter: ${safeCounter.currentValue()} (expected 2000)"
