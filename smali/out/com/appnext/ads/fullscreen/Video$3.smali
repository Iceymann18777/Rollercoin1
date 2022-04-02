.class final Lcom/appnext/ads/fullscreen/Video$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/Video;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/appnext/ads/fullscreen/Video;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/Video;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adError(Ljava/lang/String;)V
    .registers 13

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_4f

    :sswitch_9
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x4

    goto :goto_50

    :sswitch_13
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x5

    goto :goto_50

    :sswitch_1d
    const-string v0, "Ad Not Ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x6

    goto :goto_50

    :sswitch_27
    const-string v0, "No market installed on the device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x3

    goto :goto_50

    :sswitch_31
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    goto :goto_50

    :sswitch_3b
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x2

    goto :goto_50

    :sswitch_45
    const-string v0, "Internal error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v0, -0x1

    :goto_50
    packed-switch v0, :pswitch_data_d0

    const-string v0, ""

    :goto_55
    move-object v7, v0

    goto :goto_6c

    :pswitch_57
    const-string v0, "error_ad_not_ready"

    goto :goto_55

    :pswitch_5a
    const-string v0, "error_timeout"

    goto :goto_55

    :pswitch_5d
    const-string v0, "error_slow_connection"

    goto :goto_55

    :pswitch_60
    const-string v0, "error_no_market"

    goto :goto_55

    :pswitch_63
    const-string v0, "error_no_ads"

    goto :goto_55

    :pswitch_66
    const-string v0, "error_internal_error"

    goto :goto_55

    :pswitch_69
    const-string v0, "error_connection_error"

    goto :goto_55

    .line 175
    :goto_6c
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getTID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getVID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getAUID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/Video;->access$200(Lcom/appnext/ads/fullscreen/Video;)I

    move-result v0

    if-ne v0, v1, :cond_95

    const-string v0, "fullscreen"

    goto :goto_97

    :cond_95
    const-string v0, "rewarded"

    :goto_97
    move-object v8, v0

    const-string v9, ""

    const-string v10, ""

    invoke-static/range {v2 .. v10}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/Video;->access$300(Lcom/appnext/ads/fullscreen/Video;)Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 178
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$3;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/Video;->access$300(Lcom/appnext/ads/fullscreen/Video;)Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x78cc48fb -> :sswitch_45
        -0x74ba422f -> :sswitch_3b
        -0x580965ba -> :sswitch_31
        -0x1e39e625 -> :sswitch_27
        0x11bc1239 -> :sswitch_1d
        0x14e7e541 -> :sswitch_13
        0x32510371 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method
