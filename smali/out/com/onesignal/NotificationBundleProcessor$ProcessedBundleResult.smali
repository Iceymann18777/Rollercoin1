.class Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/NotificationBundleProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessedBundleResult"
.end annotation


# instance fields
.field hasExtenderService:Z

.field inAppPreviewShown:Z

.field isDup:Z

.field isOneSignalPayload:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method processed()Z
    .registers 2

    .line 589
    iget-boolean v0, p0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->inAppPreviewShown:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
