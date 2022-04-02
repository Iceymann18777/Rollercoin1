.class public final enum Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/configuration/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferrerInfoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "UNAVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "REMOTE_EXCEPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    .line 22
    sget-object v6, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->$VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    .registers 2

    .line 22
    const-class v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    .registers 1

    .line 22
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->$VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-object v0
.end method
