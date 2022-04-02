.class final Lcom/onesignal/OneSignal$7;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1344
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1900()V

    .line 1345
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/OneSignal;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    .line 1347
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "FATAL Error registering device!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    return-void
.end method
