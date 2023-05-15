# 创建一个名为 GenParameters 的新 CMake 目标，
# 类型为 INTERFACE。这意味着它本身不会生成任何编译代码，而是为依赖于它的其他目标提供编译选项或其他信息
add_library(GenParameters INTERFACE)

# 指定与 GenParameters 目标相关联的源文件。
# 在这种情况下，这些源文件都是当前目录中与指定模式匹配的头文件。
target_sources(GenParameters INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/Parameter.h
    ${CMAKE_CURRENT_LIST_DIR}/EnumParameter.h
    ${CMAKE_CURRENT_LIST_DIR}/FunctionParameter.h
    ${CMAKE_CURRENT_LIST_DIR}/NumericParameter.h
    ${CMAKE_CURRENT_LIST_DIR}/ParameterObject.h
    ${CMAKE_CURRENT_LIST_DIR}/VectorParameter.h
)
# 将当前目录中的头文件安装到正在安装库的系统的 include 目录中。
# FILES_MATCHING 选项指定只安装名称与指定模式匹配的文件。
install(DIRECTORY ./
DESTINATION include
FILES_MATCHING PATTERN "*.h")