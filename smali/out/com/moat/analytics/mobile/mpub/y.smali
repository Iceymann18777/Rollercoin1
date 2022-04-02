.class Lcom/moat/analytics/mobile/mpub/y;
.super Lcom/moat/analytics/mobile/mpub/c;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/ReactiveVideoTracker;


# instance fields
.field private l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/c;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    const-string v0, "ReactiveVideoTracker"

    const-string v1, "Initializing."

    invoke-static {p1, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SUCCESS] "

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "ReactiveVideoTracker"

    return-object v0
.end method

.method a(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->d:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    if-ne v0, v1, :cond_1e

    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/y;->l:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/mpub/y;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->d:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    :cond_1e
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/c;->a(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/y;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/c;->a(Ljava/util/List;)V

    return-void

    :cond_e
    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/y;->l:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const-string v2, "Invalid duration = %d. Please make sure duration is in milliseconds."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method i()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/y;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v2

    :goto_26
    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/y;->l:Ljava/lang/Integer;

    const-string v4, "duration"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "width"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/y;->c()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/y;->d()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/y;->l:Ljava/lang/Integer;

    invoke-super {p0, p1, p3}, Lcom/moat/analytics/mobile/mpub/c;->a(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    const-string p2, "trackVideoAd"

    invoke-virtual {p0, p2, p1}, Lcom/moat/analytics/mobile/mpub/y;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method
