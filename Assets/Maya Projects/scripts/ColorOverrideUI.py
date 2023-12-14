import maya.cmds as cmds

class ColorOverideUI:
    def __init__(self):
        self.window_name = 'Wire Color'
        self.color_index = 13

    def create(self):
        if cmds.window(self.window_name, exists=True):
            cmds.deleteUI(self.window_name)

        cmds.window(self.window_name, title="Override Color UI", sizeable=False)
        cmds.columnLayout(adjustableColumn=True)
        cmds.text(label='Select Color:')
        self.color_slider = cmds.intSlider(min=0, max=31, value=self.color_index, step=1,
                                           changeCommand=self.update_color, dragCommand=self.update_color)
        cmds.button(label='Execute', command=self.execute_script)
        cmds.showWindow()

    def update_color(self, value):
        self.color_index = value

    def execute_script(self, *args):
        selected_objects = cmds.ls(selection=True)

        if not selected_objects:
            cmds.warning("No objects selected. Please select one or more objects.")
            return

        for obj in selected_objects:
            shape_nodes = cmds.listRelatives(obj, shapes=True, fullPath=True)

            if not shape_nodes:
                cmds.warning(f"No shape nodes found for {obj}. Skipping.")
                continue

            for shape_node in shape_nodes:
                cmds.setAttr(f"{shape_node}.overrideColor", self.color_index)
                cmds.setAttr(f"{shape_node}.overrideRGBColors", 0)  # Disable RGB override

coloverride_ui = ColorOverideUI()
coloverride_ui.create()
