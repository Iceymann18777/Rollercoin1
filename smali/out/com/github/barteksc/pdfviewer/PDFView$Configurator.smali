.class public Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private defaultPage:I

.field private final documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private pageNumbers:[I

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V
    .registers 4

    .line 1185
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1159
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1163
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    const/4 v0, 0x0

    .line 1175
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1177
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1179
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1181
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1183
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1186
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V
    .registers 4

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method


# virtual methods
.method public defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1235
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1205
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1200
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    return-object p0
.end method

.method public enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1195
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    return-object p0
.end method

.method public load()V
    .registers 9

    .line 1255
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 1256
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1257
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    .line 1258
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    .line 1259
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe(Z)V

    .line 1260
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    .line 1261
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1262
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    .line 1263
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    .line 1264
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    .line 1265
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$700(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$600(Lcom/github/barteksc/pdfviewer/PDFView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeVertical(Z)V

    .line 1266
    iget-object v7, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    if-eqz v7, :cond_67

    .line 1267
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-static/range {v2 .. v7}, Lcom/github/barteksc/pdfviewer/PDFView;->access$800(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    goto :goto_74

    .line 1269
    :cond_67
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    :goto_74
    return-void
.end method

.method public onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1210
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1225
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method

.method public onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1215
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method public onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1230
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1245
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method public scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 2

    .line 1250
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object p0
.end method
