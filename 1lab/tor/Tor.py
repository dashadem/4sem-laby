import gmsh
import sys

gmsh.initialize()
gmsh.open("tor.geo")

gmsh.model.geo.synchronize()
gmsh.model.mesh.generate(3)

#gmsh.write("tor.msh")
#gmsh.write("tor.geo_unrolled")

if '-nopopup' not in sys.argv:
    gmsh.fltk.run()

gmsh.finalize()