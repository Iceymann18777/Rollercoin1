.class public Lcom/mopub/mraid/MraidBridge$MraidWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MraidWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_VISIBLE_PX:I = 0x1


# instance fields
.field private mMraidViewable:Z

.field private mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

.field private mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 249
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_15

    .line 254
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mMraidViewable:Z

    return-void

    .line 258
    :cond_15
    new-instance v0, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {v0, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    .line 259
    new-instance p1, Lcom/mopub/mraid/MraidBridge$MraidWebView$1;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView$1;-><init>(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 269
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/common/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidBridge$MraidWebView;Z)V
    .registers 2

    .line 235
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    return-void
.end method

.method private setMraidViewable(Z)V
    .registers 3

    .line 293
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mMraidViewable:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 296
    :cond_5
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mMraidViewable:Z

    .line 297
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    if-eqz v0, :cond_e

    .line 298
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 308
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    .line 310
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method

.method public isMraidViewable()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mMraidViewable:Z

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 11

    .line 278
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    if-nez p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 280
    :goto_d
    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    return-void

    :cond_11
    if-nez p2, :cond_24

    .line 284
    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->clear()V

    .line 285
    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    goto :goto_2a

    .line 287
    :cond_24
    invoke-virtual {v0, p0}, Lcom/mopub/common/VisibilityTracker;->removeView(Landroid/view/View;)V

    .line 288
    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    :goto_2a
    return-void
.end method

.method setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method
