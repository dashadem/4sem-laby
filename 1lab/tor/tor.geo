SetFactory ("OpenCASCADE");

Mesh.MeshSizeMin = 1;
Mesh.MeshSizeMax = 1;

Torus (1) = {0, 0, 0, 12, 6, 2*Pi};
Torus (2) = {0, 0, 0, 12, 3, 2*Pi};

BooleanDifference (3) = {Volume {1}; Delete; } {Volume {2}; Delete; };