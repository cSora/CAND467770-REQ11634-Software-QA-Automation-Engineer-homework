package com.homeworkTFW;

import com.intuit.karate.junit5.Karate;

class KarateTest {

    @Karate.Test
    Karate testAll() {
        System.out.println(getClass().getResource("/com/homeworkTFW/example.feature"));
        return Karate.run("classpath:com/homeworkTFW/example.feature").relativeTo(getClass());
    }

}
