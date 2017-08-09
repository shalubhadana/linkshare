package com.domain.auth

import com.domain.auth.Topic

class Resource {
    String description
    User createdBy
    static belongsTo = [topic : Topic]

    Date dateCreated
    Date lastUpdated

    static mapping = {
        autoTimestamp true
    }
        static constraints = {
        description maxSize: 1024,nullable: true
        topic blank: false, nullable: false
    }
}
