.class public final Lcom/truenet/android/b$b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truenet/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/truenet/android/b$b;->b:J

    iput p4, p0, Lcom/truenet/android/b$b;->c:I

    iput-object p5, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/truenet/android/b$b;Ljava/lang/String;JILjava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/b$b;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-wide p2, p0, Lcom/truenet/android/b$b;->b:J

    :cond_c
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget p4, p0, Lcom/truenet/android/b$b;->c:I

    :cond_13
    move p8, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p5, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    :cond_1a
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p6, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    :cond_21
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p8

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/truenet/android/b$b;->a(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)Lcom/truenet/android/b$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)Lcom/truenet/android/b$b;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truenet/android/b$b;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truenet/android/b$b;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/truenet/android/b$b;-><init>(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/truenet/android/b$b;->b:J

    return-wide v0
.end method

.method public final c()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/truenet/android/b$b;->c:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_42

    instance-of v1, p1, Lcom/truenet/android/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    check-cast p1, Lcom/truenet/android/b$b;

    iget-object v1, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-wide v3, p0, Lcom/truenet/android/b$b;->b:J

    iget-wide v5, p1, Lcom/truenet/android/b$b;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_41

    iget v1, p0, Lcom/truenet/android/b$b;->c:I

    iget v3, p1, Lcom/truenet/android/b$b;->c:I

    if-ne v1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    return v2

    :cond_42
    :goto_42
    return v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truenet/android/b$b;->b:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truenet/android/b$b;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_32
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionInfo(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truenet/android/b$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", httpCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truenet/android/b$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/b$b;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
