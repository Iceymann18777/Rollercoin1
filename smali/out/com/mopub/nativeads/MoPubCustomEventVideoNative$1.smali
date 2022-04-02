.class synthetic Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

.field static final synthetic $SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 740
    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->values()[Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->FAILED_LOAD:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->CREATED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v3}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->LOADING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v5, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->BUFFERING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v5}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v6, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PAUSED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v6}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v7, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v7}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v8, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING_MUTED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v8}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    sget-object v9, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ENDED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {v9}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    .line 438
    :catch_60
    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->values()[Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    :try_start_69
    sget-object v9, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v9}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v8, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->TITLE:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v8}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->TEXT:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_85

    :catch_85
    :try_start_85
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_8f
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ICON_URL:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_99

    :catch_99
    :try_start_99
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a3
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b7
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->VAST_VIDEO:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c3
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cf} :catch_cf

    :catch_cf
    :try_start_cf
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_db} :catch_db

    :catch_db
    :try_start_db
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->SPONSORED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e7} :catch_e7

    :catch_e7
    return-void
.end method
