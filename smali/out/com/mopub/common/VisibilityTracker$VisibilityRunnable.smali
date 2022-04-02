.class Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisibilityRunnable"
.end annotation


# instance fields
.field private final mInvisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mopub/common/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/common/VisibilityTracker;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    .line 248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/VisibilityTracker;->access$002(Lcom/mopub/common/VisibilityTracker;Z)Z

    .line 254
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->access$100(Lcom/mopub/common/VisibilityTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    iget v3, v3, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMinViewablePercent:I

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    iget v4, v4, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMaxInvisiblePercent:I

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    iget-object v5, v5, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMinVisiblePx:Ljava/lang/Integer;

    .line 259
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    iget-object v1, v1, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mRootView:Landroid/view/View;

    .line 261
    iget-object v6, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v6}, Lcom/mopub/common/VisibilityTracker;->access$200(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v5}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 263
    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 264
    :cond_58
    iget-object v3, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/common/VisibilityTracker;->access$200(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 266
    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 270
    :cond_6b
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->access$300(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 271
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->access$300(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 275
    :cond_80
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
