.class public Lcom/startapp/a/a/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Ljava/nio/ByteBuffer;IIJ)J
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-wide v2, 0xffffffffL

    and-long v2, p3, v2

    int-to-long v4, v1

    const-wide v6, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    shr-int/lit8 v4, v1, 0x3

    const/4 v5, 0x0

    :goto_17
    const/16 v10, 0x20

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/16 v13, 0x8

    if-ge v5, v4, :cond_9d

    shl-int/lit8 v15, v5, 0x3

    add-int v15, p1, v15

    add-int/lit8 v14, v15, 0x0

    .line 17
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    int-to-long v6, v14

    const-wide/16 v16, 0xff

    and-long v6, v6, v16

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    int-to-long v8, v14

    and-long v8, v8, v16

    shl-long/2addr v8, v13

    add-long/2addr v6, v8

    add-int/lit8 v8, v15, 0x2

    .line 18
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v12

    add-long/2addr v6, v8

    add-int/lit8 v8, v15, 0x3

    .line 19
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v11

    add-long/2addr v6, v8

    add-int/lit8 v8, v15, 0x4

    .line 20
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v15, 0x5

    .line 21
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v15, 0x6

    .line 22
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v15, v15, 0x7

    .line 23
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v16

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    const-wide v8, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long v6, v6, v8

    const/16 v10, 0x2f

    ushr-long v10, v6, v10

    xor-long/2addr v6, v10

    mul-long v6, v6, v8

    xor-long/2addr v2, v6

    mul-long v2, v2, v8

    add-int/lit8 v5, v5, 0x1

    const-wide v6, -0x395b586ca42e166bL    # -2.0946245025644615E32

    goto/16 :goto_17

    :cond_9d
    and-int/lit8 v4, v1, 0x7

    packed-switch v4, :pswitch_data_110

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    goto :goto_104

    :pswitch_a8
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x6

    .line 39
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    :pswitch_b6
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x5

    .line 41
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    :pswitch_c4
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x4

    .line 43
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    xor-long/2addr v2, v5

    :pswitch_d0
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3

    .line 45
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v11

    xor-long/2addr v2, v5

    :pswitch_dc
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2

    .line 47
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v12

    xor-long/2addr v2, v5

    :pswitch_e8
    add-int v5, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    .line 49
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v13

    xor-long/2addr v2, v5

    :pswitch_f4
    add-int v1, p1, v1

    sub-int/2addr v1, v4

    .line 51
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    int-to-long v0, v0

    xor-long/2addr v0, v2

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long v2, v0, v4

    :goto_104
    const/16 v0, 0x2f

    ushr-long v6, v2, v0

    xor-long/2addr v2, v6

    mul-long v2, v2, v4

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
    .end packed-switch
.end method
