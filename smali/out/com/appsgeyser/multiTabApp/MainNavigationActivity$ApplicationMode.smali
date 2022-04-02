.class public final enum Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1401
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "COMMON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    .line 1400
    sget-object v5, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .registers 2

    .line 1400
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .registers 1

    .line 1400
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method
