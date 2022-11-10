
class Worksheet {
    Worksheet({
        this.sheetPr,
        this.dimension,
        this.sheetViews,
        this.sheetFormatPr,
        this.cols,
        this.sheetData,
        this.mergeCells,
        this.pageMargins,
        this.pageSetup,
        this.headerFooter,
        this.drawing,
        this.xmlns,
        this.xmlnsR,
        this.xmlnsMc,
        this.xmlnsX14Ac,
        this.xmlnsXr,
        this.xmlnsXr2,
        this.xmlnsXr3,
        this.mcIgnorable,
        this.xrUid,
    });

    SheetPr? sheetPr;
    Dimension? dimension;
    SheetViews? sheetViews;
    SheetFormatPr? sheetFormatPr;
    Cols? cols;
    SheetData? sheetData;
    MergeCells? mergeCells;
    PageMargins? pageMargins;
    PageSetup? pageSetup;
    HeaderFooter? headerFooter;
    Drawing? drawing;
    String? xmlns;
    String? xmlnsR;
    String? xmlnsMc;
    String? xmlnsX14Ac;
    String? xmlnsXr;
    String? xmlnsXr2;
    String? xmlnsXr3;
    String? mcIgnorable;
    String? xrUid;
}

class Cols {
    Cols({
        this.col,
    });

    List<Col>? col;
}

class Col {
    Col({
        this.min,
        this.max,
        this.width,
        this.style,
        this.customWidth,
    });

    String? min;
    String? max;
    String? width;
    String? style;
    String? customWidth;
}

class Dimension {
    Dimension({
        this.ref,
    });

    String? ref;
}

class Drawing {
    Drawing({
        this.rId,
    });

    String? rId;
}

class HeaderFooter {
    HeaderFooter({
        this.oddFooter,
    });

    String? oddFooter;
}

class MergeCells {
    MergeCells({
        this.mergeCell,
        this.count,
    });

    List<Dimension>? mergeCell;
    String? count;
}

class PageMargins {
    PageMargins({
        this.left,
        this.right,
        this.top,
        this.bottom,
        this.header,
        this.footer,
    });

    String? left;
    String? right;
    String? top;
    String? bottom;
    String? header;
    String? footer;
}

class PageSetup {
    PageSetup({
        this.orientation,
    });

    String? orientation;
}

class SheetData {
    SheetData({
        this.row,
    });

    List<Row>? row;
}

class Row {
    Row({
        this.c,
        this.r,
        this.spans,
        this.ht,
        this.customHeight,
        this.x14AcDyDescent,
    });

    List<C>? c;
    String? r;
    Spans? spans;
    String? ht;
    String? customHeight;
    String? x14AcDyDescent;
}

class C {
    C({
        this.r,
        this.s,
        this.v,
        this.t,
        this.f,
    });

    String? r;
    String? s;
    String? v;
    T? t;
    String? f;
}

enum T { S }

enum Spans { THE_111 }

class SheetFormatPr {
    SheetFormatPr({
        this.baseColWidth,
        this.defaultColWidth,
        this.defaultRowHeight,
        this.customHeight,
        this.x14AcDyDescent,
    });

    String? baseColWidth;
    String? defaultColWidth;
    String? defaultRowHeight;
    String? customHeight;
    String? x14AcDyDescent;
}

class SheetPr {
    SheetPr({
        this.pageSetUpPr,
    });

    PageSetUpPr? pageSetUpPr;
}

class PageSetUpPr {
    PageSetUpPr({
        this.fitToPage,
    });

    String? fitToPage;
}

class SheetViews {
    SheetViews({
        this.sheetView,
    });

    SheetView? sheetView;
}

class SheetView {
    SheetView({
        this.selection,
        this.showGridLines,
        this.tabSelected,
        this.workbookViewId,
    });

    Selection? selection;
    String? showGridLines;
    String? tabSelected;
    String? workbookViewId;
}

class Selection {
    Selection({
        this.activeCell,
        this.sqref,
    });

    String? activeCell;
    String? sqref;
}
