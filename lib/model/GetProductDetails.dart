/// data : {"id":1,"attributes":{"name":"Nabati","description":"Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural.","price":10,"createdAt":"2022-06-17T04:20:44.401Z","updatedAt":"2022-06-17T04:20:44.401Z","image":{"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}}}
/// meta : {}

class GetProductDetails {
  GetProductDetails({
      Data? data, 
      dynamic meta,}){
    _data = data;
    _meta = meta;
}

  GetProductDetails.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _meta = json['meta'];
  }
  Data? _data;
  dynamic _meta;
GetProductDetails copyWith({  Data? data,
  dynamic meta,
}) => GetProductDetails(  data: data ?? _data,
  meta: meta ?? _meta,
);
  Data? get data => _data;
  dynamic get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['meta'] = _meta;
    return map;
  }

}

/// id : 1
/// attributes : {"name":"Nabati","description":"Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural.","price":10,"createdAt":"2022-06-17T04:20:44.401Z","updatedAt":"2022-06-17T04:20:44.401Z","image":{"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}}

class Data {
  Data({
      num? id, 
      Attributes? attributes,}){
    _id = id;
    _attributes = attributes;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _attributes = json['attributes'] != null ? Attributes.fromJson(json['attributes']) : null;
  }
  num? _id;
  Attributes? _attributes;
Data copyWith({  num? id,
  Attributes? attributes,
}) => Data(  id: id ?? _id,
  attributes: attributes ?? _attributes,
);
  num? get id => _id;
  Attributes? get attributes => _attributes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    return map;
  }

}

/// name : "Nabati"
/// description : "Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural."
/// price : 10
/// createdAt : "2022-06-17T04:20:44.401Z"
/// updatedAt : "2022-06-17T04:20:44.401Z"
/// image : {"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}

class Attributes {
  Attributes({
      String? name, 
      String? description, 
      num? price, 
      String? createdAt, 
      String? updatedAt, 
      Image? image,}){
    _name = name;
    _description = description;
    _price = price;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _image = image;
}

  Attributes.fromJson(dynamic json) {
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }
  String? _name;
  String? _description;
  num? _price;
  String? _createdAt;
  String? _updatedAt;
  Image? _image;
Attributes copyWith({  String? name,
  String? description,
  num? price,
  String? createdAt,
  String? updatedAt,
  Image? image,
}) => Attributes(  name: name ?? _name,
  description: description ?? _description,
  price: price ?? _price,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  image: image ?? _image,
);
  String? get name => _name;
  String? get description => _description;
  num? get price => _price;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Image? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['description'] = _description;
    map['price'] = _price;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }

}

/// data : {"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}

class Image {
  Image({
      ImageData? data,}){
    _data = data;
}

  Image.fromJson(dynamic json) {
    _data = json['data'] != null ? ImageData.fromJson(json['data']) : null;
  }
  ImageData? _data;
Image copyWith({  ImageData? data,
}) => Image(  data: data ?? _data,
);
  ImageData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 2
/// attributes : {"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}

class ImageData {
  ImageData({
      num? id, 
      ImageAttributes? attributes,}){
    _id = id;
    _attributes = attributes;
}

  ImageData.fromJson(dynamic json) {
    _id = json['id'];
    _attributes = json['attributes'] != null ? ImageAttributes.fromJson(json['attributes']) : null;
  }
  num? _id;
  ImageAttributes? _attributes;
  ImageData copyWith({  num? id,
  ImageAttributes? attributes,
}) => ImageData(  id: id ?? _id,
  attributes: attributes ?? _attributes,
);
  num? get id => _id;
  ImageAttributes? get attributes => _attributes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    return map;
  }

}

/// name : "th (1).jpg"
/// alternativeText : "th (1).jpg"
/// caption : "th (1).jpg"
/// width : 420
/// height : 225
/// formats : {"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}}
/// hash : "th_1_2c91f51fc8"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// size : 19.52
/// url : "/uploads/th_1_2c91f51fc8.jpg"
/// previewUrl : null
/// provider : "local"
/// provider_metadata : null
/// createdAt : "2022-06-17T04:19:48.023Z"
/// updatedAt : "2022-06-17T04:19:48.023Z"

