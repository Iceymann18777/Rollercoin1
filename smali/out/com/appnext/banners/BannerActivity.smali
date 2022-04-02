.class public Lcom/appnext/banners/BannerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/banners/BannerActivity$Banner;,
        Lcom/appnext/banners/BannerActivity$a;
    }
.end annotation


# instance fields
.field ap:Ljava/lang/String;

.field bannerAd:Lcom/appnext/banners/BannerAd;

.field cF:Lcom/appnext/banners/BannerAdData;

.field cG:Ljava/lang/String;

.field cH:Ljava/lang/String;

.field cI:Ljava/lang/String;

.field cJ:Ljava/lang/String;

.field cK:Lcom/appnext/banners/e;

.field cL:Lcom/appnext/banners/BannerActivity$Banner;

.field cd:Z

.field selectedAd:Lcom/appnext/banners/BannerAdData;

.field userAction:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static n(Ljava/lang/String;)Lcom/appnext/banners/BannerSize;
    .registers 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7536f730

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, -0x5c1d2fb

    if-eq v0, v1, :cond_20

    const v1, 0x7458732c

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_20
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_2a
    const-string v0, "LARGE_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_55

    if-eq v0, v3, :cond_52

    if-ne v0, v2, :cond_3e

    .line 135
    sget-object p0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    return-object p0

    .line 137
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong banner size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_52
    sget-object p0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0

    .line 131
    :cond_55
    sget-object p0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0
.end method


