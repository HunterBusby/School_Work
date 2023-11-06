import maya.cmds as cmds

# Create the body of the snowman
body1 = cmds.polySphere(r=2, sx=20, sy=20, ax=[0, 1, 0], cuv=2)[0]
cmds.move(0, 2, 0)

body2 = cmds.polySphere(r=1.5, sx=20, sy=20, ax=[0, 1, 0], cuv=2)[0]
cmds.move(0, 5, 0)

body3 = cmds.polySphere(r=1, sx=20, sy=20, ax=[0, 1, 0], cuv=2)[0]
cmds.move(0, 7, 0)

# Create the eyes
left_eye = cmds.polySphere(r=0.1, sx=20, sy=20, ax=[0, 1, 0], cuv=2)[0]
cmds.move(-0.5, 7.3, 0.8)

right_eye = cmds.polySphere(r=0.1, sx=20, sy=20, ax=[0, 1, 0], cuv=2)[0]
cmds.move(0.5, 7.3, 0.8)

# Create the nose
nose = cmds.polyCone(r=0.1, h=0.6, sx=20, sy=1, sz=1, ax=[0, 1, 0], cuv=0, ch=0)[0]
cmds.rotate(90, 0, 0)
cmds.move(0, 7, 1.2)

# Create the hat base
hat_base = cmds.polyCylinder(r=1, h=0.2, sx=20, sy=1, sz=1, ax=[0, 1, 0], cuv=0, ch=0)[0]
cmds.rotate(0, 0, 0)
cmds.move(0, 7.8, 0)

# Create the hat Top
hat_Top = cmds.polyCylinder(r=.75, h=1, sx=20, sy=1, sz=1, ax=[0, 1, 0], cuv=0, ch=0)[0]
cmds.rotate(0, 0, 0)
cmds.move(0, 8.3, 0)

# Add left Arms
left_arm = cmds.polyCylinder(r=0.1, h=2, sx=20, sy=1, sz=1, ax=[0, 1, 0], cuv=0, ch=0)[0]
cmds.rotate(0, 0, -45)
cmds.move(-1.5, 5, 0)

# Add right Arm
right_arm = cmds.polyCylinder(r=0.1, h=2, sx=20, sy=1, sz=1, ax=[0, 1, 0], cuv=0, ch=0)[0]
cmds.rotate(0, 0, 45)
cmds.move(1.5, 5, 0)
