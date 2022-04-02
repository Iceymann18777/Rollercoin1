.class Lcom/github/barteksc/pdfviewer/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;
    }
.end annotation


# instance fields
.field private final activeCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

.field private final passiveActiveLock:Ljava/lang/Object;

.field private final passiveCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;-><init>(Lcom/github/barteksc/pdfviewer/CacheManager;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    .line 44
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    .line 45
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    return-void
.end method

.method private static find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ")",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 128
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private makeAFreeSpace()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v1, v2, :cond_2c

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    .line 69
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 70
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 71
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 74
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v1, v2, :cond_55

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    .line 75
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 76
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2c

    .line 78
    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    goto :goto_5b

    :goto_5a
    throw v1

    :goto_5b
    goto :goto_5a
.end method


# virtual methods
.method public cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeAFreeSpace()V

    .line 55
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1c

    .line 85
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_1c
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public containsThumbnail(IIFFLandroid/graphics/RectF;)Z
    .registers 16

    .line 114
    new-instance v9, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    .line 115
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter p1

    .line 116
    :try_start_11
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 117
    invoke-virtual {p3, v9}, Lcom/github/barteksc/pdfviewer/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    const/4 p2, 0x1

    .line 118
    monitor-exit p1

    return p2

    :cond_2c
    const/4 p2, 0x0

    .line 121
    monitor-exit p1

    return p2

    :catchall_2f
    move-exception p2

    .line 122
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    goto :goto_33

    :goto_32
    throw p2

    :goto_33
    goto :goto_32
.end method

.method public getPageParts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 140
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public makeANewSet()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 63
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public recycle()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 152
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9

    .line 154
    :cond_1d
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 155
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 156
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_28

    .line 158
    :cond_3c
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 159
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_69

    .line 160
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v1

    .line 161
    :try_start_45
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 162
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4b

    .line 164
    :cond_5f
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    monitor-exit v1

    return-void

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_45 .. :try_end_68} :catchall_66

    throw v0

    :catchall_69
    move-exception v1

    .line 159
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    goto :goto_6d

    :goto_6c
    throw v1

    :goto_6d
    goto :goto_6c
.end method

.method public upPartIfContained(IIFFLandroid/graphics/RectF;I)Z
    .registers 18

    move-object v1, p0

    .line 95
    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    .line 98
    iget-object v2, v1, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_13
    iget-object v3, v1, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-static {v3, v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2d

    .line 100
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move/from16 v0, p6

    .line 101
    invoke-virtual {v3, v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->setCacheOrder(I)V

    .line 102
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v2

    return v4

    .line 106
    :cond_2d
    iget-object v3, v1, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-static {v3, v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v0

    if-eqz v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    monitor-exit v2

    return v4

    :catchall_39
    move-exception v0

    .line 107
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_39

    throw v0
.end method
