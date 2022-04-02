.class public Lcom/onesignal/OSNotificationPayload;
.super Ljava/lang/Object;
.source "OSNotificationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;,
        Lcom/onesignal/OSNotificationPayload$ActionButton;
    }
.end annotation


# instance fields
.field public actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field public additionalData:Lorg/json/JSONObject;

.field public backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

.field public bigPicture:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public collapseId:Ljava/lang/String;

.field public fromProjectNumber:Ljava/lang/String;

.field public groupKey:Ljava/lang/String;

.field public groupMessage:Ljava/lang/String;

.field public largeIcon:Ljava/lang/String;

.field public launchURL:Ljava/lang/String;

.field public ledColor:Ljava/lang/String;

.field public lockScreenVisibility:I

.field public notificationID:Ljava/lang/String;

.field public priority:I

.field public rawPayload:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public smallIconAccentColor:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public templateName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    return-void
.end method
