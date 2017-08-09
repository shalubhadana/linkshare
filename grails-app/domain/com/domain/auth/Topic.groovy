package com.domain.auth

import link.Visibility

class Topic {
    String name
    User createdBy
    Visibility visibility
    Date dateCreated
    Date lastUpdated

    static mapping = {
        autoTimestamp true
    }


        static constraints = {
        name blank:false
        visibility blank:false

    }
}
