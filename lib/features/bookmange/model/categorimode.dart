class Categorimodel {
    String categoryId;
    String categoryName;
    String categoryIcon;

    Categorimodel({
        required this.categoryId,
        required this.categoryName,
        required this.categoryIcon,
    });

    factory Categorimodel.fromJson(Map<String, dynamic> json) => Categorimodel(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryIcon: json["category_icon"],
    );

    Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_icon": categoryIcon,
    };
}
