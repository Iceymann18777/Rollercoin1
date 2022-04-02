.class public final Lcom/truenet/android/RedirectsResult;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadTime:J

.field private final response:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookies"

    invoke-static {p5, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    iput p4, p0, Lcom/truenet/android/RedirectsResult;->response:I

    iput-object p5, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truenet/android/RedirectsResult;Ljava/lang/String;JILjava/util/List;ILjava/lang/Object;)Lcom/truenet/android/RedirectsResult;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-wide p2, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    :cond_c
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p4, p0, Lcom/truenet/android/RedirectsResult;->response:I

    :cond_13
    move p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p5, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    :cond_1a
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/truenet/android/RedirectsResult;->copy(Ljava/lang/String;JILjava/util/List;)Lcom/truenet/android/RedirectsResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    return-wide v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/truenet/android/RedirectsResult;->response:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JILjava/util/List;)Lcom/truenet/android/RedirectsResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/truenet/android/RedirectsResult;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookies"

    invoke-static {p5, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truenet/android/RedirectsResult;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/truenet/android/RedirectsResult;-><init>(Ljava/lang/String;JILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_38

    instance-of v1, p1, Lcom/truenet/android/RedirectsResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    check-cast p1, Lcom/truenet/android/RedirectsResult;

    iget-object v1, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-wide v3, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    iget-wide v5, p1, Lcom/truenet/android/RedirectsResult;->loadTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_37

    iget v1, p0, Lcom/truenet/android/RedirectsResult;->response:I

    iget v3, p1, Lcom/truenet/android/RedirectsResult;->response:I

    if-ne v1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    iget-object p1, p1, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    return v2

    :cond_38
    :goto_38
    return v0
.end method

.method public final getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    return-object v0
.end method

.method public final getLoadTime()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    return-wide v0
.end method

.method public final getResponse()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/truenet/android/RedirectsResult;->response:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truenet/android/RedirectsResult;->response:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_25
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedirectsResult(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/RedirectsResult;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truenet/android/RedirectsResult;->loadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truenet/android/RedirectsResult;->response:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/RedirectsResult;->cookies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