class ImageAttributes {
  ImageAttributes({
      String? name, 
      String? alternativeText, 
      String? caption, 
      num? width, 
      num? height, 
      Formats? formats, 
      String? hash, 
      String? ext, 
      String? mime, 
      num? size, 
      String? url, 
      dynamic previewUrl, 
      String? provider, 
      dynamic providerMetadata, 
      String? createdAt, 
      String? updatedAt,}){
    _name = name;
    _alternativeText = alternativeText;
    _caption = caption;
    _width = width;
    _height = height;
    _formats = formats;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _size = size;
    _url = url;
    _previewUrl = previewUrl;
    _provider = provider;
    _providerMetadata = providerMetadata;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  ImageAttributes.fromJson(dynamic json) {
    _name = json['name'];
    _alternativeText = json['alternativeText'];
    _caption = json['caption'];
    _width = json['width'];
    _height = json['height'];
    _formats = json['formats'] != null ? Formats.fromJson(json['formats']) : null;
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _size = json['size'];
    _url = json['url'];
    _previewUrl = json['previewUrl'];
    _provider = json['provider'];
    _providerMetadata = json['provider_metadata'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  String? _name;
  String? _alternativeText;
  String? _caption;
  num? _width;
  num? _height;
  Formats? _formats;
  String? _hash;
  String? _ext;
  String? _mime;
  num? _size;
  String? _url;
  dynamic _previewUrl;
  String? _provider;
  dynamic _providerMetadata;
  String? _createdAt;
  String? _updatedAt;
ImageAttributes copyWith({  String? name,
  String? alternativeText,
  String? caption,
  num? width,
  num? height,
  Formats? formats,
  String? hash,
  String? ext,
  String? mime,
  num? size,
  String? url,
  dynamic previewUrl,
  String? provider,
  dynamic providerMetadata,
  String? createdAt,
  String? updatedAt,
}) => ImageAttributes(  name: name ?? _name,
  alternativeText: alternativeText ?? _alternativeText,
  caption: caption ?? _caption,
  width: width ?? _width,
  height: height ?? _height,
  formats: formats ?? _formats,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  size: size ?? _size,
  url: url ?? _url,
  previewUrl: previewUrl ?? _previewUrl,
  provider: provider ?? _provider,
  providerMetadata: providerMetadata ?? _providerMetadata,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get name => _name;
  String? get alternativeText => _alternativeText;
  String? get caption => _caption;
  num? get width => _width;
  num? get height => _height;
  Formats? get formats => _formats;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  num? get size => _size;
  String? get url => _url;
  dynamic get previewUrl => _previewUrl;
  String? get provider => _provider;
  dynamic get providerMetadata => _providerMetadata;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['alternativeText'] = _alternativeText;
    map['caption'] = _caption;
    map['width'] = _width;
    map['height'] = _height;
    if (_formats != null) {
      map['formats'] = _formats?.toJson();
    }
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['size'] = _size;
    map['url'] = _url;
    map['previewUrl'] = _previewUrl;
    map['provider'] = _provider;
    map['provider_metadata'] = _providerMetadata;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// thumbnail : {"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}

class Formats {
  Formats({
      Thumbnail? thumbnail,}){
    _thumbnail = thumbnail;
}

  Formats.fromJson(dynamic json) {
    _thumbnail = json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null;
  }
  Thumbnail? _thumbnail;
Formats copyWith({  Thumbnail? thumbnail,
}) => Formats(  thumbnail: thumbnail ?? _thumbnail,
);
  Thumbnail? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_thumbnail != null) {
      map['thumbnail'] = _thumbnail?.toJson();
    }
    return map;
  }

}

/// name : "thumbnail_th (1).jpg"
/// hash : "thumbnail_th_1_2c91f51fc8"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// path : null
/// width : 245
/// height : 131
/// size : 8.66
/// url : "/uploads/thumbnail_th_1_2c91f51fc8.jpg"

class Thumbnail {
  Thumbnail({
      String? name, 
      String? hash, 
      String? ext, 
      String? mime, 
      dynamic path, 
      num? width, 
      num? height, 
      num? size, 
      String? url,}){
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _path = path;
    _width = width;
    _height = height;
    _size = size;
    _url = url;
}

  Thumbnail.fromJson(dynamic json) {
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _path = json['path'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _url = json['url'];
  }
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  dynamic _path;
  num? _width;
  num? _height;
  num? _size;
  String? _url;
Thumbnail copyWith({  String? name,
  String? hash,
  String? ext,
  String? mime,
  dynamic path,
  num? width,
  num? height,
  num? size,
  String? url,
}) => Thumbnail(  name: name ?? _name,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  path: path ?? _path,
  width: width ?? _width,
  height: height ?? _height,
  size: size ?? _size,
  url: url ?? _url,
);
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  dynamic get path => _path;
  num? get width => _width;
  num? get height => _height;
  num? get size => _size;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['path'] = _path;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['url'] = _url;
    return map;
  }

}