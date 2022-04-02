.class public final enum Lcom/onesignal/OneSignal$AppEntryAction;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppEntryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$AppEntryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 98
    new-instance v0, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v1, "NOTIFICATION_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 99
    new-instance v0, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v1, "APP_OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 100
    new-instance v0, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v1, "APP_CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/onesignal/OneSignal$AppEntryAction;

    .line 97
    sget-object v5, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    aput-object v5, v1, v2

    sget-object v2, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->$VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$AppEntryAction;
    .registers 2

    .line 97
    const-class v0, Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$AppEntryAction;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$AppEntryAction;
    .registers 1

    .line 97
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->$VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$AppEntryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method


# virtual methods
.method public isAppClose()Z
    .registers 2

    .line 112
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAppOpen()Z
    .registers 2

    .line 108
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNotificationClick()Z
    .registers 2

    .line 104
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
