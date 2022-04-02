.class synthetic Lcom/startapp/android/publish/adsCommon/AdsConstants$1;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/AdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 432
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->values()[Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->HTML:Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->b:[I

    sget-object v3, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->JSON:Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 414
    :catch_1d
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->values()[Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->a:[I

    :try_start_26
    sget-object v3, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants$1;->a:[I

    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->DOWNLOAD:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
