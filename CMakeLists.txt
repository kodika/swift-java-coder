add_library(JavaCoder
	Sources/JNIArgumentProtocol.swift
	Sources/JNIObject+JavaCoder.swift
	Sources/JavaCodingError.swift
	Sources/JavaEncoder.swift
	Sources/JNICore+JavaCoder.swift
	Sources/JavaCoderConfig.swift
	Sources/JavaDecoder.swift
	Sources/JavaPrimitive.swift
)

target_link_libraries(JavaCoder PUBLIC
	dispatch
	Foundation
	AnyCodable
	java_swift
)

set_target_properties(JavaCoder PROPERTIES
  INSTALL_RPATH "$ORIGIN"
  Swift_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/swift
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_BINARY_DIR}/swift
)

_install_target(JavaCoder)
