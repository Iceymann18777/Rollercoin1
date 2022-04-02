.class public Lcom/startapp/android/publish/ads/video/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/c$a;,
        Lcom/startapp/android/publish/ads/video/c$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/startapp/android/publish/ads/video/b/c$c;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/c;->a:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c;->b:Lcom/startapp/android/publish/ads/video/b/c$c;

    .line 43
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/ads/video/c$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/c;)Lcom/startapp/android/publish/ads/video/b/c$c;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/startapp/android/publish/ads/video/c;->b:Lcom/startapp/android/publish/ads/video/b/c$c;

    return-object p0
.end method

.method public static a()Lcom/startapp/android/publish/ads/video/c;
    .registers 1

    .line 34
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c$b;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c;->b:Lcom/startapp/android/publish/ads/video/b/c$c;

    if-eqz v0, :cond_15

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/ads/video/c$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/ads/video/c$2;-><init>(Lcom/startapp/android/publish/ads/video/c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .registers 7

    const/4 p1, 0x0

    .line 168
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_36
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    .line 169
    :try_start_6
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_28
    .catchall {:try_start_6 .. :try_end_b} :catchall_23

    const/16 p1, 0x400

    :try_start_d
    new-array p1, p1, [B

    .line 174
    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_1a

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p2, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_29
    .catchall {:try_start_d .. :try_end_19} :catchall_21

    goto :goto_f

    .line 180
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 181
    :goto_1d
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_3b

    goto :goto_3b

    :catchall_21
    move-exception p1

    goto :goto_2f

    :catchall_23
    move-exception p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_2f

    :catch_28
    move-object p2, p1

    :catch_29
    move-object p1, v0

    goto :goto_37

    :catchall_2b
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    move-object p2, v0

    .line 180
    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 181
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_35

    .line 183
    :catch_35
    throw p1

    :catch_36
    move-object p2, p1

    .line 180
    :goto_37
    :try_start_37
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_1d

    :catch_3b
    :goto_3b
    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/c$a;Ljava/lang/String;)V
    .registers 5

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/ads/video/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/startapp/android/publish/ads/video/c$1;-><init>(Lcom/startapp/android/publish/ads/video/c;Lcom/startapp/android/publish/ads/video/c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/c$a;)Ljava/lang/String;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    const-string v5, ".temp"

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading video from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StartAppWall.ProgressiveVideoManager"

    const/4 v8, 0x3

    invoke-static {v7, v8, v6}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    const/4 v6, 0x1

    .line 56
    iput-boolean v6, v1, Lcom/startapp/android/publish/ads/video/c;->a:Z

    .line 64
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startapp/android/publish/adsCommon/n;->l()I

    move-result v9

    const/4 v10, 0x0

    .line 67
    :try_start_39
    invoke-static {v2, v0}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 68
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_138
    .catchall {:try_start_39 .. :try_end_46} :catchall_133

    if-eqz v13, :cond_54

    .line 124
    :try_start_48
    iput-object v10, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 127
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_53} :catch_53

    :catch_53
    return-object v11

    .line 73
    :cond_54
    :try_start_54
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    .line 74
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 75
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLength()I

    move-result v14

    .line 78
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_63} :catch_138
    .catchall {:try_start_54 .. :try_end_63} :catchall_133

    .line 79
    :try_start_63
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_12f
    .catchall {:try_start_63 .. :try_end_68} :catchall_12c

    const/16 v6, 0x1000

    :try_start_6a
    new-array v6, v6, [B

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7b} :catch_128
    .catchall {:try_start_6a .. :try_end_7b} :catchall_125

    .line 87
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v2, v10, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8f} :catch_122
    .catchall {:try_start_7b .. :try_end_8f} :catchall_125

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 90
    :goto_95
    :try_start_95
    invoke-virtual {v15, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_d8

    move-object/from16 v19, v11

    iget-boolean v11, v1, Lcom/startapp/android/publish/ads/video/c;->a:Z

    if-eqz v11, :cond_da

    const/4 v11, 0x0

    .line 91
    invoke-virtual {v8, v6, v11, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a5} :catch_120
    .catchall {:try_start_95 .. :try_end_a5} :catchall_16c

    add-int v5, v16, v5

    move-object/from16 v16, v12

    int-to-double v11, v5

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v20

    move/from16 v21, v5

    move-object/from16 v20, v6

    int-to-double v5, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v5

    double-to-int v5, v11

    if-lt v5, v9, :cond_cf

    if-nez v17, :cond_c6

    if-eqz v4, :cond_c6

    .line 98
    :try_start_c1
    invoke-direct {v1, v4, v0}, Lcom/startapp/android/publish/ads/video/c;->a(Lcom/startapp/android/publish/ads/video/c$a;Ljava/lang/String;)V

    const/16 v17, 0x1

    :cond_c6
    add-int/lit8 v6, v18, 0x1

    if-lt v5, v6, :cond_cf

    .line 102
    invoke-direct {v1, v5}, Lcom/startapp/android/publish/ads/video/c;->a(I)V

    move/from16 v18, v5

    :cond_cf
    move-object/from16 v12, v16

    move-object/from16 v11, v19

    move-object/from16 v6, v20

    move/from16 v16, v21

    goto :goto_95

    :cond_d8
    move-object/from16 v19, v11

    :cond_da
    move-object/from16 v16, v12

    .line 109
    iget-boolean v0, v1, Lcom/startapp/android/publish/ads/video/c;->a:Z

    if-nez v0, :cond_103

    if-lez v5, :cond_103

    const-string v0, "Video downloading disabled"

    const/4 v4, 0x3

    .line 110
    invoke-static {v7, v4, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-static {v2, v10}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "downloadInterrupted"
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f6} :catch_120
    .catchall {:try_start_c1 .. :try_end_f6} :catchall_16c

    const/4 v2, 0x0

    .line 124
    :try_start_f7
    iput-object v2, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_102} :catch_102

    :catch_102
    return-object v0

    .line 115
    :cond_103
    :try_start_103
    new-instance v0, Ljava/io/File;

    invoke-static {v2, v10}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 116
    invoke-direct {v1, v2, v0, v4}, Lcom/startapp/android/publish/ads/video/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_111} :catch_120
    .catchall {:try_start_103 .. :try_end_111} :catchall_16c

    const/4 v2, 0x0

    .line 124
    :try_start_112
    iput-object v2, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11d} :catch_11d

    :catch_11d
    move-object/from16 v10, v19

    goto :goto_16b

    :catch_120
    move-exception v0

    goto :goto_13d

    :catch_122
    move-exception v0

    const/4 v8, 0x0

    goto :goto_13d

    :catchall_125
    move-exception v0

    const/4 v8, 0x0

    goto :goto_16d

    :catch_128
    move-exception v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_13d

    :catchall_12c
    move-exception v0

    const/4 v8, 0x0

    goto :goto_136

    :catch_12f
    move-exception v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_13c

    :catchall_133
    move-exception v0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_136
    const/4 v15, 0x0

    goto :goto_16d

    :catch_138
    move-exception v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_13c
    const/4 v15, 0x0

    :goto_13d
    const/4 v4, 0x6

    .line 119
    :try_start_13e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error downloading video from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-static {v2, v10}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_15e
    .catchall {:try_start_13e .. :try_end_15e} :catchall_16c

    const/4 v2, 0x0

    .line 124
    :try_start_15f
    iput-object v2, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16a} :catch_16a

    :catch_16a
    const/4 v10, 0x0

    :goto_16b
    return-object v10

    :catchall_16c
    move-exception v0

    :goto_16d
    const/4 v2, 0x0

    .line 124
    :try_start_16e
    iput-object v2, v1, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_179} :catch_179

    .line 128
    :catch_179
    goto :goto_17b

    :goto_17a
    throw v0

    :goto_17b
    goto :goto_17a
.end method

.method public a(Lcom/startapp/android/publish/ads/video/b/c$c;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c;->b:Lcom/startapp/android/publish/ads/video/b/c$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 158
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/video/c;->a:Z

    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, ".temp"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 192
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    return-void
.end method
