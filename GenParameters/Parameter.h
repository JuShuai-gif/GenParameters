#pragma once
#include <functional>
#include <memory>
#include <string>

namespace GenParam{
    class ParameterBase
    {
    public:
        enum DataTypes{
            BOOl = 1,
            FLOAT,
            DOUBLE,
            INT8,
            INT16,
            INT32,
            UINT8,
            UINT16,
            UINT32,
            VEC_FLOAT,
            VEC_DOUBLE,
            VEC_INT8,
            VEC_INT16,
            VEC_INT32,
            VEC_UINT8,
            VEC_UINT16,
            VEC_UINT32,
            ENUM,
            STRING,
            FUNCTION
        };
        
        using Ptr = std::unique_ptr<ParameterBase>;

        template<typename T>
        using SetFunc = std::function<void(T)>;

        template<typename T>
        using GetFunc = std::function<T()>;

        template<typename T>
        using SetVecFunc = std::function<void(T*)>;

        template<typename T>
        using GetVecFunc = std::function<T* ()>;

        ParameterBase(const std::string& name,const std::string& label,const DataTypes type):
        m_name(name),m_label(label),m_group(""),m_description(""),m_hotKey(""),m_type(type),m_readOnly(false),m_visible(true)
        {
        }
        virtual ~ParameterBase(){}

        std::string getName()const {return m_name;}
        void setName(const std::string& name){m_name = name;}

        std::string getGroup()const{return m_group;}
        void setGrop(const std::string& group){
            m_group = group;
        }

        std::string getLabel()const{return m_label;}
        void setLabel(const std::string&label){
            m_label = label;
        }

        std::string getDescription()const{return m_description;}
        void setDescription(const std::string & des){
            m_description = des;
        }

        std::string getHotKey()const{return m_hotKey;}
        void setHotKey(const std::string& hot){
            m_hotKey = hot;
        }

        bool getReadOnly()const{return m_readOnly;}
        virtual void setReadOnly(const bool val){
            m_readOnly = val;
        }

        bool getVisible()const{return m_visible;}
        void setVisible(const bool val){
            m_visible = val;
        }

    protected:
        std::string m_name;// 名字
        std::string m_label;// 标签
        std::string m_group;// 
        std::string m_description;// 描述
        std::string m_hotKey;// 
        DataTypes m_type;
        bool m_readOnly;
        bool m_visible;
    };

 


}