.class public Lcom/startapp/android/publish/adsCommon/AdsConstants;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;,
        Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;
    }
.end annotation


# static fields
.field public static final AD_INFORMATION_EXTENDED_ID:I = 0x57f00002

.field public static final AD_INFORMATION_ID:I = 0x57f00001

.field public static final FORCE_NATIVE_VIDEO_PLAYER:Ljava/lang/Boolean;

.field public static final LIST_3D_CLOSE_BUTTON_ID:I = 0x57f00003

.field public static final OVERRIDE_HOST:Ljava/lang/String;

.field public static final OVERRIDE_NETWORK:Ljava/lang/Boolean;

.field public static final SPLASH_NATIVE_MAIN_LAYOUT_ID:I = 0x57f00005

.field public static final STARTAPP_AD_MAIN_LAYOUT_ID:I = 0x57f00000

.field public static final VIDEO_DEBUG:Ljava/lang/Boolean;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 52
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_c4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_ca

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->b:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_d0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->c:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_d8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->d:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_e4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->e:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_ee

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    .line 64
    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->g:Ljava/lang/Boolean;

    .line 67
    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->VIDEO_DEBUG:Ljava/lang/Boolean;

    .line 69
    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->FORCE_NATIVE_VIDEO_PLAYER:Ljava/lang/Boolean;

    .line 77
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->i:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->j:Ljava/lang/String;

    const-string v1, "back_"

    const-string v2, "back_dark"

    const-string v3, "browser_icon_dark"

    const-string v4, "forward_"

    const-string v5, "forward_dark"

    const-string v6, "x_dark"

    .line 319
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->k:[Ljava/lang/String;

    const-string v0, "empty_star"

    const-string v1, "filled_star"

    const-string v2, "half_star"

    .line 320
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->l:[Ljava/lang/String;

    return-void

    :array_c4
    .array-data 1
        0x67t
        0x65t
        0x74t
    .end array-data

    :array_ca
    .array-data 1
        0x61t
        0x64t
        0x73t
    .end array-data

    :array_d0
    .array-data 1
        0x68t
        0x74t
        0x6dt
        0x6ct
        0x61t
        0x64t
    .end array-data

    nop

    :array_d8
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x64t
        0x6ft
        0x77t
        0x6et
        0x6ct
        0x6ft
        0x61t
        0x64t
    .end array-data

    nop

    :array_e4
    .array-data 1
        0x61t
        0x64t
        0x73t
        0x6dt
        0x65t
        0x74t
        0x61t
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data

    :array_ee
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x73t
        0x3at
        0x2ft
        0x2ft
        0x69t
        0x6dt
        0x70t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x73t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2ft
        0x61t
        0x64t
        0x49t
        0x6dt
        0x70t
        0x72t
        0x65t
        0x73t
        0x73t
        0x69t
        0x6ft
        0x6et
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 1

    .line 467
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->VIDEO_DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a(Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;
    .registers 5

    .line 432
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->b:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    move-object p0, v1

    goto :goto_29

    .line 438
    :cond_11
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->b:Ljava/lang/String;

    .line 439
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 434
    :cond_1c
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->c:Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object p0

    :goto_26
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 443
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;)Ljava/lang/String;
    .registers 4

    .line 414
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->a:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    move-object p0, v1

    goto :goto_29

    .line 420
    :cond_11
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->d:Ljava/lang/String;

    .line 421
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 416
    :cond_1c
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->e:Ljava/lang/String;

    .line 417
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getMetaDataHost()Ljava/lang/String;

    move-result-object p0

    :goto_26
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 425
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
