# 最小版本支持
cmake_minimum_required(VERSION 3.5)
# 生成版本名称
project(GenParameters)
# 设置PROJECT_PATH为项目源目录
set(PROJECT_PATH ${PROJECT_SOURCE_DIR})
# 添加项目源目录到头文件搜索路径
include_directories(${PROJECT_SOURCE_DIR})
# 设置CMAKE_MODULE_PATH变量为cmake目录
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
# 设置全局属性USE_FOLDERS，启用文件夹组织模式
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
# 包含common.cmake文件，该文件包含常用cmake函数和变量
include(${PROJECT_PATH}/cmake/common.cmake)
# 添加子目录
add_subdirectory(GenParameters)
# 判断是否添加test目录
if(NOT GENPARAMETERS_NO_TEST)
    add_subdirectory(test)
endif()
