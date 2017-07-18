accessing
boxes: anObject

	boxes isEmptyOrNil ifFalse: [boxes do: [:b | b removeDependent: self]].
	boxes := anObject.
	boxes do: [:b | b addDependent: self].