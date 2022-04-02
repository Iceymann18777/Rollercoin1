.class public final enum Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;


# instance fields
.field private placementTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1409
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const-string v1, "TOUCH"

    const/4 v2, 0x0

    const-string v3, "onTouch"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1410
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const-string v1, "MENU_ITEM_CLICK"

    const/4 v3, 0x1

    const-string v4, "onMenuItemClick"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1411
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const-string v1, "TAB_CHANGED"

    const/4 v4, 0x2

    const-string v5, "onTabChanged"

    invoke-direct {v0, v1, v4, v5}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1412
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const-string v1, "WEB_PAGES_CHANGED"

    const/4 v5, 0x3

    const-string v6, "onWebPageChanged"

    invoke-direct {v0, v1, v5, v6}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1413
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const-string v1, "PDF_EVENT"

    const/4 v6, 0x4

    const-string v7, "onPdfEvent"

    invoke-direct {v0, v1, v6, v7}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1408
    sget-object v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    aput-object v7, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1418
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->placementTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    .registers 2

    .line 1408
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    .registers 1

    .line 1408
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-object v0
.end method


# virtual methods
.method public getPlacementTag()Ljava/lang/String;
    .registers 2

    .line 1422
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->placementTag:Ljava/lang/String;

    return-object v0
.end method
