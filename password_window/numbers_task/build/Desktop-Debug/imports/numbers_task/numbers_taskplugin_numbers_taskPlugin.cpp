// This file is autogenerated by CMake. Do not edit.

#include <QtQml/qqmlextensionplugin.h>

extern void qml_register_types_numbers_task();
Q_GHS_KEEP_REFERENCE(qml_register_types_numbers_task)

class numbers_taskPlugin : public QQmlEngineExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlEngineExtensionInterface_iid)

public:
    numbers_taskPlugin(QObject *parent = nullptr) : QQmlEngineExtensionPlugin(parent)
    {
        volatile auto registration = &qml_register_types_numbers_task;
        Q_UNUSED(registration)
    }
};



#include "numbers_taskplugin_numbers_taskPlugin.moc"
