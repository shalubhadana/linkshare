package link

enum Seriousness {
    serious("serious"),
    veryserious("veryserious"),
    casual("casual")
    String name
    Seriousness(String name){
        this.name=name;
    }

}