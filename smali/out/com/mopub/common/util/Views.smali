.class public Lcom/mopub/common/util/Views;
.super Ljava/lang/Object;
.source "Views.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRootViewFromActivity(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 56
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getRootViewFromView(Landroid/view/View;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 69
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 70
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Attempting to call View#getRootView() on an unattached View."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 73
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    const v0, 0x1020002

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    move-object p0, v0

    :cond_28
    return-object p0
.end method

.method public static getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 43
    invoke-static {p0}, Lcom/mopub/common/util/Views;->getRootViewFromActivity(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 44
    invoke-static {p1}, Lcom/mopub/common/util/Views;->getRootViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    move-object p0, p1

    :goto_c
    return-object p0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_1a

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 25
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    :goto_1a
    return-void
.end method
