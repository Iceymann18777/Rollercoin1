.class public Lcom/appnext/core/AdsIDHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, ""

    if-ne v0, v1, :cond_d

    return-object v2

    .line 19
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    if-eqz p0, :cond_22

    if-eqz p1, :cond_1d

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object v2

    .line 22
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_21} :catch_22
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_d .. :try_end_21} :catch_22
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_d .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    :cond_22
    return-object v2
.end method
