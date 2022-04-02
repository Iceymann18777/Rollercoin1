.class Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
.super Ljava/lang/Object;
.source "GenerateNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/GenerateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalNotificationBuilder"
.end annotation


# instance fields
.field compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field hasLargeIcon:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/GenerateNotification$1;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;-><init>()V

    return-void
.end method
