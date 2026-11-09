println 'Main: before start'

Thread worker = new Thread({
    println 'Worker: started'
    println 'Worker: finished'
} as Runnable)

worker.start()
worker.join()

println 'Main: after join'
