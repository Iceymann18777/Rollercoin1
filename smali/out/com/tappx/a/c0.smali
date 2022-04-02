.class public Lcom/tappx/a/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B

.field public final c:J


# direct methods
.method public constructor <init>(ILjava/util/Map;[BJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/tappx/a/c0;->b:[B

    .line 4
    iput-object p2, p0, Lcom/tappx/a/c0;->a:Ljava/util/Map;

    .line 5
    iput-wide p4, p0, Lcom/tappx/a/c0;->c:J

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    .line 15
    invoke-static {p0, v0}, Lcom/tappx/a/c0;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_36

    const-string v0, ";"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 10
    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_36

    .line 11
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 12
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    const/4 v3, 0x0

    .line 13
    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 14
    aget-object p0, v2, v0

    return-object p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_36
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c0;->b:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tappx/a/c0;->b:[B

    iget-object v2, p0, Lcom/tappx/a/c0;->a:Ljava/util/Map;

    invoke-static {v2}, Lcom/tappx/a/c0;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_1b

    .line 6
    :catch_14
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tappx/a/c0;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1b
    return-object v0
.end method
