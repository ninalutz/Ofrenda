def save_current_file():
	print("Saving current file: {}".format(current_file))
	def order_dict(d):
		return OrderedDict([
			("title", d["title"]),
			("type", d["type"]),
			("has_source", d["has_source"]),
			("info", OrderedDict([
				(key, d["info"][key] if key in d["info"] else "") for key in info_keys
			])),
			("streams", OrderedDict([
				(key, d["streams"][key] if key in d["streams"] else "") for key in stream_keys
			]))
		])

	try:
		sorted_docs = [order_dict(doc) for doc in current_docs]
		with open(current_file, "w", encoding="UTF-8") as f:
			yaml.dump_all(sorted_docs, f, default_flow_style=False, indent=4, allow_unicode=True)
	except:
		from traceback import print_exc
		print_exc()
		return False
	return True