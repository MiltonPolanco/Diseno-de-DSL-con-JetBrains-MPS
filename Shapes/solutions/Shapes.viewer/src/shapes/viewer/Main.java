package shapes.viewer;

import org.w3c.dom.*;
import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.awt.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class Main {

  private static class DrawShape {
    enum Kind { SQUARE, CIRCLE, TRIANGLE }
    Kind kind;

    int cx, cy;
    int sizeOrRadiusOrSide;   // square:size, circle:radius, triangle:side
    int rotationDeg;          // only for triangle (default 0)
    Color color;
  }

  public static void main(String[] args) throws Exception {
    if (args.length != 1) {
      System.err.println("Uso: shapes.viewer.Main <ruta-al-MyDrawing.xml>");
      return;
    }

    File xmlFile = new File(args[0]);
    final List<DrawShape> shapes = load(xmlFile);

    SwingUtilities.invokeLater(new Runnable() {
      @Override public void run() {
        JFrame f = new JFrame("Shapes XML Viewer");
        f.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

        JPanel panel = new JPanel() {
          @Override protected void paintComponent(Graphics g0) {
            super.paintComponent(g0);
            Graphics2D g = (Graphics2D) g0;

            for (DrawShape s : shapes) {
              g.setColor(s.color);

              if (s.kind == DrawShape.Kind.SQUARE) {
                int size = s.sizeOrRadiusOrSide;
                g.fillRect(s.cx - size / 2, s.cy - size / 2, size, size);

              } else if (s.kind == DrawShape.Kind.CIRCLE) {
                int r = s.sizeOrRadiusOrSide;
                g.fillOval(s.cx - r, s.cy - r, 2 * r, 2 * r);

              } else if (s.kind == DrawShape.Kind.TRIANGLE) {
                drawTriangle(g, s.cx, s.cy, s.sizeOrRadiusOrSide, s.rotationDeg);
              }
            }
          }
        };

        panel.setPreferredSize(new Dimension(600, 600));
        f.setContentPane(panel);
        f.pack();
        f.setLocationRelativeTo(null);
        f.setVisible(true);
      }
    });
  }

  private static void drawTriangle(Graphics2D g, int cx, int cy, int side, int rotationDeg) {
    // Equilateral triangle with centroid at (cx, cy)
    double h = side * Math.sqrt(3) / 2.0;

    // vertices without rotation
    double x1 = cx;
    double y1 = cy - 2.0 * h / 3.0;

    double x2 = cx - side / 2.0;
    double y2 = cy + h / 3.0;

    double x3 = cx + side / 2.0;
    double y3 = cy + h / 3.0;

    // rotate around centroid (cx, cy)
    double ang = Math.toRadians(rotationDeg);
    double cos = Math.cos(ang);
    double sin = Math.sin(ang);

    double[] X = { x1, x2, x3 };
    double[] Y = { y1, y2, y3 };

    int[] xs = new int[3];
    int[] ys = new int[3];

    for (int i = 0; i < 3; i++) {
      double dx = X[i] - cx;
      double dy = Y[i] - cy;
      double rx = dx * cos - dy * sin;
      double ry = dx * sin + dy * cos;
      xs[i] = (int) Math.round(cx + rx);
      ys[i] = (int) Math.round(cy + ry);
    }

    g.fillPolygon(xs, ys, 3);
  }

  private static List<DrawShape> load(File xmlFile) throws Exception {
    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    DocumentBuilder db = dbf.newDocumentBuilder();

    Document doc;
    InputStream in = new FileInputStream(xmlFile);
    try {
      doc = db.parse(in);
    } finally {
      in.close();
    }

    Element root = doc.getDocumentElement(); // <painting>
    NodeList nodes = root.getChildNodes();

    List<DrawShape> out = new ArrayList<DrawShape>();

    for (int i = 0; i < nodes.getLength(); i++) {
      Node n = nodes.item(i);
      if (n.getNodeType() != Node.ELEMENT_NODE) continue;

      Element e = (Element) n;
      String tag = e.getTagName();

      DrawShape s = new DrawShape();

      if ("square".equals(tag)) s.kind = DrawShape.Kind.SQUARE;
      else if ("circle".equals(tag)) s.kind = DrawShape.Kind.CIRCLE;
      else if ("triangle".equals(tag)) s.kind = DrawShape.Kind.TRIANGLE;
      else continue;

      // center
      Element center = (Element) e.getElementsByTagName("center").item(0);
      s.cx = Integer.parseInt(center.getAttribute("x"));
      s.cy = Integer.parseInt(center.getAttribute("y"));

      // size / radius / side
      if (s.kind == DrawShape.Kind.SQUARE) {
        s.sizeOrRadiusOrSide = Integer.parseInt(textOfFirst(e, "size"));
      } else if (s.kind == DrawShape.Kind.CIRCLE) {
        s.sizeOrRadiusOrSide = Integer.parseInt(textOfFirst(e, "radius"));
      } else { // TRIANGLE
        s.sizeOrRadiusOrSide = Integer.parseInt(textOfFirst(e, "side"));
        String rot = textOfFirst(e, "rotationDeg");
        s.rotationDeg = (rot == null || rot.length() == 0) ? 0 : Integer.parseInt(rot);
      }

      // color
      s.color = parseColor(textOfFirst(e, "color"));
      out.add(s);
    }

    return out;
  }

  private static String textOfFirst(Element parent, String tag) {
    NodeList nl = parent.getElementsByTagName(tag);
    if (nl.getLength() == 0) return "";
    return nl.item(0).getTextContent().trim();
  }

  private static Color parseColor(String name) {
    if (name == null) return Color.BLACK;
    String n = name.trim().toLowerCase();
    if ("black".equals(n)) return Color.BLACK;
    if ("white".equals(n)) return Color.WHITE;
    if ("red".equals(n)) return Color.RED;
    if ("green".equals(n)) return Color.GREEN;
    if ("blue".equals(n)) return Color.BLUE;
    return Color.BLACK;
  }
}
