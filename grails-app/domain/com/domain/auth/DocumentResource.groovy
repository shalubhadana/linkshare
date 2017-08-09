package com.domain.auth

import com.domain.auth.Resource

class DocumentResource {
    String filePath
    static belongsTo=[resource:Resource]
    static constraints = {
        filePath nullable: false, blank: false
    }
}
