.class final Lcom/onesignal/OneSignalRemoteParams$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$1;->val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 p2, 0x193

    if-ne p1, p2, :cond_c

    .line 120
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "403 error getting OneSignal params, omitting further retries!"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_c
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/onesignal/OneSignalRemoteParams$1$1;

    invoke-direct {p2, p0}, Lcom/onesignal/OneSignalRemoteParams$1$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$1;)V

    const-string p3, "OS_PARAMS_REQUEST"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$1;->val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;

    invoke-static {p1, v0}, Lcom/onesignal/OneSignalRemoteParams;->access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method
