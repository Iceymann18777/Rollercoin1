.class public final Lcom/truenet/android/ValidationResult;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final instanceId:Ljava/lang/String;

.field private final lastHtml:Ljava/lang/String;

.field private final lastImage:Ljava/lang/String;

.field private final lastUrl:Ljava/lang/String;

.field private final metaData:Ljava/lang/String;

.field private final numOfRedirect:I

.field private final publisherId:Ljava/lang/String;

.field private final redirectUrls:Ljava/util/List;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/ArrayList;
        c = Lcom/truenet/android/RedirectsResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truenet/android/RedirectsResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "Lcom/truenet/android/RedirectsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "instanceId"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUrls"

    invoke-static {p5, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastUrl"

    invoke-static {p6, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastHtml"

    invoke-static {p7, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastImage"

    invoke-static {p8, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherId"

    invoke-static {p9, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaData"

    invoke-static {p10, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    iput p2, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    iput-wide p3, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    iput-object p5, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    iput-object p6, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    iput-object p8, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    iput-object p9, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    iput-object p10, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truenet/android/ValidationResult;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/ValidationResult;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-wide v4, v0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    goto :goto_1b

    :cond_1a
    move-wide v4, p3

    :goto_1b
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_22

    iget-object v6, v0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    goto :goto_24

    :cond_22
    move-object/from16 v6, p5

    :goto_24
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2b

    iget-object v7, v0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    move-object/from16 v7, p6

    :goto_2d
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_34

    iget-object v8, v0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    goto :goto_36

    :cond_34
    move-object/from16 v8, p7

    :goto_36
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3d

    iget-object v9, v0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    move-object/from16 v9, p8

    :goto_3f
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_46

    iget-object v10, v0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    goto :goto_48

    :cond_46
    move-object/from16 v10, p9

    :goto_48
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    move-object/from16 v1, p10

    :goto_51
    move-object p1, v2

    move p2, v3

    move-wide p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/truenet/android/ValidationResult;->copy(Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truenet/android/ValidationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    return v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    return-wide v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truenet/android/RedirectsResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truenet/android/ValidationResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "Lcom/truenet/android/RedirectsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truenet/android/ValidationResult;"
        }
    .end annotation

    const-string v0, "instanceId"

    move-object v2, p1

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUrls"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastUrl"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastHtml"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastImage"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherId"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaData"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truenet/android/ValidationResult;

    move-object v1, v0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/truenet/android/ValidationResult;-><init>(Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6a

    instance-of v1, p1, Lcom/truenet/android/ValidationResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    check-cast p1, Lcom/truenet/android/ValidationResult;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget v1, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    iget v3, p1, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_69

    iget-wide v3, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    iget-wide v5, p1, Lcom/truenet/android/ValidationResult;->sessionTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    iget-object v3, p1, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    iget-object p1, p1, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    return v2

    :cond_6a
    :goto_6a
    return v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastHtml()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastImage()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUrl()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaData()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumOfRedirect()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    return v0
.end method

.method public final getPublisherId()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirectUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truenet/android/RedirectsResult;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getSessionTime()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    :goto_5b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_66
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationResult(instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numOfRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truenet/android/ValidationResult;->numOfRedirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truenet/android/ValidationResult;->sessionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", redirectUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->redirectUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastHtml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->lastImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/ValidationResult;->metaData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
