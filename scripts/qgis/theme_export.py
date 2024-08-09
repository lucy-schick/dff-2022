from qgis.core import QgsProject
from PyQt5.QtXml import QDomDocument, QDomElement

# Create a QDomDocument object
doc = QDomDocument("MapThemes")

# Create the root element
root = doc.createElement("MapThemeCollection")
doc.appendChild(root)

# Access the current QGIS project instance
qgsl = QgsProject.instance()

# Access the map theme collection
mTC = qgsl.mapThemeCollection()

# Get all map themes
themes = mTC.mapThemes()

# Get the currently visible layers in the project
current_visible_layers = set([layer.id() for layer in qgsl.mapLayers().values() if qgsl.layerTreeRoot().findLayer(layer.id()).isVisible()])

# Identify the active theme based on the current layer visibility
active_theme = None
for theme in themes:
    theme_visible_layers = set(mTC.mapThemeVisibleLayerIds(theme))
    if theme_visible_layers == current_visible_layers:
        active_theme = theme
        break

if active_theme:
    print(f"Identified active theme: {active_theme}")
    
    # Export only the active theme
    theme_element = doc.createElement("MapTheme")
    theme_element.setAttribute("name", active_theme)

    # Get all layers in the project and check their visibility in the layer tree
    for layer in qgsl.mapLayers().values():
        layer_node = qgsl.layerTreeRoot().findLayer(layer.id())
        if layer_node is None:
            continue

        layer_element = doc.createElement("Layer")
        layer_element.setAttribute("id", layer.id())
        layer_element.setAttribute("name", layer.name())

        # Check layer visibility using the layer node from the layer tree
        visibility = 'visible' if layer_node.isVisible() else 'hidden'
        layer_element.setAttribute("visibility", visibility)

        # Append layer information to the theme element
        theme_element.appendChild(layer_element)
    
    root.appendChild(theme_element)


    # Save the document
    output_path = '/Users/airvine/Projects/gis/map_themes.xml'
    with open(output_path, 'w') as file:
        file.write(doc.toString())

    print(f"Map theme '{active_theme}' saved to {output_path}")
else:
    print("No active theme could be identified. Have you freshly applied a theme immediately before attempting export?")
