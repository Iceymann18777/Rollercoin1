.class public Lcom/shockwave/pdfium/PdfDocument$Bookmark;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shockwave/pdfium/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bookmark"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field mNativePtr:J

.field pageIdx:J

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-object v0
.end method
