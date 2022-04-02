.class public Lcom/onesignal/OSNotification;
.super Ljava/lang/Object;
.source "OSNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotification$DisplayType;
    }
.end annotation


# instance fields
.field public androidNotificationId:I

.field public displayType:Lcom/onesignal/OSNotification$DisplayType;

.field public groupedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSNotificationPayload;",
            ">;"
        }
    .end annotation
.end field

.field public isAppInFocus:Z

.field public payload:Lcom/onesignal/OSNotificationPayload;

.field public shown:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
