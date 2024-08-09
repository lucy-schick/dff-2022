from qgis.core import QgsProject
from PyQt5.QtXml import QDomDocument

# Load the XML file with the map themes
xml_file = '/Users/airvine/Projects/gis/map_themes.xml'

new_doc = QDomDocument()
with open(xml_file, 'r') as file:
    content = file.read()
    new_doc.setContent(content)

# Access the current QGIS project instance
qgsl = QgsProject.instance()

# Get the layer tree root
layer_tree = qgsl.layerTreeRoot()

# Parse the XML and apply map themes by setting layer visibility
root = new_doc.documentElement()
theme_nodes = root.elementsByTagName("MapTheme")

for i in range(theme_nodes.count()):
    theme_node = theme_nodes.at(i)
    theme_name = theme_node.attributes().namedItem("name").nodeValue()

    # Only adjust visibility for layers mentioned in the theme
    layer_nodes = theme_node.childNodes()
    for j in range(layer_nodes.count()):
        layer_node = layer_nodes.at(j)
        layer_name = layer_node.attributes().namedItem("name").nodeValue()
        visibility = layer_node.attributes().namedItem("visibility").nodeValue()

        # Find the layer by name and set its visibility
        layer_found = False
        for layer in qgsl.mapLayers().values():
            if layer.name() == layer_name:
                tree_layer = layer_tree.findLayer(layer.id())
                if tree_layer:
                    tree_layer.setItemVisibilityChecked(visibility == "visible")
                    layer_found = True
                    break
        if not layer_found:
            print(f" - Warning: Layer '{layer_name}' not found in the project.")

print(f"{theme_name} applied successfully!")
