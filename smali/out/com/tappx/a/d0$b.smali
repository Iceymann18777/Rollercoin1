.class public final enum Lcom/tappx/a/d0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/d0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/d0$b;

.field public static final enum b:Lcom/tappx/a/d0$b;

.field public static final enum c:Lcom/tappx/a/d0$b;

.field public static final enum d:Lcom/tappx/a/d0$b;

.field private static final synthetic e:[Lcom/tappx/a/d0$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/tappx/a/d0$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/d0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/d0$b;->a:Lcom/tappx/a/d0$b;

    .line 2
    new-instance v0, Lcom/tappx/a/d0$b;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/d0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/d0$b;->b:Lcom/tappx/a/d0$b;

    .line 3
    new-instance v0, Lcom/tappx/a/d0$b;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/d0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/d0$b;->c:Lcom/tappx/a/d0$b;

    .line 4
    new-instance v0, Lcom/tappx/a/d0$b;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/a/d0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/d0$b;->d:Lcom/tappx/a/d0$b;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tappx/a/d0$b;

    .line 5
    sget-object v6, Lcom/tappx/a/d0$b;->a:Lcom/tappx/a/d0$b;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tappx/a/d0$b;->b:Lcom/tappx/a/d0$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/d0$b;->c:Lcom/tappx/a/d0$b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tappx/a/d0$b;->e:[Lcom/tappx/a/d0$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/d0$b;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/d0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/d0$b;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/d0$b;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/d0$b;->e:[Lcom/tappx/a/d0$b;

    invoke-virtual {v0}, [Lcom/tappx/a/d0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/d0$b;

    return-object v0
.end method
