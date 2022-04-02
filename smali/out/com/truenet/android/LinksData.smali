.class public final Lcom/truenet/android/LinksData;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final bulkResponse:Z

.field private final maxRedirectTime:J

.field private final numOfRedirect:I

.field private final sleep:J

.field private final validateParallel:I

.field private final validation:Ljava/util/List;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/ArrayList;
        c = Lcom/truenet/android/Link;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truenet/android/Link;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 28
    invoke-static {}, La/a/a/g;->a()Ljava/util/List;

    move-result-object v8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/truenet/android/LinksData;-><init>(JIZIJLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(JIZIJLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZIJ",
            "Ljava/util/List<",
            "Lcom/truenet/android/Link;",
            ">;)V"
        }
    .end annotation

    const-string v0, "validation"

    invoke-static {p8, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truenet/android/LinksData;->sleep:J

    iput p3, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    iput-boolean p4, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    iput p5, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    iput-wide p6, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    iput-object p8, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truenet/android/LinksData;JIZIJLjava/util/List;ILjava/lang/Object;)Lcom/truenet/android/LinksData;
    .registers 20

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lcom/truenet/android/LinksData;->sleep:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_10

    iget v3, v0, Lcom/truenet/android/LinksData;->validateParallel:I

    goto :goto_11

    :cond_10
    move v3, p3

    :goto_11
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_18

    iget-boolean v4, v0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    goto :goto_19

    :cond_18
    move v4, p4

    :goto_19
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_20

    iget v5, v0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    goto :goto_21

    :cond_20
    move v5, p5

    :goto_21
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_28

    iget-wide v6, v0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    goto :goto_29

    :cond_28
    move-wide v6, p6

    :goto_29
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_30

    iget-object v8, v0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    goto :goto_32

    :cond_30
    move-object/from16 v8, p8

    :goto_32
    move-wide p1, v1

    move p3, v3

    move p4, v4

    move p5, v5

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/truenet/android/LinksData;->copy(JIZIJLjava/util/List;)Lcom/truenet/android/LinksData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/truenet/android/LinksData;->sleep:J

    return-wide v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    return v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    return v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    return-wide v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truenet/android/Link;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JIZIJLjava/util/List;)Lcom/truenet/android/LinksData;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZIJ",
            "Ljava/util/List<",
            "Lcom/truenet/android/Link;",
            ">;)",
            "Lcom/truenet/android/LinksData;"
        }
    .end annotation

    const-string v0, "validation"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truenet/android/LinksData;

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/truenet/android/LinksData;-><init>(JIZIJLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_51

    instance-of v1, p1, Lcom/truenet/android/LinksData;

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    check-cast p1, Lcom/truenet/android/LinksData;

    iget-wide v3, p0, Lcom/truenet/android/LinksData;->sleep:J

    iget-wide v5, p1, Lcom/truenet/android/LinksData;->sleep:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_50

    iget v1, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    iget v3, p1, Lcom/truenet/android/LinksData;->validateParallel:I

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_50

    iget-boolean v1, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    iget-boolean v3, p1, Lcom/truenet/android/LinksData;->bulkResponse:Z

    if-ne v1, v3, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_50

    iget v1, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    iget v3, p1, Lcom/truenet/android/LinksData;->numOfRedirect:I

    if-ne v1, v3, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_50

    iget-wide v3, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    iget-wide v5, p1, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    iget-object p1, p1, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    return v2

    :cond_51
    :goto_51
    return v0
.end method

.method public final getBulkResponse()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    return v0
.end method

.method public final getMaxRedirectTime()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    return-wide v0
.end method

.method public final getNumOfRedirect()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    return v0
.end method

.method public final getSleep()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/truenet/android/LinksData;->sleep:J

    return-wide v0
.end method

.method public final getValidateParallel()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    return v0
.end method

.method public final getValidation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truenet/android/Link;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    iget-wide v0, p0, Lcom/truenet/android/LinksData;->sleep:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :cond_14
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinksData(sleep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truenet/android/LinksData;->sleep:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", validateParallel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truenet/android/LinksData;->validateParallel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bulkResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truenet/android/LinksData;->bulkResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", numOfRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truenet/android/LinksData;->numOfRedirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRedirectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truenet/android/LinksData;->maxRedirectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", validation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/LinksData;->validation:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
