import maya.cmds as cmds

def change_override_color(color_index):

    selected_objects = cmds.ls(selection=True)

    if not selected_objects:
        cmds.warning("No objects selected. Please select one or more objects.")
        return

    for obj in selected_objects:
        # Get the shape nodes of the selected object
        shape_nodes = cmds.listRelatives(obj, shapes=True, fullPath=True)

        if not shape_nodes:
            cmds.warning(f"No shape nodes found for {obj}. Skipping.")
            continue

        for shape_node in shape_nodes:
            # Set the override color for each shape node
            cmds.setAttr(f"{shape_node}.overrideColor", color_index)
            cmds.setAttr(f"{shape_node}.overrideRGBColors", 0)  # Disable RGB override

change_override_color(13)

