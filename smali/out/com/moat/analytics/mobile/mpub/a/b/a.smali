.class public final Lcom/moat/analytics/mobile/mpub/a/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/moat/analytics/mobile/mpub/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/a/b/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/moat/analytics/mobile/mpub/a/b/a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/a/b/a;->a:Lcom/moat/analytics/mobile/mpub/a/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Optional of null value."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/moat/analytics/mobile/mpub/a/b/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/moat/analytics/mobile/mpub/a/b/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/moat/analytics/mobile/mpub/a/b/a;->a:Lcom/moat/analytics/mobile/mpub/a/b/a;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/mpub/a/b/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/moat/analytics/mobile/mpub/a/b/a;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/a/b/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/mpub/a/b/a<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object p0

    :goto_b
    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5

    move-object p1, v0

    :cond_5
    return-object p1
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/moat/analytics/mobile/mpub/a/b/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/moat/analytics/mobile/mpub/a/b/a;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-eq v1, p1, :cond_1e

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "Optional.empty"

    :goto_13
    return-object v0
.end method
