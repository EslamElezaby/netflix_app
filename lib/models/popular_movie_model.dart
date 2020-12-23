class PopularMovieModel {
    PopularMovieModel({
        this.id,
        this.name,
        this.discription,
        this.coverUrl,
    });

    String id;
    String name;
    String discription;
    String coverUrl;

    factory PopularMovieModel.fromJson(Map<String, dynamic> json) => PopularMovieModel(
        id: json["id"],
        name: json["name"],
        discription: json["discription"],
        coverUrl: json["cover_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "discription": discription,
        "cover_url": coverUrl,
    };
}