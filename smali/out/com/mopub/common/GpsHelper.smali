.class public Lcom/mopub/common/GpsHelper;
.super Ljava/lang/Object;
.source "GpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;,
        Lcom/mopub/common/GpsHelper$GpsHelperListener;,
        Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    }
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SUCCESS_CODE:I = 0x0

.field public static final IS_LIMIT_AD_TRACKING_ENABLED_KEY:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static sAdvertisingIdClientClassName:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/mopub/common/GpsHelper;->internalFetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    return-void
.end method

.method public static fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "getAdvertisingIdInfo"

    .line 61
    invoke-static {v0, v2}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    sget-object v3, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    .line 62
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    .line 63
    invoke-virtual {v2, v3, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p0

    .line 66
    invoke-static {p0, v0}, Lcom/mopub/common/GpsHelper;->reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {p0, v1}, Lcom/mopub/common/GpsHelper;->reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2d

    .line 73
    new-instance v0, Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    invoke-direct {v0, v2, p0}, Lcom/mopub/common/GpsHelper$AdvertisingInfo;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 69
    :catch_2d
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to obtain Google AdvertisingIdClient.Info via reflection."

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static internalFetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .registers 6

    .line 77
    sget-object v0, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p1, :cond_d

    .line 79
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x0

    .line 85
    :try_start_f
    new-instance v1, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;-><init>(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-static {v1, p0}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_2f

    :catch_1a
    move-exception p0

    .line 87
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error executing FetchAdvertisingInfoTask"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2f

    .line 90
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static isLimitAdTrackingEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 43
    invoke-static {p0}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isLimitAdTrackingEnabled"

    const/4 v1, 0x0

    .line 44
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "getId"

    .line 139
    invoke-static {p0, v0}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object p1
.end method

.method static reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z
    .registers 3

    :try_start_0
    const-string v0, "isLimitAdTrackingEnabled"

    .line 147
    invoke-static {p0, v0}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_12

    .line 148
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return p1
.end method
