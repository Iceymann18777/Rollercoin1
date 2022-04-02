.class public final Landroidx/media2/exoplayer/external/upstream/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# instance fields
.field public final absoluteStreamPosition:J

.field public final flags:I

.field public final httpBody:[B

.field public final httpMethod:I

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final postBody:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "flags"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 150
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "httpMethod",
            "httpBody",
            "absoluteStreamPosition",
            "position",
            "length",
            "key",
            "flags"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-ltz v12, :cond_16

    const/4 v12, 0x1

    goto :goto_17

    :cond_16
    const/4 v12, 0x0

    .line 254
    :goto_17
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    cmp-long v12, v4, v10

    if-ltz v12, :cond_20

    const/4 v12, 0x1

    goto :goto_21

    :cond_20
    const/4 v12, 0x0

    .line 255
    :goto_21
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    cmp-long v12, v6, v10

    if-gtz v12, :cond_30

    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-nez v12, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v8, 0x0

    .line 256
    :cond_30
    :goto_30
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    move-object v8, p1

    .line 257
    iput-object v8, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    move v8, p2

    .line 258
    iput v8, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpMethod:I

    if-eqz v1, :cond_3f

    .line 259
    array-length v8, v1

    if-eqz v8, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpBody:[B

    .line 260
    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->postBody:[B

    .line 261
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    .line 262
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    .line 263
    iput-wide v6, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    move-object/from16 v1, p10

    .line 264
    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->key:Ljava/lang/String;

    move/from16 v1, p11

    .line 265
    iput v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->flags:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "absoluteStreamPosition",
            "position",
            "length",
            "key",
            "flags"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 196
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "absoluteStreamPosition",
            "length",
            "key"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 162
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "absoluteStreamPosition",
            "length",
            "key",
            "flags"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 176
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "postBody",
            "absoluteStreamPosition",
            "position",
            "length",
            "key",
            "flags"
        }
    .end annotation

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_7

    :cond_5
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_7
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    .line 221
    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpMethod"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    const-string p0, "HEAD"

    return-object p0

    .line 319
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_12
    const-string p0, "POST"

    return-object p0

    :cond_15
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public final getHttpMethodString()Ljava/lang/String;
    .registers 2

    .line 303
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpMethod:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 274
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public subrange(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 331
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_b

    :cond_9
    sub-long v2, v0, p1

    :goto_b
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(JJ)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public subrange(JJ)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "length"
        }
    .end annotation

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_e

    .line 342
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_e

    return-object v0

    .line 345
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v5, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpMethod:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpBody:[B

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    add-long v7, v2, p1

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    add-long v9, v2, p1

    iget-object v13, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->key:Ljava/lang/String;

    iget v14, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->flags:I

    move-object v3, v1

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 280
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpBody:[B

    .line 284
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iget-object v9, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->key:Ljava/lang/String;

    iget v10, p0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->flags:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x5e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "DataSpec["

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
