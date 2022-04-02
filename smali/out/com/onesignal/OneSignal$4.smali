.class final Lcom/onesignal/OneSignal$4;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1d

    .line 1011
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1012
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 1013
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1000(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1014
    :cond_19
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$902(I)I

    goto :goto_2a

    .line 1016
    :cond_1d
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1000(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1017
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$902(I)I

    .line 1019
    :cond_2a
    :goto_2a
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1202(Z)Z

    .line 1021
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()V

    return-void
.end method
