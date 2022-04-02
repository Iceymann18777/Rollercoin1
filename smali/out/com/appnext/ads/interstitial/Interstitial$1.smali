.class final Lcom/appnext/ads/interstitial/Interstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/Interstitial;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bL:Lcom/appnext/ads/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/Interstitial;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adError(Ljava/lang/String;)V
    .registers 12

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a4

    goto :goto_4e

    :sswitch_8
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_12
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x5

    goto :goto_4f

    :sswitch_1c
    const-string v0, "Ad Not Ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_26
    const-string v0, "No market installed on the device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_30
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_3a
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_44
    const-string v0, "Internal error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_c2

    const-string v0, ""

    :goto_54
    move-object v6, v0

    goto :goto_6b

    :pswitch_56
    const-string v0, "error_ad_not_ready"

    goto :goto_54

    :pswitch_59
    const-string v0, "error_timeout"

    goto :goto_54

    :pswitch_5c
    const-string v0, "error_slow_connection"

    goto :goto_54

    :pswitch_5f
    const-string v0, "error_no_market"

    goto :goto_54

    :pswitch_62
    const-string v0, "error_no_ads"

    goto :goto_54

    :pswitch_65
    const-string v0, "error_internal_error"

    goto :goto_54

    :pswitch_68
    const-string v0, "error_connection_error"

    goto :goto_54

    .line 145
    :goto_6b
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getTID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getVID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getAUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getPlacementID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getSessionId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "current_interstitial"

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v1 .. v9}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/Interstitial;->access$000(Lcom/appnext/ads/interstitial/Interstitial;)Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 148
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$1;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/Interstitial;->access$000(Lcom/appnext/ads/interstitial/Interstitial;)Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_a3
    return-void

    :sswitch_data_a4
    .sparse-switch
        -0x78cc48fb -> :sswitch_44
        -0x74ba422f -> :sswitch_3a
        -0x580965ba -> :sswitch_30
        -0x1e39e625 -> :sswitch_26
        0x11bc1239 -> :sswitch_1c
        0x14e7e541 -> :sswitch_12
        0x32510371 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method
