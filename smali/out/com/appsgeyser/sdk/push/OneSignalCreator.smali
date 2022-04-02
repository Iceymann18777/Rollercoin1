.class public Lcom/appsgeyser/sdk/push/OneSignalCreator;
.super Ljava/lang/Object;
.source "OneSignalCreator.java"


# direct methods
.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 18
    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/onesignal/OneSignal$Builder;->init()V

    return-void
.end method
