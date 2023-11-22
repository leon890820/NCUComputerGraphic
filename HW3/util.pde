public void CGLine(float x1, float y1, float x2, float y2) {
    stroke(0);
    line(x1, y1, x2, y2);
}
public boolean outOfBoundary(float x, float y) {
    if (x < 0 || x >= width || y < 0 || y >= height) return true;
    return false;
}

public void drawPoint(float x, float y, color c) {
    int index = (int)y * width + (int)x;
    if (outOfBoundary(x, y)) return;
    pixels[index] = c;
}

public float distance(Vector3 a, Vector3 b) {
    Vector3 c = a.sub(b);
    return sqrt(Vector3.dot(c, c));
}



boolean pnpoly(float x, float y, Vector3[] vertexes) {
    // HW2
    // To-Do : You need to check the coordinate p(x,v) if inside the vertexes. If yes return true.

    boolean c = false;

    return c;
}

public Vector3[] findBoundBox(Vector3[] v) {
    Vector3 recordminV=new Vector3(1.0/0.0);
    Vector3 recordmaxV=new Vector3(-1.0/0.0);
    // HW2
    // To-Do : You need to find the bounding box of the vertexes v.

    //     r1 -------
    //       |   /\  |
    //       |  /  \ |
    //       | /____\|
    //        ------- r2


    Vector3[] result={recordminV, recordmaxV};
    return result;
}


public Vector3[] Sutherland_Hodgman_algorithm(Vector3[] points, Vector3[] boundary) {
    ArrayList<Vector3> input=new ArrayList<Vector3>();
    ArrayList<Vector3> output=new ArrayList<Vector3>();
    for (int i=0; i<points.length; i+=1) {
        input.add(points[i]);
    }

    // HW2
    // To-Do
    // You need to implement the Sutherland Hodgman Algorithm in this section.
    // The function you pass 2 parameter. One is the vertexes of the shape "points".
    // And the other is the vertexes of the "boundary".
    // The output is the vertexes of the polygon.


    output = input;



    Vector3[] result=new Vector3[output.size()];
    for (int i=0; i<result.length; i+=1) {
        result[i]=output.get(i);
    }
    return result;
}

public float getDepth(float x, float y, Vector3[] vertex ) {
    // To - Do
    // You need to calculate the depth (z) in the triangle (vertex) based on the positions x and y. and return the z value;

    return 0.0;
}

float[] barycentric(Vector3 P, Vector4[] verts) {

    Vector3 A=verts[0].homogenized();
    Vector3 B=verts[1].homogenized();
    Vector3 C=verts[2].homogenized();

    // To - Do (HW4)
    // Calculate the barycentric coordinates of point P in the triangle verts using the barycentric coordinate system.


    float[] result={0.0, 0.0, 0.0};

    return result;
}
