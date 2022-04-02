.class public final enum Lcom/tappx/a/v4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/v4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/v4;

.field public static final enum b:Lcom/tappx/a/v4;

.field public static final enum c:Lcom/tappx/a/v4;

.field public static final enum d:Lcom/tappx/a/v4;

.field public static final enum e:Lcom/tappx/a/v4;

.field private static final synthetic f:[Lcom/tappx/a/v4;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/tappx/a/v4;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/v4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    .line 2
    new-instance v0, Lcom/tappx/a/v4;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/v4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    .line 3
    new-instance v0, Lcom/tappx/a/v4;

    const-string v1, "RESIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/v4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    .line 4
    new-instance v0, Lcom/tappx/a/v4;

    const-string v1, "EXPANDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/a/v4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    .line 5
    new-instance v0, Lcom/tappx/a/v4;

    const-string v1, "HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tappx/a/v4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v4;->e:Lcom/tappx/a/v4;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/tappx/a/v4;

    .line 6
    sget-object v7, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    aput-object v7, v1, v2

    sget-object v2, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/tappx/a/v4;->f:[Lcom/tappx/a/v4;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/v4;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/v4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/v4;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/v4;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/v4;->f:[Lcom/tappx/a/v4;

    invoke-virtual {v0}, [Lcom/tappx/a/v4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/v4;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
