.class public Lcom/shockwave/pdfium/PdfiumCore;
.super Ljava/lang/Object;
.source "PdfiumCore.java"


# static fields
.field private static final FD_CLASS:Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field private static mFdField:Ljava/lang/reflect/Field;


# instance fields
.field private mCurrentDpi:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v0, "modpdfium"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jniPdfium"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    const-class v0, Ljava/io/FileDescriptor;

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    return-void
.end method

.method public static getNumFd(Landroid/os/ParcelFileDescriptor;)I
    .registers 4

    const/4 v0, -0x1

    .line 84
    :try_start_1
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_13

    .line 85
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    :cond_13
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1d} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v0

    :catch_23
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return v0
.end method

.method private native nativeCloseDocument(J)V
.end method

.method private native nativeClosePage(J)V
.end method

.method private native nativeGetBookmarkDestIndex(JJ)J
.end method

.method private native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;
.end method

.method private native nativeGetPageCount(J)I
.end method

.method private native nativeGetPageHeightPixel(JI)I
.end method

.method private native nativeGetPageWidthPixel(JI)I
.end method

.method private native nativeGetSiblingBookmark(JJ)Ljava/lang/Long;
.end method

.method private native nativeLoadPage(JI)J
.end method

.method private native nativeOpenDocument(ILjava/lang/String;)J
.end method

.method private native nativeOpenMemDocument([BLjava/lang/String;)J
.end method

.method private native nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
.end method

.method private recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;",
            "Lcom/shockwave/pdfium/PdfDocument;",
            "J)V"
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;-><init>()V

    .line 290
    iput-wide p3, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->mNativePtr:J

    .line 291
    invoke-direct {p0, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->title:Ljava/lang/String;

    .line 292
    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkDestIndex(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->pageIdx:J

    .line 293
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 297
    invoke-virtual {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    .line 300
    :cond_2f
    iget-wide v0, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetSiblingBookmark(JJ)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 302
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V
    .registers 6

    .line 242
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 244
    iget-object v3, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeClosePage(J)V

    goto :goto_d

    .line 246
    :cond_29
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 248
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeCloseDocument(J)V

    .line 250
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_41

    if-eqz v1, :cond_3f

    .line 252
    :try_start_37
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_41

    :catch_3c
    const/4 v1, 0x0

    .line 256
    :try_start_3d
    iput-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 258
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method public getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;
    .registers 7

    .line 262
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    new-instance v1, Lcom/shockwave/pdfium/PdfDocument$Meta;

    invoke-direct {v1}, Lcom/shockwave/pdfium/PdfDocument$Meta;-><init>()V

    .line 264
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Title"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->title:Ljava/lang/String;

    .line 265
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Author"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->author:Ljava/lang/String;

    .line 266
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Subject"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->subject:Ljava/lang/String;

    .line 267
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Keywords"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->keywords:Ljava/lang/String;

    .line 268
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Creator"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->creator:Ljava/lang/String;

    .line 269
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Producer"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->producer:Ljava/lang/String;

    .line 270
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "CreationDate"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    .line 271
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string p1, "ModDate"

    invoke-direct {p0, v2, v3, p1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->modDate:Ljava/lang/String;

    .line 273
    monitor-exit v0

    return-object v1

    :catchall_5a
    move-exception p1

    .line 274
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I
    .registers 5

    .line 126
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageCount(J)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I
    .registers 5

    .line 167
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    iget-object p1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1d

    .line 170
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget v1, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, p1, p2, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageHeightPixel(JI)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_1d
    const/4 p1, 0x0

    .line 172
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p1

    .line 173
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I
    .registers 5

    .line 157
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object p1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1d

    .line 160
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget v1, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, p1, p2, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageWidthPixel(JI)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_1d
    const/4 p1, 0x0

    .line 162
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shockwave/pdfium/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 282
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    .line 284
    :cond_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p1

    .line 285
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    .line 105
    iput-object p1, v0, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 106
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_a
    invoke-static {p1}, Lcom/shockwave/pdfium/PdfiumCore;->getNumFd(Landroid/os/ParcelFileDescriptor;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenDocument(ILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    .line 108
    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception p1

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw p1
.end method

.method public newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    .line 119
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenMemDocument([BLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    .line 121
    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception p1

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public openPage(Lcom/shockwave/pdfium/PdfDocument;I)J
    .registers 7

    .line 133
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPage(JI)J

    move-result-wide v1

    .line 135
    iget-object p1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v0

    return-wide v1

    :catchall_18
    move-exception p1

    .line 137
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V
    .registers 22

    .line 227
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    move-object v0, p1

    .line 229
    :try_start_4
    iget-object v0, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_14} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_2e
    .catchall {:try_start_4 .. :try_end_14} :catchall_2b

    move-object v12, p0

    :try_start_15
    iget v6, v12, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    move-object v2, p0

    move-object v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/shockwave/pdfium/PdfiumCore;->nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27
    .catchall {:try_start_15 .. :try_end_26} :catchall_49

    goto :goto_47

    :catch_27
    move-exception v0

    goto :goto_30

    :catch_29
    move-exception v0

    goto :goto_3d

    :catchall_2b
    move-exception v0

    move-object v12, p0

    goto :goto_4a

    :catch_2e
    move-exception v0

    move-object v12, p0

    .line 235
    :goto_30
    :try_start_30
    sget-object v2, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v3, "Exception throw from native"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :catch_3b
    move-exception v0

    move-object v12, p0

    .line 232
    :goto_3d
    sget-object v2, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v3, "mContext may be null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 238
    :goto_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v0

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_49

    throw v0
.end method
