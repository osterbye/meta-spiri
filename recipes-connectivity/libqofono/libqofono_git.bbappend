# Fix path of lib files

FILES_${PN}_remove = " \
    ${libdir}/qt5/qml/MeeGo/QOfono/qmldir \
    ${libdir}/qt5/qml/MeeGo/QOfono/libQOfonoQtDeclarative.so \
"

FILES_${PN}_append = " \
    ${libdir}/qml/MeeGo/QOfono/qmldir \
    ${libdir}/qml/MeeGo/QOfono/libQOfonoQtDeclarative.so \
"

