.class final enum Lcom/onesignal/WebViewManager$Position;
.super Ljava/lang/Enum;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/WebViewManager$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/WebViewManager$Position;

.field public static final enum BOTTOM_BANNER:Lcom/onesignal/WebViewManager$Position;

.field public static final enum CENTER_MODAL:Lcom/onesignal/WebViewManager$Position;

.field public static final enum FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

.field public static final enum TOP_BANNER:Lcom/onesignal/WebViewManager$Position;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 43
    new-instance v0, Lcom/onesignal/WebViewManager$Position;

    const-string v1, "TOP_BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/WebViewManager$Position;

    .line 44
    new-instance v0, Lcom/onesignal/WebViewManager$Position;

    const-string v1, "BOTTOM_BANNER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/onesignal/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/WebViewManager$Position;->BOTTOM_BANNER:Lcom/onesignal/WebViewManager$Position;

    .line 45
    new-instance v0, Lcom/onesignal/WebViewManager$Position;

    const-string v1, "CENTER_MODAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/onesignal/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/WebViewManager$Position;->CENTER_MODAL:Lcom/onesignal/WebViewManager$Position;

    .line 46
    new-instance v0, Lcom/onesignal/WebViewManager$Position;

    const-string v1, "FULL_SCREEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/onesignal/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/onesignal/WebViewManager$Position;

    .line 42
    sget-object v6, Lcom/onesignal/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/WebViewManager$Position;

    aput-object v6, v1, v2

    sget-object v2, Lcom/onesignal/WebViewManager$Position;->BOTTOM_BANNER:Lcom/onesignal/WebViewManager$Position;

    aput-object v2, v1, v3

    sget-object v2, Lcom/onesignal/WebViewManager$Position;->CENTER_MODAL:Lcom/onesignal/WebViewManager$Position;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/onesignal/WebViewManager$Position;->$VALUES:[Lcom/onesignal/WebViewManager$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/WebViewManager$Position;
    .registers 2

    .line 42
    const-class v0, Lcom/onesignal/WebViewManager$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/WebViewManager$Position;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/WebViewManager$Position;
    .registers 1

    .line 42
    sget-object v0, Lcom/onesignal/WebViewManager$Position;->$VALUES:[Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v0}, [Lcom/onesignal/WebViewManager$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/WebViewManager$Position;

    return-object v0
.end method


# virtual methods
.method isBanner()Z
    .registers 4

    .line 50
    sget-object v0, Lcom/onesignal/WebViewManager$8;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    invoke-virtual {p0}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    return v1
.end method
