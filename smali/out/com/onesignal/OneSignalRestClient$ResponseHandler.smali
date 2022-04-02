.class abstract Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ResponseHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
