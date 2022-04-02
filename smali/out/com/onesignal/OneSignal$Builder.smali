.class public Lcom/onesignal/OneSignal$Builder;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisableGmsMissingPrompt:Z

.field mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

.field mDisplayOptionCarryOver:Z

.field mFilterOtherGCMReceivers:Z

.field mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

.field mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

.field mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

.field mPromptLocation:Z

.field mUnsubscribeWhenNotificationsAreDisabled:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 271
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V
    .registers 3

    .line 250
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/OneSignal$1;)V
    .registers 2

    .line 250
    invoke-direct {p0}, Lcom/onesignal/OneSignal$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 355
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0
.end method

.method public init()V
    .registers 1

    .line 391
    invoke-static {p0}, Lcom/onesignal/OneSignal;->access$000(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method public unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;
    .registers 2

    .line 369
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    return-object p0
.end method
