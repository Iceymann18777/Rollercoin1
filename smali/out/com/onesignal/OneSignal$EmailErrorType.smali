.class public final enum Lcom/onesignal/OneSignal$EmailErrorType;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$EmailErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$EmailErrorType;

.field public static final enum INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

.field public static final enum NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

.field public static final enum REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

.field public static final enum VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 213
    new-instance v0, Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v1, "VALIDATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$EmailErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    new-instance v0, Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v1, "REQUIRES_EMAIL_AUTH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/onesignal/OneSignal$EmailErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    new-instance v0, Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v1, "INVALID_OPERATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/onesignal/OneSignal$EmailErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    new-instance v0, Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v1, "NETWORK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/onesignal/OneSignal$EmailErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/onesignal/OneSignal$EmailErrorType;

    .line 212
    sget-object v6, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/onesignal/OneSignal$EmailErrorType;->$VALUES:[Lcom/onesignal/OneSignal$EmailErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$EmailErrorType;
    .registers 2

    .line 212
    const-class v0, Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$EmailErrorType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$EmailErrorType;
    .registers 1

    .line 212
    sget-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->$VALUES:[Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$EmailErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$EmailErrorType;

    return-object v0
.end method
