.class public final enum Lcom/tappx/a/p3$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/p3$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tappx/a/p3$d;

.field public static final enum c:Lcom/tappx/a/p3$d;

.field public static final enum d:Lcom/tappx/a/p3$d;

.field public static final enum e:Lcom/tappx/a/p3$d;

.field public static final enum f:Lcom/tappx/a/p3$d;

.field public static final enum g:Lcom/tappx/a/p3$d;

.field public static final enum h:Lcom/tappx/a/p3$d;

.field private static final synthetic i:[Lcom/tappx/a/p3$d;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->b:Lcom/tappx/a/p3$d;

    .line 2
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "TOP_CENTER"

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-direct {v0, v1, v3, v4}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->c:Lcom/tappx/a/p3$d;

    .line 3
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "TOP_RIGHT"

    const/4 v4, 0x2

    const/16 v5, 0x35

    invoke-direct {v0, v1, v4, v5}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->d:Lcom/tappx/a/p3$d;

    .line 4
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "CENTER"

    const/4 v5, 0x3

    const/16 v6, 0x11

    invoke-direct {v0, v1, v5, v6}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->e:Lcom/tappx/a/p3$d;

    .line 5
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "BOTTOM_LEFT"

    const/4 v6, 0x4

    const/16 v7, 0x53

    invoke-direct {v0, v1, v6, v7}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->f:Lcom/tappx/a/p3$d;

    .line 6
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "BOTTOM_CENTER"

    const/4 v7, 0x5

    const/16 v8, 0x51

    invoke-direct {v0, v1, v7, v8}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->g:Lcom/tappx/a/p3$d;

    .line 7
    new-instance v0, Lcom/tappx/a/p3$d;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v8, 0x6

    const/16 v9, 0x55

    invoke-direct {v0, v1, v8, v9}, Lcom/tappx/a/p3$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/p3$d;->h:Lcom/tappx/a/p3$d;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/tappx/a/p3$d;

    .line 8
    sget-object v9, Lcom/tappx/a/p3$d;->b:Lcom/tappx/a/p3$d;

    aput-object v9, v1, v2

    sget-object v2, Lcom/tappx/a/p3$d;->c:Lcom/tappx/a/p3$d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/p3$d;->d:Lcom/tappx/a/p3$d;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tappx/a/p3$d;->e:Lcom/tappx/a/p3$d;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tappx/a/p3$d;->f:Lcom/tappx/a/p3$d;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tappx/a/p3$d;->g:Lcom/tappx/a/p3$d;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/tappx/a/p3$d;->i:[Lcom/tappx/a/p3$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tappx/a/p3$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/p3$d;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/p3$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/p3$d;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/p3$d;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/p3$d;->i:[Lcom/tappx/a/p3$d;

    invoke-virtual {v0}, [Lcom/tappx/a/p3$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/p3$d;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/p3$d;->a:I

    return v0
.end method
