def handle_object_id(document):
  document["_id"] = str(document["_id"])
  return document