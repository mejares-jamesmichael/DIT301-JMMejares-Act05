class Note {
  int? id;
  String title;
  String content;
  String timestamp;
  int priority;
  String category;
  bool isFavorite;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.timestamp,
    this.priority = 0,
    this.category = 'General',
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'timestamp': timestamp,
      'priority': priority,
      'category': category,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      timestamp: map['timestamp'],
      priority: map['priority'] ?? 0,
      category: map['category'] ?? 'General',
      isFavorite: map['isFavorite'] == 1,
    );
  }

  Note copyWith({
    int? id,
    String? title,
    String? content,
    String? timestamp,
    int? priority,
    String? category,
    bool? isFavorite,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      priority: priority ?? this.priority,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
