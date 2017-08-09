package com.domain.auth



class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService
	String email
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	String firstName
	String lastName
	String confirmPassword

	Byte photo
	Boolean admin = false
	Boolean active = false
	static hasMany = [topic: Topic, subscription: Subscription, resourceRating: ResourceRating, resource: Resource, reading: ReadingItem]

	Date dateCreated
	Date lastUpdated


	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	@Override
	int hashCode() {
		username?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof User && other.username == username)
	}

	@Override
	String toString() {
		username
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	/*def beforeInsert() {
		encodePassword()
	}*/

	/*def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}*/

	/*protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}*/



	static constraints = {
		email unique: true, email: true, nullable: false
		username unique: true, nullable: false, blank: false
		firstName nullable: true, blank: true
		lastName nullable: true, blank: true
		photo nullable: true, blank: true
		admin nullable: true, blank: true
		active nullable: true, blank: true
		password blank: false, nullable: false
	}
	static transients = ['springSecurityService', 'confirmPassword']
}