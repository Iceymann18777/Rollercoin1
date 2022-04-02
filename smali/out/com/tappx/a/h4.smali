.class public enum Lcom/tappx/a/h4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/h4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tappx/a/h4;

.field public static final enum c:Lcom/tappx/a/h4;

.field public static final enum d:Lcom/tappx/a/h4;

.field public static final enum e:Lcom/tappx/a/h4;

.field public static final enum f:Lcom/tappx/a/h4;

.field public static final enum g:Lcom/tappx/a/h4;

.field public static final enum h:Lcom/tappx/a/h4;

.field public static final enum i:Lcom/tappx/a/h4;

.field public static final enum j:Lcom/tappx/a/h4;

.field public static final enum k:Lcom/tappx/a/h4;

.field private static final synthetic l:[Lcom/tappx/a/h4;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/tappx/a/h4;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->b:Lcom/tappx/a/h4;

    .line 2
    new-instance v0, Lcom/tappx/a/h4$a;

    const-string v1, "EXPAND"

    const/4 v3, 0x1

    const-string v4, "expand"

    invoke-direct {v0, v1, v3, v4}, Lcom/tappx/a/h4$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->c:Lcom/tappx/a/h4;

    .line 8
    new-instance v0, Lcom/tappx/a/h4;

    const-string v1, "USE_CUSTOM_CLOSE"

    const/4 v4, 0x2

    const-string v5, "usecustomclose"

    invoke-direct {v0, v1, v4, v5}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->d:Lcom/tappx/a/h4;

    .line 9
    new-instance v0, Lcom/tappx/a/h4$b;

    const-string v1, "OPEN"

    const/4 v5, 0x3

    const-string v6, "open"

    invoke-direct {v0, v1, v5, v6}, Lcom/tappx/a/h4$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->e:Lcom/tappx/a/h4;

    .line 15
    new-instance v0, Lcom/tappx/a/h4$c;

    const-string v1, "RESIZE"

    const/4 v6, 0x4

    const-string v7, "resize"

    invoke-direct {v0, v1, v6, v7}, Lcom/tappx/a/h4$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->f:Lcom/tappx/a/h4;

    .line 21
    new-instance v0, Lcom/tappx/a/h4;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/4 v7, 0x5

    const-string v8, "setOrientationProperties"

    invoke-direct {v0, v1, v7, v8}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->g:Lcom/tappx/a/h4;

    .line 22
    new-instance v0, Lcom/tappx/a/h4$d;

    const-string v1, "PLAY_VIDEO"

    const/4 v8, 0x6

    const-string v9, "playVideo"

    invoke-direct {v0, v1, v8, v9}, Lcom/tappx/a/h4$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->h:Lcom/tappx/a/h4;

    .line 28
    new-instance v0, Lcom/tappx/a/h4$e;

    const-string v1, "STORE_PICTURE"

    const/4 v9, 0x7

    const-string v10, "storePicture"

    invoke-direct {v0, v1, v9, v10}, Lcom/tappx/a/h4$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->i:Lcom/tappx/a/h4;

    .line 34
    new-instance v0, Lcom/tappx/a/h4$f;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v10, 0x8

    const-string v11, "createCalendarEvent"

    invoke-direct {v0, v1, v10, v11}, Lcom/tappx/a/h4$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->j:Lcom/tappx/a/h4;

    .line 40
    new-instance v0, Lcom/tappx/a/h4;

    const-string v1, "UNSPECIFIED"

    const/16 v11, 0x9

    const-string v12, ""

    invoke-direct {v0, v1, v11, v12}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/h4;->k:Lcom/tappx/a/h4;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/tappx/a/h4;

    .line 41
    sget-object v12, Lcom/tappx/a/h4;->b:Lcom/tappx/a/h4;

    aput-object v12, v1, v2

    sget-object v2, Lcom/tappx/a/h4;->c:Lcom/tappx/a/h4;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/h4;->d:Lcom/tappx/a/h4;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tappx/a/h4;->e:Lcom/tappx/a/h4;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tappx/a/h4;->f:Lcom/tappx/a/h4;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tappx/a/h4;->g:Lcom/tappx/a/h4;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tappx/a/h4;->h:Lcom/tappx/a/h4;

    aput-object v2, v1, v8

    sget-object v2, Lcom/tappx/a/h4;->i:Lcom/tappx/a/h4;

    aput-object v2, v1, v9

    sget-object v2, Lcom/tappx/a/h4;->j:Lcom/tappx/a/h4;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/tappx/a/h4;->l:[Lcom/tappx/a/h4;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/tappx/a/h4;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/tappx/a/h4$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/tappx/a/h4;
    .registers 6

    .line 1
    invoke-static {}, Lcom/tappx/a/h4;->values()[Lcom/tappx/a/h4;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/tappx/a/h4;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7
    :cond_16
    sget-object p0, Lcom/tappx/a/h4;->k:Lcom/tappx/a/h4;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/h4;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/h4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/h4;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/h4;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/h4;->l:[Lcom/tappx/a/h4;

    invoke-virtual {v0}, [Lcom/tappx/a/h4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/h4;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/tappx/a/h4;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/tappx/a/b4;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
