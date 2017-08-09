package com.domain.auth

import link.Seriousness
import com.domain.auth.Topic


class Subscription {
     Topic topic;
    static belongsTo = [user:User]
    Seriousness seriousness

    Date dateCreated


    static mapping = {
        autoTimestamp true
    }
        static constraints = {
    // user.topic.name unique:true


    }
}
