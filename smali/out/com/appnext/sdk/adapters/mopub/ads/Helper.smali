.class public Lcom/appnext/sdk/adapters/mopub/ads/Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_b

    const-string v0, "AppnextPlacementId"

    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method protected static getBannerSize(Ljava/util/Map;)Lcom/appnext/banners/BannerSize;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/banners/BannerSize;"
        }
    .end annotation

    if-eqz p0, :cond_33

    const-string v0, "AppnextBannerSize"

    .line 27
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "LARGE_BANNER"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 29
    sget-object p0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0

    :cond_15
    const-string v0, "MEDIUM_RECTANGLE"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 31
    sget-object p0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    return-object p0

    :cond_20
    const-string v0, "BANNER"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 33
    sget-object p0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0

    .line 35
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_33
    sget-object p0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0
.end method

.method protected static hasAdConfigServerExtras(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_44

    const-string v0, "AppnextButtonColor"

    .line 44
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextCategories"

    .line 45
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextPostback"

    .line 46
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextOrientation"

    .line 47
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMinVideoLen"

    .line 48
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMaxVideoLen"

    .line 49
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextBackButtonCanClose"

    .line 50
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMute"

    .line 51
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_42
    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method

.method protected static hasVideoConfigServerExtras(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_2c

    const-string v0, "AppnextProgressType"

    .line 60
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "AppnextProgressColor"

    .line 61
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "AppnextVideoLength"

    .line 62
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "AppnextShowClose"

    .line 63
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "AppnextCloseDelay"

    .line 64
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method protected static setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/core/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_f9

    if-nez p1, :cond_6

    goto/16 :goto_f9

    :cond_6
    const-string v0, "AppnextCategories"

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 77
    :try_start_e
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setCategories(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_18

    goto :goto_27

    :catchall_18
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCategories: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_27
    const-string v0, "AppnextPostback"

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 84
    :try_start_2f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setPostback(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_48

    :catchall_39
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPostback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    :goto_48
    const-string v0, "AppnextOrientation"

    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 91
    :try_start_50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setOrientation(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5a

    goto :goto_69

    :catchall_5a
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    :goto_69
    const-string v0, "AppnextMinVideoLen"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 99
    :try_start_71
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setMinVideoLength(I)V
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7f

    goto :goto_8e

    :catchall_7f
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMinVideoLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    :goto_8e
    const-string v0, "AppnextMaxVideoLen"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 106
    :try_start_96
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setMaxVideoLength(I)V
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_a4

    goto :goto_b3

    :catchall_a4
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMaxVideoLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b3
    :goto_b3
    const-string v0, "AppnextMute"

    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 113
    :try_start_bb
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Configuration;->setMute(Z)V
    :try_end_c8
    .catchall {:try_start_bb .. :try_end_c8} :catchall_c9

    goto :goto_d8

    :catchall_c9
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d8
    :goto_d8
    const-string v0, "AppnextLanguage"

    .line 119
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 121
    :try_start_e0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appnext/core/Configuration;->setLanguage(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_ea

    return-void

    :catchall_ea
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setLanguage: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f9
    :goto_f9
    return-void
.end method

.method protected static setFullscreenConfigFromExtras(Lcom/appnext/ads/fullscreen/FullscreenConfig;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/ads/fullscreen/FullscreenConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2a

    if-nez p1, :cond_5

    goto :goto_2a

    :cond_5
    const-string v0, "AppnextBackButtonCanClose"

    .line 179
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 181
    :try_start_d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullscreenConfig;->setBackButtonCanClose(Z)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception p0

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setBackButtonCanClose: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    return-void
.end method

.method protected static setRewardedVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/RewardedConfig;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/ads/fullscreen/RewardedConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppnextMultiTimerLength"

    if-eqz p0, :cond_92

    if-nez p1, :cond_8

    goto/16 :goto_92

    :cond_8
    const-string v1, "AppnextVideoMode"

    .line 146
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 148
    :try_start_10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/RewardedConfig;->setMode(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/RewardedConfig;->getMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 150
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 151
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/RewardedConfig;->setMultiTimerLength(I)V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_39

    goto :goto_48

    :catchall_39
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    :goto_48
    const-string v0, "AppnextRollCapTime"

    .line 158
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 160
    :try_start_50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/RewardedConfig;->setRollCaptionTime(I)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_5e

    goto :goto_6d

    :catchall_5e
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRollCaptionTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    :goto_6d
    const-string v0, "AppnextShowCta"

    .line 165
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 167
    :try_start_75
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/RewardedConfig;->setShowCta(Z)V
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_83

    return-void

    :catchall_83
    move-exception p0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setShowCta: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    :goto_92
    return-void
.end method

.method protected static setVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/VideoConfig;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/ads/fullscreen/VideoConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    :cond_5
    const-string v0, "AppnextVideoLength"

    .line 133
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 135
    :try_start_d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/VideoConfig;->setVideoLength(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setVideoLength: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    :goto_26
    return-void
.end method