# virtual methods
.method protected final c(Ljava/lang/String;Ljava/lang/String;)Lcom/appnext/core/Ad;
    .registers 7

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7536f730

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, -0x5c1d2fb

    if-eq v0, v1, :cond_20

    const v1, 0x7458732c

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "BANNER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_20
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_2a
    const-string v0, "LARGE_BANNER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_5b

    if-eq v0, v3, :cond_55

    if-ne v0, v2, :cond_41

    .line 148
    new-instance p2, Lcom/appnext/banners/MediumRectangleAd;

    invoke-direct {p2, p0, p1}, Lcom/appnext/banners/MediumRectangleAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 150
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong banner size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_55
    new-instance p2, Lcom/appnext/banners/LargeBannerAd;

    invoke-direct {p2, p0, p1}, Lcom/appnext/banners/LargeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 144
    :cond_5b
    new-instance p2, Lcom/appnext/banners/SmallBannerAd;

    invoke-direct {p2, p0, p1}, Lcom/appnext/banners/SmallBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/banners/BannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v2, Lcom/appnext/banners/BannerActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/appnext/banners/BannerActivity$a;-><init>(Lcom/appnext/banners/BannerActivity;Lcom/appnext/banners/BannerActivity$1;)V

    iput-object v2, v0, Lcom/appnext/banners/BannerActivity;->cK:Lcom/appnext/banners/e;

    .line 53
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/appnext/banners/BannerActivity;->setContentView(Landroid/view/View;)V

    .line 57
    new-instance v4, Lcom/appnext/core/q;

    new-instance v6, Lcom/appnext/banners/BannerActivity$1;

    invoke-direct {v6, v0}, Lcom/appnext/banners/BannerActivity$1;-><init>(Lcom/appnext/banners/BannerActivity;)V

    invoke-direct {v4, v0, v6}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object v4, v0, Lcom/appnext/banners/BannerActivity;->userAction:Lcom/appnext/core/q;

    .line 79
    :try_start_37
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/banners/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "placement"

    .line 80
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/appnext/banners/BannerActivity;->ap:Ljava/lang/String;

    const-string v6, "size"

    .line 81
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/appnext/banners/BannerActivity;->cI:Ljava/lang/String;

    .line 82
    iget-object v7, v0, Lcom/appnext/banners/BannerActivity;->ap:Ljava/lang/String;

    .line 1142
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_1a8

    const-string v9, "BANNER"

    const-string v10, "MEDIUM_RECTANGLE"

    const-string v11, "LARGE_BANNER"

    const v12, 0x7458732c

    const v13, -0x5c1d2fb

    const v14, -0x7536f730

    const/4 v15, 0x0

    const/4 v3, 0x2

    if-eq v8, v14, :cond_7d

    if-eq v8, v13, :cond_75

    if-eq v8, v12, :cond_6d

    goto :goto_85

    :cond_6d
    :try_start_6d
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    const/4 v8, 0x0

    goto :goto_86

    :cond_75
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    const/4 v8, 0x2

    goto :goto_86

    :cond_7d
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_1a8

    if-eqz v8, :cond_85

    const/4 v8, 0x1

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v8, -0x1

    :goto_86
    const-string v12, "Wrong banner size "

    if-eqz v8, :cond_ac

    if-eq v8, v1, :cond_a6

    if-ne v8, v3, :cond_94

    .line 1148
    :try_start_8e
    new-instance v6, Lcom/appnext/banners/MediumRectangleAd;

    invoke-direct {v6, v0, v7}, Lcom/appnext/banners/MediumRectangleAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b1

    .line 1150
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1146
    :cond_a6
    new-instance v6, Lcom/appnext/banners/LargeBannerAd;

    invoke-direct {v6, v0, v7}, Lcom/appnext/banners/LargeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b1

    .line 1144
    :cond_ac
    new-instance v6, Lcom/appnext/banners/SmallBannerAd;

    invoke-direct {v6, v0, v7}, Lcom/appnext/banners/SmallBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :goto_b1
    check-cast v6, Lcom/appnext/banners/BannerAd;

    iput-object v6, v0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    const-string v7, "postback"

    .line 83
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appnext/banners/BannerAd;->setPostback(Ljava/lang/String;)V

    .line 84
    iget-object v6, v0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    const-string v7, "category"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appnext/banners/BannerAd;->setCategories(Ljava/lang/String;)V

    const-string v6, "clicked"

    .line 85
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/appnext/banners/BannerActivity;->cH:Ljava/lang/String;

    const-string v6, "shouldClose"

    .line 86
    invoke-virtual {v4, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/appnext/banners/BannerActivity;->cd:Z

    const-string v6, "selected"

    .line 87
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/appnext/banners/BannerAdData;

    iput-object v4, v0, Lcom/appnext/banners/BannerActivity;->selectedAd:Lcom/appnext/banners/BannerAdData;

    .line 88
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v4

    iget-object v6, v0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v4, v6}, Lcom/appnext/banners/b;->l(Lcom/appnext/core/Ad;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/appnext/banners/BannerActivity;->cG:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v4

    iget-object v6, v0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v4, v6}, Lcom/appnext/banners/b;->f(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    if-eqz v4, :cond_123

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_104
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_123

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/appnext/core/AppnextAd;

    .line 94
    new-instance v8, Lorg/json/JSONObject;

    new-instance v15, Lcom/appnext/banners/BannerAdData;

    invoke-direct {v15, v7}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v15}, Lcom/appnext/banners/BannerAdData;->getAdJSON()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v15, 0x0

    goto :goto_104

    .line 97
    :cond_123
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "apps"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/appnext/banners/BannerActivity;->cJ:Ljava/lang/String;
    :try_end_134
    .catchall {:try_start_8e .. :try_end_134} :catchall_1a8

    .line 104
    new-instance v4, Lcom/appnext/banners/BannerActivity$Banner;

    invoke-direct {v4, v0, v0}, Lcom/appnext/banners/BannerActivity$Banner;-><init>(Lcom/appnext/banners/BannerActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    .line 105
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v2, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    invoke-virtual {v2}, Lcom/appnext/banners/BannerActivity$Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget-object v2, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    invoke-virtual {v2}, Lcom/appnext/banners/BannerActivity$Banner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    iget-object v2, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    iget-object v4, v0, Lcom/appnext/banners/BannerActivity;->ap:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/appnext/banners/BannerActivity$Banner;->setPlacementId(Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    iget-object v4, v0, Lcom/appnext/banners/BannerActivity;->cI:Ljava/lang/String;

    .line 2129
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v14, :cond_177

    if-eq v6, v13, :cond_16f

    const v7, 0x7458732c

    if-eq v6, v7, :cond_167

    goto :goto_17e

    :cond_167
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e

    const/4 v5, 0x0

    goto :goto_17e

    :cond_16f
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e

    const/4 v5, 0x2

    goto :goto_17e

    :cond_177
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e

    const/4 v5, 0x1

    :cond_17e
    :goto_17e
    if-eqz v5, :cond_19c

    if-eq v5, v1, :cond_199

    if-ne v5, v3, :cond_187

    .line 2135
    sget-object v1, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    goto :goto_19e

    .line 2137
    :cond_187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2133
    :cond_199
    sget-object v1, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    goto :goto_19e

    .line 2131
    :cond_19c
    sget-object v1, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    .line 109
    :goto_19e
    invoke-virtual {v2, v1}, Lcom/appnext/banners/BannerActivity$Banner;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 110
    iget-object v1, v0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appnext/banners/BannerActivity$Banner;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V

    return-void

    .line 100
    :catchall_1a8
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/banners/BannerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    :try_start_3
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v0}, Lcom/appnext/core/q;->destroy()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8

    .line 121
    :catchall_8
    :try_start_8
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAd;->destroy()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_d

    .line 124
    :catchall_d
    :try_start_d
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity;->cL:Lcom/appnext/banners/BannerActivity$Banner;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerActivity$Banner;->destroy()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method
