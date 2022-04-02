.class public Lcom/startapp/android/publish/adsCommon/k/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/startapp/android/publish/adsCommon/BaseResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/startapp/android/publish/adsCommon/BaseResponse;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/BaseRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 34
    invoke-static/range {v0 .. v6}, Lcom/startapp/android/publish/adsCommon/k/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Lcom/startapp/common/a/h$a;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;)Lcom/startapp/common/a/h$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/BaseRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/startapp/common/a/h$a;"
        }
    .end annotation

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 39
    invoke-static/range {v0 .. v6}, Lcom/startapp/android/publish/adsCommon/k/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Lcom/startapp/common/a/h$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 172
    :cond_7
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_26

    .line 173
    invoke-static {}, Lcom/startapp/common/a/b;->a()Lcom/startapp/common/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/common/a/b;->a(Landroid/content/Context;)Lcom/startapp/common/a/b$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/common/a/b$c;->a()Ljava/lang/String;

    move-result-object p0

    :try_start_1b
    const-string v0, "UTF-8"

    .line 175
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_21} :catch_21

    :catch_21
    const-string v0, "device-id"

    .line 179
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Accept-Language"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/BaseRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)Z"
        }
    .end annotation

    .line 53
    invoke-static/range {p0 .. p6}, Lcom/startapp/android/publish/adsCommon/k/a;->c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 43
    invoke-static/range {v0 .. v6}, Lcom/startapp/android/publish/adsCommon/k/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Lcom/startapp/common/a/h$a;

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/startapp/common/e;)Z
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/startapp/common/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInvalidForRetry()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/common/e;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1d
    return v1
.end method

.method private static a([B)[B
    .registers 4

    const/4 v0, 0x0

    .line 150
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_21
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 152
    :try_start_b
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 153
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 154
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_1c
    .catchall {:try_start_b .. :try_end_14} :catchall_19

    .line 156
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_21
    .catchall {:try_start_14 .. :try_end_18} :catchall_1f

    return-object p0

    :catchall_19
    move-exception p0

    move-object v0, v2

    goto :goto_23

    :catch_1c
    move-exception p0

    move-object v0, v2

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    .line 158
    :goto_22
    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    :goto_23
    if-eqz v0, :cond_28

    .line 162
    :try_start_25
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_28

    .line 163
    :catch_28
    :cond_28
    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Lcom/startapp/common/a/h$a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/BaseRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lcom/startapp/common/a/h$a;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending get to URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transport"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_2d

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getRequestString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, p1

    .line 63
    :goto_2e
    invoke-static {p0, p3}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x1

    :catch_34
    :cond_34
    :goto_34
    if-eqz p2, :cond_50

    if-le v2, v1, :cond_50

    add-int/lit8 v3, v2, -0x1

    .line 70
    :try_start_3a
    invoke-virtual {p2, v3}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setRetry(I)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getRequestString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_50
    const-string v3, "User-Agent"

    const-string v4, "-1"

    .line 74
    invoke-static {p0, v3, v4}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/common/metaData/MetaData;->isCompressionEnabled()Z

    move-result v4

    .line 74
    invoke-static {p0, v0, p3, v3, v4}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/common/a/h$a;

    move-result-object p0
    :try_end_64
    .catch Lcom/startapp/common/e; {:try_start_3a .. :try_end_64} :catch_65

    return-object p0

    :catch_65
    move-exception v3

    .line 77
    invoke-virtual {v3}, Lcom/startapp/common/e;->b()Z

    move-result v4

    if-eqz v4, :cond_80

    if-ge v2, p4, :cond_80

    invoke-static {v3}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Lcom/startapp/common/e;)Z

    move-result v4

    if-eqz v4, :cond_80

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, p5, v3

    if-lez v5, :cond_34

    .line 81
    :try_start_7c
    invoke-static {p5, p6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_7f} :catch_34

    goto :goto_34

    .line 86
    :cond_80
    goto :goto_82

    :goto_81
    throw v3

    :goto_82
    goto :goto_81
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/BaseRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v1

    move-object v8, v1

    goto :goto_b

    :cond_a
    move-object v8, v0

    :goto_b
    const/4 v1, 0x3

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending post to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Transport"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, p3

    .line 112
    invoke-static {p0, v1}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v11, 0x1

    move-object v1, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :cond_2f
    :goto_2f
    if-nez v12, :cond_98

    if-eqz v8, :cond_4f

    .line 119
    :try_start_33
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isCompressionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 121
    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/k/a;->a([B)[B

    move-result-object v0
    :try_end_4b
    .catch Lcom/startapp/common/e; {:try_start_33 .. :try_end_4b} :catch_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_4b} :catch_74
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4b} :catch_6b

    move-object v14, v0

    goto :goto_50

    :catch_4d
    move-exception v0

    goto :goto_7f

    :cond_4f
    move-object v14, v1

    :goto_50
    :try_start_50
    const-string v0, "User-Agent"

    const-string v1, "-1"

    .line 124
    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isCompressionEnabled()Z

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v10

    .line 124
    invoke-static/range {v1 .. v6}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_68
    .catch Lcom/startapp/common/e; {:try_start_50 .. :try_end_68} :catch_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_68} :catch_74
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_68} :catch_6b

    move-object v1, v14

    const/4 v12, 0x1

    goto :goto_2f

    :catch_6b
    move-exception v0

    .line 142
    new-instance v1, Lcom/startapp/common/e;

    const-string v2, "failed compressing json to gzip"

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_74
    move-exception v0

    .line 140
    new-instance v1, Lcom/startapp/common/e;

    const-string v2, "failed encoding json to UTF-8"

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7d
    move-exception v0

    move-object v1, v14

    .line 128
    :goto_7f
    invoke-virtual {v0}, Lcom/startapp/common/e;->b()Z

    move-result v2

    if-eqz v2, :cond_97

    move/from16 v2, p4

    if-ge v13, v2, :cond_97

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v3, 0x0

    cmp-long v0, p5, v3

    if-lez v0, :cond_2f

    .line 132
    :try_start_91
    invoke-static/range {p5 .. p6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_2f

    :catch_95
    nop

    goto :goto_2f

    .line 137
    :cond_97
    throw v0

    :cond_98
    return-void
.end method
