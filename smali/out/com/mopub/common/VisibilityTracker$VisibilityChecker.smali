.class public Lcom/mopub/common/VisibilityTracker$VisibilityChecker;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityChecker"
.end annotation


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public hasRequiredTimeElapsed(JI)Z
    .registers 6

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long p1, p3

    cmp-long p3, v0, p1

    if-ltz p3, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_5c

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_5c

    .line 307
    :cond_10
    iget-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_19

    return v0

    .line 313
    :cond_19
    iget-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-long v3, p1

    mul-long v1, v1, v3

    .line 314
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    mul-long v3, v3, p1

    const-wide/16 p1, 0x0

    cmp-long v5, v3, p1

    if-gtz v5, :cond_3c

    return v0

    :cond_3c
    const/4 p1, 0x1

    if-eqz p4, :cond_50

    .line 320
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_50

    .line 321
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p4, v1, p2

    if-ltz p4, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    return v0

    :cond_50
    const-wide/16 v5, 0x64

    mul-long v1, v1, v5

    int-to-long p2, p3

    mul-long p2, p2, v3

    cmp-long p4, v1, p2

    if-ltz p4, :cond_5c

    const/4 v0, 0x1

    :cond_5c
    :goto_5c
    return v0
.end method
