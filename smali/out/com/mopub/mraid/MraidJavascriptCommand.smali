.class public enum Lcom/mopub/mraid/MraidJavascriptCommand;
.super Ljava/lang/Enum;
.source "MraidJavascriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mraid/MraidJavascriptCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;


# instance fields
.field private final mJavascriptString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 10
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 11
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$1;

    const-string v1, "EXPAND"

    const/4 v3, 0x1

    const-string v4, "expand"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/mraid/MraidJavascriptCommand$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 17
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "USE_CUSTOM_CLOSE"

    const/4 v4, 0x2

    const-string v5, "usecustomclose"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 18
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$2;

    const-string v1, "OPEN"

    const/4 v5, 0x3

    const-string v6, "open"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/mraid/MraidJavascriptCommand$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 24
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$3;

    const-string v1, "RESIZE"

    const/4 v6, 0x4

    const-string v7, "resize"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/mraid/MraidJavascriptCommand$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 30
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/4 v7, 0x5

    const-string v8, "setOrientationProperties"

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 31
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$4;

    const-string v1, "PLAY_VIDEO"

    const/4 v8, 0x6

    const-string v9, "playVideo"

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/mraid/MraidJavascriptCommand$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 37
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$5;

    const-string v1, "STORE_PICTURE"

    const/4 v9, 0x7

    const-string v10, "storePicture"

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/mraid/MraidJavascriptCommand$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 43
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$6;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v10, 0x8

    const-string v11, "createCalendarEvent"

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/mraid/MraidJavascriptCommand$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 49
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "UNSPECIFIED"

    const/16 v11, 0x9

    const-string v12, ""

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 9
    sget-object v12, Lcom/mopub/mraid/MraidJavascriptCommand;->CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v12, v1, v2

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->$VALUES:[Lcom/mopub/mraid/MraidJavascriptCommand;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/mopub/mraid/MraidJavascriptCommand;->mJavascriptString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/mopub/mraid/MraidJavascriptCommand$1;)V
    .registers 5

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static fromJavascriptString(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;
    .registers 6

    .line 58
    invoke-static {}, Lcom/mopub/mraid/MraidJavascriptCommand;->values()[Lcom/mopub/mraid/MraidJavascriptCommand;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 59
    iget-object v4, v3, Lcom/mopub/mraid/MraidJavascriptCommand;->mJavascriptString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 64
    :cond_16
    sget-object p0, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;
    .registers 2

    .line 9
    const-class v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mraid/MraidJavascriptCommand;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mraid/MraidJavascriptCommand;
    .registers 1

    .line 9
    sget-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->$VALUES:[Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-virtual {v0}, [Lcom/mopub/mraid/MraidJavascriptCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mraid/MraidJavascriptCommand;

    return-object v0
.end method


# virtual methods
.method requiresClick(Lcom/mopub/mraid/PlacementType;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method toJavascriptString()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/mopub/mraid/MraidJavascriptCommand;->mJavascriptString:Ljava/lang/String;

    return-object v0
.end method
