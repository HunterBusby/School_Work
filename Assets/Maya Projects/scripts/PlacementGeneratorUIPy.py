import maya.cmds as cmds
import random

class RandPlacementGeneratorUI:
    def __init__(self):
        self.window_name = 'PlacementGeneratorWindow'
        self.x_min = 0
        self.x_max = 0
        self.y_min = 0
        self.y_max = 0
        self.z_min = 0
        self.z_max = 0
        self.num_dups = 10

    def create(self):
        if cmds.window(self.window_name, exists=True):
            cmds.deleteUI(self.window_name)

        cmds.window(self.window_name, title="Placement Generator UI", sizeable=False)
        cmds.columnLayout(adjustableColumn=True)

        cmds.text(label='X Range:')
        self.x_slider = cmds.floatSliderGrp(label='X Range', field=True, minValue=-100, maxValue=100,
                                            fieldMinValue=-100, fieldMaxValue=100, value=self.x_min,
                                            dragCommand=self.update_x_range)

        cmds.text(label='Y Range:')
        self.y_slider = cmds.floatSliderGrp(label='Y Range', field=True, minValue=-100, maxValue=100,
                                            fieldMinValue=-100, fieldMaxValue=100, value=self.y_min,
                                            dragCommand=self.update_y_range)

        cmds.text(label='Z Range:')
        self.z_slider = cmds.floatSliderGrp(label='Z Range', field=True, minValue=-100, maxValue=100,
                                            fieldMinValue=-100, fieldMaxValue=100, value=self.z_min,
                                            dragCommand=self.update_z_range)

        self.num_dups_field = cmds.intFieldGrp(label='Number of Duplications:', value1=self.num_dups)

        cmds.button(label='Execute', command=self.execute_script)
        cmds.showWindow()

    def update_x_range(self, value):
        self.x_min = cmds.floatSliderGrp(self.x_slider, query=True, value=True)

    def update_y_range(self, value):
        self.y_min = cmds.floatSliderGrp(self.y_slider, query=True, value=True)

    def update_z_range(self, value):
        self.z_min = cmds.floatSliderGrp(self.z_slider, query=True, value=True)

    def execute_script(self, *args):
        x_min = self.x_min
        x_max = cmds.floatSliderGrp(self.x_slider, query=True, fieldMaxValue=True)
        y_min = self.y_min
        y_max = cmds.floatSliderGrp(self.y_slider, query=True, fieldMaxValue=True)
        z_min = self.z_min
        z_max = cmds.floatSliderGrp(self.z_slider, query=True, fieldMaxValue=True)
        num_dups = cmds.intFieldGrp(self.num_dups_field, query=True, value1=True)

        sels = cmds.ls(selection=True)

        if not sels:
            cmds.warning("No objects selected. Please select at least one object.")
            return

        for sel in sels:
            for _ in range(num_dups):
                dups = cmds.duplicate(sel, rr=True)
                dup = dups[0]

                rand_x = random.uniform(x_min, x_max)
                rand_y = random.uniform(y_min, y_max)
                rand_z = random.uniform(z_min, z_max)

                cmds.xform(dup, ws=True, t=(rand_x, rand_y, rand_z))

# Usage:
placement_ui = RandPlacementGeneratorUI()
placement_ui.create()
