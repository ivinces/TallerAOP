public aspect GrettingAspectJ{ 	
	long startTime;
 	// Define a Pointcut is
    // collection of JoinPoint call gretting of class HelloAspectJDemo.
    
    pointcut callGretting(): call(* HelloAspectJDemo.greeting()); 
    before() : callGretting() {
    	startTime = System.currentTimeMillis();
    } 
    after() : callGretting()  {
    	long estimatedTime = System.currentTimeMillis()-startTime;
    	long nano=estimatedTime*1000000;
    	System.out.println("Tiempo de Gretting en Nano: "+nano);
    }  
}