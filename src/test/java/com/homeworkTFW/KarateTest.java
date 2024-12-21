package com.homeworkTFW;

import com.intuit.karate.junit5.Karate;

class KarateTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run("features/example").relativeTo(getClass());
    }

}
