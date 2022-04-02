.class final Lcom/appnext/banners/a$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cU:Lcom/appnext/banners/a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$300(Lcom/appnext/banners/a;)Lcom/appnext/banners/BannerAdRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 156
    :cond_9
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object v1, v1, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v2}, Lcom/appnext/banners/a;->access$100(Lcom/appnext/banners/a;)Lcom/appnext/banners/BannerAd;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v4}, Lcom/appnext/banners/a;->access$300(Lcom/appnext/banners/a;)Lcom/appnext/banners/BannerAdRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 158
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    const-string v0, "error_no_ads"

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 160
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object p1

    new-instance v0, Lcom/appnext/core/AppnextError;

    const-string v1, "No Ads"

    invoke-direct {v0, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerListener;->onError(Lcom/appnext/core/AppnextError;)V

    :cond_49
    return-void

    .line 163
    :cond_4a
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object v1, v1, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_51

    return-void

    .line 166
    :cond_51
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object v1, v1, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    if-nez v1, :cond_5f

    .line 167
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object p1, p1, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    .line 171
    :cond_5f
    :try_start_5f
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$400(Lcom/appnext/banners/a;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_71

    .line 172
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/appnext/banners/a;->access$402(Lcom/appnext/banners/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 173
    :cond_71
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$400(Lcom/appnext/banners/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$400(Lcom/appnext/banners/a;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_85
    .catchall {:try_start_5f .. :try_end_85} :catchall_86

    goto :goto_87

    :catchall_86
    nop

    .line 178
    :goto_87
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    new-instance v1, Lcom/appnext/banners/BannerAdData;

    invoke-direct {v1, v0}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-static {p1, v1}, Lcom/appnext/banners/a;->access$502(Lcom/appnext/banners/a;Lcom/appnext/banners/BannerAdData;)Lcom/appnext/banners/BannerAdData;

    .line 180
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {v1}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appnext/banners/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apnxt_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/appnext/banners/a;->access$602(Lcom/appnext/banners/a;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object p1, p1, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v1}, Lcom/appnext/banners/a;->access$600(Lcom/appnext/banners/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    iget-object v2, v2, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v1, "BANNER"

    const-string v2, "MEDIUM_RECTANGLE"

    const-string v3, "LARGE_BANNER"

    const v4, 0x7458732c

    const v5, -0x5c1d2fb

    const v6, -0x7536f730

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez p1, :cond_132

    .line 184
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v6, :cond_118

    if-eq v11, v5, :cond_110

    if-eq v11, v4, :cond_108

    goto :goto_120

    :cond_108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    const/4 p1, 0x0

    goto :goto_121

    :cond_110
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    const/4 p1, 0x2

    goto :goto_121

    :cond_118
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    const/4 p1, 0x1

    goto :goto_121

    :cond_120
    :goto_120
    const/4 p1, -0x1

    :goto_121
    if-eqz p1, :cond_130

    if-eq p1, v10, :cond_12d

    if-eq p1, v9, :cond_12a

    .line 195
    sget p1, Lcom/appnext/banners/R$layout;->apnxt_banner_1:I

    goto :goto_132

    .line 192
    :cond_12a
    sget p1, Lcom/appnext/banners/R$layout;->apnxt_medium_rectangle_1:I

    goto :goto_132

    .line 189
    :cond_12d
    sget p1, Lcom/appnext/banners/R$layout;->apnxt_large_banner_1:I

    goto :goto_132

    .line 186
    :cond_130
    sget p1, Lcom/appnext/banners/R$layout;->apnxt_banner_1:I

    .line 201
    :cond_132
    :goto_132
    iget-object v11, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v11, v10}, Lcom/appnext/banners/a;->access$702(Lcom/appnext/banners/a;Z)Z

    .line 202
    iget-object v11, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v11, v8}, Lcom/appnext/banners/a;->access$802(Lcom/appnext/banners/a;Z)Z

    .line 204
    iget-object v11, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {v11, p1, v0}, Lcom/appnext/banners/a;->inflateView(ILcom/appnext/core/AppnextAd;)V

    .line 206
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object p1

    if-eqz p1, :cond_15a

    .line 207
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object p1

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Lcom/appnext/banners/BannerListener;->onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    .line 209
    :cond_15a
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {p1}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v6, :cond_17f

    if-eq v0, v5, :cond_177

    if-eq v0, v4, :cond_16f

    goto :goto_186

    :cond_16f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_186

    const/4 v7, 0x0

    goto :goto_186

    :cond_177
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_186

    const/4 v7, 0x2

    goto :goto_186

    :cond_17f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_186

    const/4 v7, 0x1

    :cond_186
    :goto_186
    if-eqz v7, :cond_19d

    if-eq v7, v10, :cond_195

    if-eq v7, v9, :cond_18d

    goto :goto_194

    .line 217
    :cond_18d
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    const-string v0, "loaded_medium_rectangle"

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    :goto_194
    return-void

    .line 214
    :cond_195
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    const-string v0, "loaded_large_banner"

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_19d
    iget-object p1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    const-string v0, "loaded_banner"

    invoke-static {p1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 8

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_86

    goto :goto_49

    :sswitch_d
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x4

    goto :goto_4a

    :sswitch_17
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x5

    goto :goto_4a

    :sswitch_21
    const-string v0, "No market installed on the device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    goto :goto_4a

    :sswitch_2b
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_35
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x2

    goto :goto_4a

    :sswitch_3f
    const-string v0, "Internal error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, -0x1

    :goto_4a
    if-eqz v0, :cond_68

    if-eq v0, v5, :cond_65

    if-eq v0, v4, :cond_62

    if-eq v0, v3, :cond_5f

    if-eq v0, v2, :cond_5c

    if-eq v0, v1, :cond_59

    const-string v0, ""

    goto :goto_6a

    :cond_59
    const-string v0, "error_timeout"

    goto :goto_6a

    :cond_5c
    const-string v0, "error_slow_connection"

    goto :goto_6a

    :cond_5f
    const-string v0, "error_no_market"

    goto :goto_6a

    :cond_62
    const-string v0, "error_no_ads"

    goto :goto_6a

    :cond_65
    const-string v0, "error_internal_error"

    goto :goto_6a

    :cond_68
    const-string v0, "error_connection_error"

    .line 246
    :goto_6a
    iget-object v1, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-static {v1, v0}, Lcom/appnext/banners/a;->access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {v0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 249
    iget-object v0, p0, Lcom/appnext/banners/a$18;->cU:Lcom/appnext/banners/a;

    invoke-virtual {v0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerListener;->onError(Lcom/appnext/core/AppnextError;)V

    :cond_85
    return-void

    :sswitch_data_86
    .sparse-switch
        -0x78cc48fb -> :sswitch_3f
        -0x74ba422f -> :sswitch_35
        -0x580965ba -> :sswitch_2b
        -0x1e39e625 -> :sswitch_21
        0x14e7e541 -> :sswitch_17
        0x32510371 -> :sswitch_d
    .end sparse-switch
.end method
